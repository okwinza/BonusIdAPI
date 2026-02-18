.PHONY: build up start down shell test wipe

build:
	docker compose build

up:
	docker compose up -d

start: up

down:
	docker compose down

shell:
	@docker compose exec api bash 2>/dev/null || docker compose run --rm api bash

test:
	docker compose run --rm api pytest tests/ -v

wipe:
	docker compose down -v
