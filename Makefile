DC_EXITS := $(shell docker compose > /dev/null 2>&1 ; echo $$?)

ifeq ($(DC_EXITS),0)
	DOCKER_COMPOSE = docker compose
else
	DOCKER_COMPOSE = docker-compose
endif

help:
	@grep -h -E '^[a-zA-Z0-9_-]+:.*?# .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: # Start the environment
	$(DOCKER_COMPOSE) up -d;

stop: # Stop the environment
	$(DOCKER_COMPOSE) down;

build: # Build the stack
	$(DOCKER_COMPOSE) build;

chat: # Open a chat in interactive shell
	$(DOCKER_COMPOSE) exec ollama ollama run shake;

shell: # Open interactive shell
	$(DOCKER_COMPOSE) exec ollama bash;

logs: # Show ollama logs
	$(DOCKER_COMPOSE) logs ollama -f;
