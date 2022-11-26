FROM debian:bullseye

RUN	apt update && apt upgrade -y && apt install -y php php-mysqli php-fpm wget sendmail mariadb-client

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

WORKDIR /var/www/html/wordpress

COPY tools/configure.sh /tmp/configure.sh

ENTRYPOINT [ "sh", "/tmp/configure.sh" ]