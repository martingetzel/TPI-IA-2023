PORT=10000
CONTAINER_NAME=frre_jupyter

build:
	@echo "Starting to build the container"
	docker compose build --no-cache
	make up

up: 
	docker compose up -d
	@echo "Started server on https://localhost:$(PORT)"

stop:
	@echo "Stopping container"
	docker compose stop

workspace:
	docker exec -it $(CONTAINER_NAME) bash

token:
	docker exec -t $(CONTAINER_NAME) jupyter server list --json

