COMPOSE_FILE = docker-compose.yml
PATH_GITLAB = ${HOME}

ps:
	docker compose -f ${COMPOSE_FILE} ps
log:
	docker compose -f ${COMPOSE_FILE} logs
down:
	docker compose -f ${COMPOSE_FILE} down
up:
	mkdir -p ${PATH_GITLAB}/gitlab && docker compose -f ${COMPOSE_FILE} up -d
build:
	docker compose -f ${COMPOSE_FILE} build