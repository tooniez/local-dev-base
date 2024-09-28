up:
	docker compose --env-file .env.local up --force-recreate -d

up-mongodb:
	docker compose --env-file .env.local up mongodb --force-recreate -d

up-postgres:
	docker compose --env-file .env.local up postgres --force-recreate

up-redis:
	docker compose --env-file .env.local up redis --force-recreate -d

up-elasticsearch:
	docker compose --env-file .env.local up elasticsearch --force-recreate -d

up-minio:
	docker compose --env-file .env.local up minio --force-recreate -d

up-mailhog:
	docker compose --env-file .env.local up mailhog --force-recreate -d

logs:
	docker compose --env-file .env.local logs -f
