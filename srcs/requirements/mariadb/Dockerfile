FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    mariadb-server\
    gettext\
    moreutils\
    && rm -rf /var/lib/apt/lists/*

COPY tools/configure.sh /tools/
RUN /tools/configure.sh

COPY tools/init.sql /tools/
COPY tools/entrypoint.sh /tools/
ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "mysqld", "--bind-address 0.0.0.0", "--init-file /tools/init.sql" ]