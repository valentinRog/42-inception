FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y\
    nginx\
    openssl

COPY conf/default /etc/nginx/sites-enabled/default

ADD tools /tools
RUN sh /tools/configure.sh

CMD ["nginx", "-g", "daemon off;"]