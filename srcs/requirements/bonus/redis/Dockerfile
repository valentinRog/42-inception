FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    redis-server\
    && rm -rf /var/lib/apt/lists/*

COPY conf/redis.conf /etc/

CMD [ "redis-server", "/etc/redis.conf" ]