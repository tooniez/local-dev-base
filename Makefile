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

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  up-all                  - Start all services with Colima and Docker Compose"
	@echo "  up                      - Start essential services (mailhog, nginx-proxy-manager, nocodb)"
	@echo "  down                    - Stop the Docker Compose services"
	@echo "  start                   - Start Colima with specified resources"
	@echo "  delete, clear           - Delete Colima services"
	@echo "  up-database             - Start MongoDB, PostgreSQL, and NocoDB"
	@echo "  up-redis                - Start Redis"
	@echo "  up-elasticsearch        - Start Elasticsearch"
	@echo "  up-minio                - Start MinIO"
	@echo "  up-mailhog              - Start MailHog"
	@echo "  up-nginx-proxy-manager  - Start Nginx Proxy Manager"
	@echo "  up-nocodb               - Start NocoDB"
	@echo "  up-airflow              - Start Airflow"
	@echo "  logs                    - Show logs of all services"
	@echo "  help                    - Show this help message"