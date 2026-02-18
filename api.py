import logging
import os
import re
import threading
import time
from typing import Literal

# lib.dbc_file must be imported before fastapi/pydantic — those packages install
# an __annotations__ descriptor on ABC that breaks dbc_file's metaclass introspection.
from lib.addon_data_algorithm import AddonDataAlgorithm
from lib.dbc_file import DBC
from lib.direct_dbc_algorithm import DirectDBCAlgorithm

import requests
from fastapi import FastAPI, HTTPException, Query
from pydantic import BaseModel, Field, field_validator

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s.%(msecs)03d %(levelname)s [%(module)s:%(lineno)d] %(message)s",
    datefmt="%H:%M:%S",
)
log = logging.getLogger(__name__)

app = FastAPI(title="BonusIdTool API", description="WoW item level calculation API")

# ---------------------------------------------------------------------------
# Build resolution with TTL cache
# ---------------------------------------------------------------------------
_LATEST_TTL = 300  # 5 minutes
_latest_build: tuple[str, float] | None = None
_latest_lock = threading.Lock()


def _resolve_build(build: str) -> str:
    global _latest_build
    if build.lower() != "latest":
        return build
    with _latest_lock:
        now = time.time()
        if _latest_build and (now - _latest_build[1]) < _LATEST_TTL:
            return _latest_build[0]
        try:
            res = requests.get("https://wago.tools/api/builds", timeout=10)
            res.raise_for_status()
        except requests.RequestException as exc:
            raise HTTPException(502, f"Failed to resolve build from wago.tools: {exc}")
        version = res.json()["wow"][0]["version"]
        _latest_build = (version, now)
        log.info("Resolved latest build: %s", version)
        return version


# ---------------------------------------------------------------------------
# Algorithm cache keyed by (build, algo_name)
# ---------------------------------------------------------------------------
_algo_cache: dict[tuple[str, str], DirectDBCAlgorithm | AddonDataAlgorithm] = {}
_algo_lock = threading.Lock()


def _get_algorithm(build: str, algo: str) -> DirectDBCAlgorithm | AddonDataAlgorithm:
    key = (build, algo)
    with _algo_lock:
        if key not in _algo_cache:
            log.info("Initializing %s algorithm for build %s", algo, build)
            try:
                if algo == "addon":
                    _algo_cache[key] = AddonDataAlgorithm(build)
                else:
                    _algo_cache[key] = DirectDBCAlgorithm(DBC(build))
            except FileNotFoundError:
                raise HTTPException(
                    503,
                    f"Data not available for build {build}. Run 'python bonus_id_tool.py generate {build}' first.",
                )
            except requests.RequestException as exc:
                raise HTTPException(502, f"Failed to fetch data from wago.tools: {exc}")
        return _algo_cache[key]


def _item_exists(algo: DirectDBCAlgorithm | AddonDataAlgorithm, item_id: int) -> bool:
    if isinstance(algo, AddonDataAlgorithm):
        return str(item_id) in algo._item_levels
    if isinstance(algo, DirectDBCAlgorithm):
        return algo._dbc.item_sparse.has(item_id)
    return True


# ---------------------------------------------------------------------------
# Optional eager preload
# ---------------------------------------------------------------------------
_preload_build = os.environ.get("PRELOAD_BUILD")
if _preload_build:

    def _preload():
        try:
            build = _resolve_build(_preload_build)
            _get_algorithm(build, "dbc")
            _get_algorithm(build, "addon")
            log.info("Preloaded algorithms for build %s", build)
        except Exception:
            log.exception("Preload failed for PRELOAD_BUILD=%s", _preload_build)

    threading.Thread(target=_preload, daemon=True).start()


# ---------------------------------------------------------------------------
# Pydantic models
# ---------------------------------------------------------------------------
_BUILD_RE = re.compile(r"^\d+\.\d+\.\d+\.\d+$")


def _validate_build(v: str) -> str:
    if v.lower() == "latest":
        return v
    if not _BUILD_RE.match(v):
        raise ValueError("build must be 'latest' or match X.Y.Z.N format")
    return v


