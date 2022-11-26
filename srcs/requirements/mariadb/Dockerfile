FROM debian:bullseye

RUN     apt update\
        && apt upgrade -y\
        && apt install -y\
            mariadb-server\
            gettext

ADD tools /tools

ENTRYPOINT sh /tools/entrypoint.sh