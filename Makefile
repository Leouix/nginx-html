up:
	docker compose -f docker-compose.yml -f docker-compose-dev.yml up -d

build-up:
	docker compose -f docker-compose.yml -f docker-compose-dev.yml up --build -d

build-up-prod:
	docker compose -f docker-compose.yml -f docker-compose-prod.yml up --build -d

up-prod:
	docker compose -f docker-compose.yml -f docker-compose-prod.yml up -d

down:
	docker compose down

ps:
	docker compose ps

logs:
	docker compose logs

log: # make log S=php
	docker compose logs ${S}

shell:
	docker compose exec -u www-data php bash

shell-root:
	docker compose exec -u root php bash

sh: # make sh S=php
	docker compose exec ${S} bash