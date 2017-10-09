up:
	@docker-compose up -d kong-database
	@docker-compose up kong-migration
	@docker-compose up -d kong kong-dashboard

stop:
	@docker-compose stop

down:
	@docker-compose down
