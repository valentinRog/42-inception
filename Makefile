SRC_DIR = srcs

all:
	mkdir -p /home/vrogiste/data/wp
	mkdir -p /home/vrogiste/data/wp
	docker-compose --project-directory $(SRC_DIR) up --build  -d

clean:
	docker-compose --project-directory $(SRC_DIR) down

fclean: clean
	# docker system prune -f --volumes
	$(RM) -r /home/vrogiste/data
	./clean-volumes.sh

re: fclean all
