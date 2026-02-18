"""Tests for the BonusIdTool FastAPI wrapper.

All tests use build 12.0.1.65893 which must have cached data present.
"""

# api must be imported before fastapi — see comment in api.py
from api import app

from fastapi.testclient import TestClient

BUILD = "12.0.1.65893"
client = TestClient(app)


# ---------------------------------------------------------------------------
# Health
# ---------------------------------------------------------------------------
class TestHealth:
    def test_ok(self):
        r = client.get("/health")
        assert r.status_code == 200
        assert r.json() == {"status": "ok"}


# ---------------------------------------------------------------------------
# Validation
# ---------------------------------------------------------------------------
class TestValidation:
    def test_missing_item_id(self):
        r = client.get("/calc")
        assert r.status_code == 422

    def test_invalid_item_id_zero(self):
        r = client.get("/calc", params={"item_id": 0, "build": BUILD})
        assert r.status_code == 422

    def test_invalid_item_id_negative(self):
        r = client.get("/calc", params={"item_id": -1, "build": BUILD})
        assert r.status_code == 422

    def test_player_level_out_of_range(self):
        r = client.post("/calc", json={"item_id": 60211, "player_level": 99, "build": BUILD})
        assert r.status_code == 422

    def test_player_level_negative(self):
        r = client.post("/calc", json={"item_id": 60211, "player_level": -1, "build": BUILD})
        assert r.status_code == 422

    def test_bad_algorithm(self):
        r = client.post("/calc", json={"item_id": 60211, "algorithm": "nope", "build": BUILD})
        assert r.status_code == 422

    def test_bad_build_format(self):
        r = client.post("/calc", json={"item_id": 60211, "build": "abc"})
        assert r.status_code == 422

    def test_bad_build_format_get(self):
        r = client.get("/calc", params={"item_id": 60211, "build": "abc"})
        assert r.status_code == 422

    def test_batch_empty_items(self):
        r = client.post("/calc/batch", json={"items": [], "build": BUILD})
        assert r.status_code == 422

    def test_batch_oversized(self):
        items = [{"item_id": i + 1} for i in range(101)]
        r = client.post("/calc/batch", json={"items": items, "build": BUILD})
        assert r.status_code == 422


# ---------------------------------------------------------------------------
# Single calc
# ---------------------------------------------------------------------------
class TestSingleCalc:
    def test_get_minimal(self):
        """Only item_id and build — all other fields use defaults."""
        r = client.get("/calc", params={"item_id": 60211, "build": BUILD})
        assert r.status_code == 200
        data = r.json()
        assert data["item_id"] == 60211
        assert isinstance(data["item_level"], int)
        assert data["item_level"] > 0
        assert data["build"] == BUILD
        assert data["algorithm"] == "dbc"

    def test_post_minimal(self):
        """Only item_id and build — all other fields use defaults."""
        r = client.post("/calc", json={"item_id": 60211, "build": BUILD})
        assert r.status_code == 200
        data = r.json()
        assert data["item_id"] == 60211
        assert isinstance(data["item_level"], int)
        assert data["item_level"] > 0

    def test_get_with_bonus_ids(self):
        r = client.get(
            "/calc",
            params={
                "item_id": 60211,
                "bonus_ids": [9052],
                "player_level": 35,
                "content_tuning_id": 2660,
                "build": BUILD,
            },
        )
        assert r.status_code == 200
        data = r.json()
        assert data["item_id"] == 60211
        assert isinstance(data["item_level"], int)
        assert data["item_level"] > 0

    def test_post_with_bonus_ids(self):
        r = client.post(
            "/calc",
            json={
                "item_id": 60211,
                "bonus_ids": [9052],
                "player_level": 35,
                "content_tuning_id": 2660,
                "build": BUILD,
            },
        )
        assert r.status_code == 200
        data = r.json()
        assert data["item_id"] == 60211
        assert isinstance(data["item_level"], int)
        assert data["item_level"] > 0

    def test_get_and_post_agree(self):
        params = {
            "item_id": 60211,
            "bonus_ids": [9052],
            "player_level": 35,
            "content_tuning_id": 2660,
            "build": BUILD,
        }
        r_get = client.get("/calc", params=params)
        r_post = client.post("/calc", json=params)
        assert r_get.json()["item_level"] == r_post.json()["item_level"]

    def test_addon_algorithm(self):
        r = client.get(
            "/calc",
            params={"item_id": 60211, "algorithm": "addon", "build": BUILD},
        )
        assert r.status_code == 200
        assert r.json()["algorithm"] == "addon"

    def test_item_not_found(self):
        r = client.get("/calc", params={"item_id": 999999999, "build": BUILD})
        assert r.status_code == 404

    def test_response_structure(self):
        r = client.get("/calc", params={"item_id": 60211, "build": BUILD})
        data = r.json()
        assert set(data.keys()) == {"item_id", "item_level", "build", "algorithm"}


# ---------------------------------------------------------------------------
# Batch calc
# ---------------------------------------------------------------------------
class TestBatchCalc:
    def test_single_item(self):
        r = client.post(
            "/calc/batch",
            json={"items": [{"item_id": 60211}], "build": BUILD},
        )
        assert r.status_code == 200
        data = r.json()
        assert len(data["results"]) == 1
        assert data["results"][0]["item_id"] == 60211
        assert data["results"][0]["item_level"] is not None
        assert data["build"] == BUILD

    def test_multiple_items(self):
        r = client.post(
            "/calc/batch",
            json={
                "items": [
                    {"item_id": 60211},
                    {"item_id": 60211, "bonus_ids": [9052], "player_level": 35, "content_tuning_id": 2660},
                ],
                "build": BUILD,
            },
        )
        assert r.status_code == 200
        data = r.json()
        assert len(data["results"]) == 2
        assert all(r["item_level"] is not None for r in data["results"])

    def test_partial_failure(self):
        r = client.post(
            "/calc/batch",
            json={
                "items": [
                    {"item_id": 60211},
                    {"item_id": 999999999},
                ],
                "build": BUILD,
            },
        )
        assert r.status_code == 200
        data = r.json()
        assert len(data["results"]) == 2
        assert data["results"][0]["item_level"] is not None
        assert data["results"][0]["error"] is None
        assert data["results"][1]["item_level"] is None
        assert data["results"][1]["error"] is not None

    def test_response_structure(self):
        r = client.post(
            "/calc/batch",
            json={"items": [{"item_id": 60211}], "build": BUILD},
        )
        data = r.json()
        assert set(data.keys()) == {"results", "build", "algorithm"}
        result = data["results"][0]
        assert "item_id" in result
        assert "item_level" in result
        assert "error" in result
