FROM debian:buster

RUN	apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    wget\
    mariadb-client\
    php7.3\
    php7.3-mysqlnd\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY tools/configure.sh /tools/
RUN /tools/configure.sh

CMD [ "php", "-S", "0.0.0.0:9000" ]