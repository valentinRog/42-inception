FROM alpine:3.13

ENV WP_DATABASE_NAME=wpdb
ENV WP_DATABASE_USR=wpuser
ENV WP_DATABASE_PWD=123
ENV MYSQL_ROOT_PASSWORD=123

RUN	apk update && apk upgrade && apk add --no-cache \
        mariadb \
        mariadb-client
        
COPY tools/configure.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]