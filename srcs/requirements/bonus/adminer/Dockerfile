FROM debian:bullseye

RUN	apt update\
    && apt upgrade -y\
    && apt install -y\
    wget\
    mariadb-client\
    php7.4\
    php7.4-mysqlnd

WORKDIR /var/www/html

ADD tools /tools
RUN sh /tools/configure.sh

CMD ["php", "-S", "0.0.0.0:5000"]