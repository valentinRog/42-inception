SRC_DIR = srcs
DATA_DIR = /home/vrogiste/data

all:
	mkdir -p $(DATA_DIR)/wp
	mkdir -p $(DATA_DIR)/db
	docker-compose --project-directory $(SRC_DIR) up -d

clean:
	docker-compose --project-directory $(SRC_DIR) down

fclean: clean
	docker system prune -fa --volumes
	$(RM) -r $(DATA_DIR)

re: fclean all
