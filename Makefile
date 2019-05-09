include .env
include scripts/mk/*.mk

.DEFAULT_GOAL := help

## Initialize the development environment.
init: git-submodule-update docker-compose-build

## Start the server(s).
up: docker-compose-up docker-compose-logs

## Stop the server(s).
down: docker-compose-down

## Restart the server(s).
restart: docker-compose-restart docker-compose-logs
