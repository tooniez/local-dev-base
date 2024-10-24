up:
	docker compose --env-file .env.local up --force-recreate -d

up: start up-mailhog up-nginx-proxy-manager up-nocodb up-airflow

down:
	docker compose down
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

up-nginx-proxy-manager:
	docker compose --env-file .env.local up nginx-proxy-manager --force-recreate -d

up-nocodb:
	docker compose --env-file .env.local up nocodb --force-recreate -d

up-airflow:
	docker compose --env-file .env.local up airflow --force-recreate -d

