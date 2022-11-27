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

WORKDIR /var/www/html/wordpress

ADD tools /tools

RUN sh /tools/configure.sh

ENTRYPOINT ["/bin/sh", "/tools/entrypoint.sh"]
CMD ["/usr/sbin/php-fpm7.4", "-F", "-R"]