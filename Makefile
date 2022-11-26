SRC_DIR = srcs

all:
	mkdir -p /home/vrogiste/data/wp
	mkdir -p /home/vrogiste/data/wp
	docker-compose --project-directory $(SRC_DIR) up -d

clean:
	docker-compose --project-directory $(SRC_DIR) down

fclean: clean
	docker system prune -fa --volumes
	$(RM) -r /home/vrogiste/data
	./clean-volumes.sh

re: fclean all
