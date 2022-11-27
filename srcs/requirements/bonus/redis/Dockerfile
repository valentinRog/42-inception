FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y redis

CMD ["redis-server", "--bind", "0.0.0.0"]