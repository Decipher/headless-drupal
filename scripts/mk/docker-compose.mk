# TARGETS

docker-compose-build:
	@$(call title,Docker compose: Building)
	@$(call exec,docker-compose build)

docker-compose-down:
	@$(call title,Docker compose: Stopping)
	@$(call exec,docker-compose down)

docker-compose-kill:
	@$(call title,Docker compose: Destroying)
	@$(call exec,docker-compose kill)

docker-compose-logs:
	@$(call title,Docker compose: Logs)
	@$(call exec,docker-compose logs --follow)

docker-compose-restart:
	@$(call title,Docker compose: Restarting)
	@$(call exec,docker-compose restart)

docker-compose-up:
	@$(call title,Docker compose: Starting)
	@$(call exec,docker-compose up -d)
