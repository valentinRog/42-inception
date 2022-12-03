FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y redis-server;

ADD redis.conf /etc/redis.conf

CMD [ "redis-server", "/etc/redis.conf"]