FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    mariadb-server\
    gettext\
    && rm -rf /var/lib/apt/lists/*

COPY tools/configure.sh /tools/
RUN /tools/configure.sh

COPY tools/entrypoint.sh /tools/
COPY tools/init.sql /tools/
ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "mysqld", "--bind-address 0.0.0.0", "--init-file /tools/out.sql" ]