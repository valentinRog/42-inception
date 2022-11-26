FROM debian:bullseye

RUN	apt update\
    && apt upgrade -y\
    && apt install -y\
    wget\
    mariadb-client\
    php7.4\
    php7.4-mysqli\
    php7.4-fpm

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

WORKDIR /var/www/html/wordpress

ADD tools /tools

ENTRYPOINT sh /tools/entrypoint.sh