FROM debian:buster

RUN     apt-get update\
        && apt-get upgrade -y\
        && apt-get install -y\
            mariadb-server\
            gettext

ADD tools /tools

RUN sh /tools/configure.sh

ENTRYPOINT ["/bin/sh", "/tools/entrypoint.sh"]
CMD ["mysqld", "--bind-address 0.0.0.0", "--init-file /tools/out.sql"]