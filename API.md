# Item Level Calculator — JSON API

HTTP API for calculating WoW item levels from bonus IDs, player level, and content tuning data.

## Quick start

```bash
make build                          # build the Docker image
make up                             # start the API on port 8000
```

On first start the entrypoint generates cache for the build set in `BUILD` env var (`docker-compose.yml`). Subsequent starts skip generation if the cache already exists in the volume.

The API is now available at `http://localhost:18981`.

## Endpoints

### `GET /health`

Returns `{"status": "ok"}`.

### `GET /calc`

Calculate item level via query parameters.

| Parameter | Type | Default | Description |
|---|---|---|---|
| `item_id` | int (>0) | **required** | WoW item ID |
| `bonus_ids` | int[] | `[]` | Bonus IDs (repeat param for multiple) |
| `player_level` | int (0–80) | `0` | Player level modifier (type 9) |
| `content_tuning_id` | int (>=0) | `0` | Content tuning ID modifier (type 28) |
| `algorithm` | `dbc` \| `addon` | `dbc` | Calculation algorithm |
| `build` | string | `latest` | Game build version (`X.Y.Z.N` or `latest`) |

```bash
# minimal — just item_id
curl 'localhost:18981/calc?item_id=60211&build=12.0.1.65893'

# with bonus IDs and modifiers
curl 'localhost:18981/calc?item_id=60211&bonus_ids=9052&player_level=35&content_tuning_id=2660&build=12.0.1.65893'

# multiple bonus IDs
curl 'localhost:18981/calc?item_id=60211&bonus_ids=9052&bonus_ids=1234&build=12.0.1.65893'
```

Response:

```json
{
  "item_id": 60211,
  "item_level": 43,
  "build": "12.0.1.65893",
  "algorithm": "dbc"
}
```

### `POST /calc`

Same calculation via JSON body.

```bash
curl -X POST localhost:18981/calc \
  -H 'Content-Type: application/json' \
  -d '{
    "item_id": 60211,
    "bonus_ids": [9052],
    "player_level": 35,
    "content_tuning_id": 2660,
    "build": "12.0.1.65893"
  }'
```

Only `item_id` is required; all other fields have defaults.

### `POST /calc/batch`

Calculate multiple items in one request (1–100 items).

```bash
curl -X POST localhost:18981/calc/batch \
  -H 'Content-Type: application/json' \
  -d '{
    "items": [
      {"item_id": 60211},
      {"item_id": 60211, "bonus_ids": [9052], "player_level": 35, "content_tuning_id": 2660},
      {"item_id": 999999999}
    ],
    "build": "12.0.1.65893"
  }'
```

`algorithm` and `build` are set once at the top level and apply to all items.

Response — each item gets either `item_level` or `error`:

```json
{
  "results": [
    {"item_id": 60211, "item_level": 35, "error": null},
    {"item_id": 60211, "item_level": 43, "error": null},
    {"item_id": 999999999, "item_level": null, "error": "Item not found"}
  ],
  "build": "12.0.1.65893",
  "algorithm": "dbc"
}
```

## Error codes

| Code | Meaning |
|---|---|
| 422 | Validation error (missing/invalid params) |
| 404 | Item ID not found in game data |
| 502 | Upstream wago.tools unreachable |
| 503 | Build data not generated yet — run `generate` first |

## Algorithms

- **`dbc`** (default) — calculates directly from raw DBC database files. Accurate, supports all items. Downloads DBC tables from wago.tools on first use.
- **`addon`** — calculates from pre-generated `addon_data.json`. Requires `generate` to have been run for the build. Faster init, same results.

## Build resolution

Pass an explicit build version like `12.0.1.65893`, or use `latest` to auto-resolve from wago.tools. The `latest` resolution is cached for 5 minutes.

## Configuration

| Env var | Description |
|---|---|
| `BUILD` | Game build version (e.g. `12.0.1.65893`). The entrypoint generates cache for this build on first start if missing. |
| `PRELOAD_BUILD` | Build version to eagerly load into memory on startup. Initializes both algorithms in a background thread so the first request is fast. |

## Makefile targets

```
make build     docker compose build
make up        docker compose up -d
make start     alias for up
make down      docker compose down
make shell     bash into the running container (or start one)
make test      run pytest in a fresh container
make wipe      docker compose down -v (removes cache volume)
```

## OpenAPI docs

FastAPI auto-generates interactive docs at:

- Swagger UI: `http://localhost:18981/docs`
- ReDoc: `http://localhost:18981/redoc`
