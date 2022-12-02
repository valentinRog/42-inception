SRC_DIR = srcs

all: up

dir:
	mkdir -p /home/vrogiste/data/wp
	mkdir -p /home/vrogiste/data/db

up: dir
	docker-compose --project-directory $(SRC_DIR) up -d

build: dir
	docker-compose --project-directory $(SRC_DIR) up -d --build

down:
	docker-compose --project-directory $(SRC_DIR) down

re: down build

fclean:
	sh clean.sh
