.DEFAULT_GOAL := help

COLOR_START=\033[0;32m
COLOR_END=\033[0m

########################
# Container commands
########################
build:
	docker compose build

kill:
	docker compose kill app

kill_all:
	docker compose kill

logs:
	docker compose logs --follow

nuke:
	docker kill $$(docker ps -aq) 2>/dev/null || true
	docker rm -f $$(docker ps -aq) 2>/dev/null || true
	docker rmi -f $$(docker images -aq) 2>/dev/null || true
	docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	docker network rm $$(docker network ls -q) 2>/dev/null || true
	docker system prune -f
	docker volume prune -f

prune:
	docker system prune --force
	docker volume prune --force

remove:
	docker compose rm --force app

remove_all:
	docker compose rm --force

restart:
	docker compose restart app

stop:
	docker compose stop app

stop_all:
	docker compose stop

up:
	docker compose up --detach

########################
# Database commands
########################
create_db:
	docker compose run --rm app bin/rails db:create

drop_db:
	docker compose run --rm app bin/rails db:drop

migrate:
	docker compose run --rm app bin/rails db:migrate

replant:
	docker compose run --rm app bin/rails db:seed:replant

reset_db: set_db drop_db create_db migrate seed

rollback:
	docker compose run --rm app bin/rails db:rollback

seed:
	docker compose run --rm app bin/rails db:seed

set_db:
	docker compose run --rm app bin/rails db:environment:set RAILS_ENV=development

setup:
	docker compose run --rm app bin/rails db:setup

########################
# Application commands
########################
bundle:
	docker compose run --rm app bundle install

console:
	docker compose run --rm app bin/rails console

routes:
	docker compose run --rm app bin/rails routes

rspec:
	docker compose run --rm app rspec

rubocop:
	docker compose run --rm app rubocop -A

task:
	docker compose run --rm app bin/rails task

########################
# Utility commands
########################
debug:
	docker compose exec app bin/debug

terminal:
	docker compose run --rm --interactive --entrypoint bash app

help:
	@echo "Usage: make <target>"
	@echo ""

	@echo "$(COLOR_START)Container Commands$(COLOR_END)"
	@echo ""

	@echo "build: Build docker image"
	@echo "kill: Kill app docker container"
	@echo "kill_all: Kill all docker containers"
	@echo "logs: Tail docker logs"
	@echo "nuke: Kill, remove, prune and clean docker containers"
	@echo "prune: Prune docker containers"
	@echo "remove: Remove app docker container"
	@echo "remove_all: Remove all docker containers"
	@echo "stop: Stop app docker container"
	@echo "stop_all: Stop all docker containers"
	@echo "up: Start docker containers"
	@echo ""

	@echo "$(COLOR_START)Database Commands$(COLOR_END)"
	@echo ""

	@echo "create_db: Create database"
	@echo "drop_db: Drop database"
	@echo "migrate: Run database migrations"
	@echo "replant: Re-seed database"
	@echo "reset_db: Drop, create, migrate and seed the database"
	@echo "rollback: Rollback database migrations"
	@echo "seed: Seed database"
	@echo "set_db: Set database environment"
	@echo "setup: Setup database"
	@echo ""

	@echo "$(COLOR_START)Application Commands$(COLOR_END)"
	@echo ""

	@echo "bundle: Install gems"
	@echo "console: Open rails console"
	@echo "routes: Show routes"
	@echo "rspec: Run rspec"
	@echo "rubocop: Run rubocop"
	@echo "task: Run a rails task"
	@echo ""

	@echo "$(COLOR_START)Utility Commands$(COLOR_END)"
	@echo ""

	@echo "debug: Open pry debugger"
	@echo "terminal: Open bash terminal"
	@echo ""
