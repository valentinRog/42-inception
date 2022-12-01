FROM debian:bullseye

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    nginx\
    openssl

COPY conf/default /etc/nginx/sites-enabled/default

ADD tools /tools
RUN sh /tools/configure.sh

CMD ["nginx", "-g", "daemon off;"]