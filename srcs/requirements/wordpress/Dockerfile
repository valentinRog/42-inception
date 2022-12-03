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
    php7.3-redis\
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

WORKDIR /var/www/html/wordpress

ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /var/www/html/wordpress
COPY tools/configure.sh /tools/
RUN /tools/configure.sh

COPY tools/entrypoint.sh /tools/
ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "php-fpm7.3", "--allow-to-run-as-root", "--nodaemonize" ]