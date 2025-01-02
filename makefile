EXTERNAL_HTTP_PORT ?= 8080

ifneq (,$(wildcard .env))
    include .env
    export
endif

.PHONY: stop
stop:
	docker compose stop

.PHONY: up
up: stop
	docker compose up -d

.PHONY: tunnelup
tunnelup: up
	ssh -R 80:localhost:$(EXTERNAL_HTTP_PORT) serveo.net

.PHONY: logs
logs:
	docker compose logs -f

.PHONY: status
status:
	docker compose ps

