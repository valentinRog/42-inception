SRC_DIR = srcs

all:
	mkdir -p ~/data/wp
	mkdir -p ~/data/db
	docker-compose --project-directory $(SRC_DIR) up -d

clean:
	docker-compose --project-directory $(SRC_DIR) down

fclean: clean
	docker system prune -fa --volumes
	$(RM) -r ~/data

re: fclean all
