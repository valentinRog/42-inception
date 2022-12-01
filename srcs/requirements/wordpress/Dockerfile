FROM debian:bullseye

RUN	apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    wget\
    mariadb-client\
    php7.4\
    php7.4-fpm\
    php7.4-json\
    php7.4-mysqlnd\
    php7.4-gd\
    php7.4-memcached\
    php7.4-redis

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

WORKDIR /var/www/html/wordpress

ADD tools /tools

RUN sh /tools/configure.sh

ENTRYPOINT ["/bin/sh", "/tools/entrypoint.sh"]
CMD ["php-fpm7.4", "-F", "-R"]