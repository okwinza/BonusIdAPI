# Bonus ID API

JSON API for calculating World of Warcraft item levels from bonus IDs, player level, and content tuning data. Built on top of the [Bonus ID Tool](https://github.com/TradeSkillMaster/BonusIdTool) reverse-engineering work.

## Live API

A public instance hosted by [Seramate](https://seramate.com) is available at **https://ilvl.seramate.com** — no setup required.

```bash
# Single item
curl 'https://ilvl.seramate.com/calc?item_id=60211'
# {"item_id":60211,"item_level":15,"build":"12.0.1.65940","algorithm":"dbc"}

# With bonus IDs and player level
curl 'https://ilvl.seramate.com/calc?item_id=60211&bonus_ids=10990,10377&player_level=80'

# Batch (POST)
curl -X POST https://ilvl.seramate.com/calc/batch \
  -H 'Content-Type: application/json' \
  -d '{"items":[{"item_id":60211},{"item_id":60211,"bonus_ids":[10990,10377]}]}'
```

The live API always tracks the latest WoW build. See [API.md](API.md) for full endpoint documentation.

## Quick start (self-hosted)

```bash
make build   # build the Docker image
make up      # start the API on localhost:18981
```

On first start, DBC cache is generated for the build set in `docker-compose.yml`. See [API.md](API.md) for endpoints, examples, and configuration.

## Makefile targets

```
make build     docker compose build
make up        docker compose up -d
make down      docker compose down
make shell     bash into the running container
make test      run pytest
make wipe      docker compose down -v (removes cache volume)
```

## Project structure

```
├── api.py                        # FastAPI application
├── bonus_id_tool.py              # CLI entry point
├── lib/
│   ├── algorithm.py              # Base algorithm interface
│   ├── direct_dbc_algorithm.py   # Algorithm using raw DBC data
│   ├── addon_data_algorithm.py   # Algorithm using generated addon data
│   ├── generate_addon_data.py    # Addon data generator
│   ├── dbc_file.py               # DBC file parsing and type definitions
│   ├── item.py                   # Item link parsing
│   └── lua_writer.py             # Lua/CBOR output
├── tests/
│   ├── test_api.py               # API tests (pytest)
│   ├── test_calc.py              # Algorithm test runner
│   ├── test_runner.lua           # Lua test harness
│   └── data/                     # Game-extracted expected values
├── .docker/
│   ├── Dockerfile
│   └── entrypoint.sh
├── docker-compose.yml
└── Makefile
```

## Credits

- [Sapu](https://github.com/TradeSkillMaster) — Bonus ID Tool and item level algorithm
- [Seriallos](https://www.raidbots.com/) — pre-existing research, especially [notes on item levels in Midnight](https://gist.github.com/seriallos/1b15ddda52ead945ab58e8140af5ca0a)
- [okwinza](https://github.com/okwinza) — JSON API wrapper
- Claude Code — reverse-engineering of content tuning IDs and dedup/priority logic

## Related

- [BonusIdTool](https://github.com/TradeSkillMaster/BonusIdTool) — upstream CLI tool
- [LibBonusId](https://github.com/TradeSkillMaster/LibBonusId) — WoW addon library that consumes the generated data

## License

MIT — see [LICENSE.txt](LICENSE.txt).
