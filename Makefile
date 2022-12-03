NAME = inception
SRC_DIR = srcs

all: up

dir:
	mkdir -p /home/vrogiste/data/wp
	mkdir -p /home/vrogiste/data/db

up: dir
	docker-compose -p $(NAME) --project-directory $(SRC_DIR) up -d

build: dir
	docker-compose -p $(NAME) --project-directory $(SRC_DIR) up -d --build

down:
	docker-compose --project-directory $(SRC_DIR) down

re: down build

prune:
	sh prune.sh
