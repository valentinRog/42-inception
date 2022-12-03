FROM debian:buster

RUN	apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    wget\
    mariadb-client\
    php7.3\
    php7.3-fpm\
    php7.3-json\
    php7.3-mysqlnd\
    php7.3-gd\
    php7.3-memcached\
    php7.3-redis

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

WORKDIR /var/www/html/wordpress

ADD tools /tools

RUN sh /tools/configure.sh

ENTRYPOINT [ "/bin/sh", "/tools/entrypoint.sh" ]
CMD [ "php-fpm7.3", "--allow-to-run-as-root", "--nodaemonize" ]