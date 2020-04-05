up:
	@docker-compose up -d
down:
	@docker-compose down

restart: down cleanup up

consul-%:
	docker exec -it $(shell docker-compose ps -q consul) consul $*

cleanup:
	@docker system prune --volumes --force

logs:
	@docker-compose logs $(shell docker-compose ps -q consul)
