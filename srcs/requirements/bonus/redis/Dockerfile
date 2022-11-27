FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y redis-server;

ADD redis.conf /etc/redis.conf

CMD [ "redis-server", "/etc/redis.conf"]