class _ItemFields(BaseModel):
    item_id: int = Field(gt=0)
    bonus_ids: list[int] = Field(default_factory=list)
    player_level: int = Field(default=0, ge=0, le=80)
    content_tuning_id: int = Field(default=0, ge=0)


class CalcRequest(_ItemFields):
    algorithm: Literal["dbc", "addon"] = "dbc"
    build: str = "latest"

    @field_validator("build")
    @classmethod
    def check_build(cls, v: str) -> str:
        return _validate_build(v)


class CalcResult(BaseModel):
    item_id: int
    item_level: int
    build: str
    algorithm: str


class BatchRequest(BaseModel):
    items: list[_ItemFields] = Field(min_length=1, max_length=100)
    algorithm: Literal["dbc", "addon"] = "dbc"
    build: str = "latest"

    @field_validator("build")
    @classmethod
    def check_build(cls, v: str) -> str:
        return _validate_build(v)


class BatchItemResult(BaseModel):
    item_id: int
    item_level: int | None = None
    error: str | None = None


class BatchResult(BaseModel):
    results: list[BatchItemResult]
    build: str
    algorithm: str


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
class ItemNotFoundError(Exception):
    def __init__(self, item_id: int):
        self.item_id = item_id
        super().__init__(f"Item {item_id} not found")


def _calc_single(
    algo: DirectDBCAlgorithm | AddonDataAlgorithm,
    item_id: int,
    bonus_ids: list[int],
    player_level: int,
    content_tuning_id: int,
) -> int:
    if not _item_exists(algo, item_id):
        raise ItemNotFoundError(item_id)
    return algo.process_item_info(
        item_id,
        bonus_ids,
        player_level=player_level,
        content_tuning_id=content_tuning_id,
    )


# ---------------------------------------------------------------------------
# Endpoints
# ---------------------------------------------------------------------------
@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/calc", response_model=CalcResult)
def calc_get(
    item_id: int = Query(gt=0),
    bonus_ids: list[int] = Query(default=[]),
    player_level: int = Query(default=0, ge=0, le=80),
    content_tuning_id: int = Query(default=0, ge=0),
    algorithm: Literal["dbc", "addon"] = Query(default="dbc"),
    build: str = Query(default="latest"),
):
    try:
        _validate_build(build)
    except ValueError as exc:
        raise HTTPException(422, str(exc))

    resolved = _resolve_build(build)
    algo = _get_algorithm(resolved, algorithm)
    try:
        level = _calc_single(algo, item_id, bonus_ids, player_level, content_tuning_id)
    except ItemNotFoundError:
        raise HTTPException(404, f"Item {item_id} not found")
    return CalcResult(item_id=item_id, item_level=level, build=resolved, algorithm=algorithm)


@app.post("/calc", response_model=CalcResult)
def calc_post(req: CalcRequest):
    resolved = _resolve_build(req.build)
    algo = _get_algorithm(resolved, req.algorithm)
    try:
        level = _calc_single(algo, req.item_id, req.bonus_ids, req.player_level, req.content_tuning_id)
    except ItemNotFoundError:
        raise HTTPException(404, f"Item {req.item_id} not found")
    return CalcResult(item_id=req.item_id, item_level=level, build=resolved, algorithm=req.algorithm)


@app.post("/calc/batch", response_model=BatchResult)
def calc_batch(req: BatchRequest):
    resolved = _resolve_build(req.build)
    algo = _get_algorithm(resolved, req.algorithm)
    results: list[BatchItemResult] = []
    for item in req.items:
        try:
            level = _calc_single(algo, item.item_id, item.bonus_ids, item.player_level, item.content_tuning_id)
            results.append(BatchItemResult(item_id=item.item_id, item_level=level))
        except ItemNotFoundError:
            results.append(BatchItemResult(item_id=item.item_id, error="Item not found"))
        except Exception as exc:
            results.append(BatchItemResult(item_id=item.item_id, error=str(exc)))
    return BatchResult(results=results, build=resolved, algorithm=req.algorithm)
