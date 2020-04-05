up:
	@docker-compose up -d
down:
	@docker-compose down

restart:
	@docker-compose restart

consul-%:
	docker exec -it $(shell docker ps -q) consul $*
