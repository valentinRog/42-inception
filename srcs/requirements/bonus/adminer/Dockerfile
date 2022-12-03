FROM debian:buster

RUN	apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    wget\
    mariadb-client\
    php7.3\
    php7.3-mysqlnd

WORKDIR /var/www/html

ADD tools /tools
RUN sh /tools/configure.sh

CMD ["php", "-S", "0.0.0.0:9000" ]