include .env
include scripts/mk/*.mk

.DEFAULT_GOAL := help

## Initialize the development environment.
init: git-submodule-update docker-compose-build print-init

## Install the codebase.
install: docker-compose-up install-api print-install

install-api:
	@$(call title,Installing Drupal)
	@$(call drush,site-install --verbose --yes contenta_jsonapi form_state_values.install_modules_recipes_magazin=0)
	@$(call drush,cim -y)

## Start the server(s).
up: docker-compose-up docker-compose-logs

## Stop the server(s).
down: docker-compose-down

## Restart the server(s).
restart: docker-compose-restart docker-compose-logs

print-init:
	@$(call title,${PROJECT_NAME} - Development environment)
	@$(call print,The ${PROJECT_NAME} development environment has been initialised.\n)

	@$(call print,Install the ${PROJECT_NAME} site(s) using the following command:\n)
	@$(call command,make install)

print-install:
	@$(call title,${PROJECT_NAME} - Development environment)
	@$(call print,Welcome to the ${PROJECT_NAME} development environment.\n)

	@$(call print,It is recommended to watch the logs using the following command:\n)
	@$(call command,make logs)

	@$(call title,Local development URLs)
	@$(call print,Frontend: http://${PROJECT_ID}.localhost)
	@$(call print,Backend: http://api.${PROJECT_ID}.localhost)

	@$(call title,Backend login link)
	@$(call drush,uli)
