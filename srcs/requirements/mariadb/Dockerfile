FROM alpine

RUN apk update\
        && apk upgrade\
        && apk add\
          mariadb\
          mariadb-client

RUN mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --rpm

EXPOSE 3306

ENTRYPOINT mysql -p123 -e "create database wpdb" ; mysqld