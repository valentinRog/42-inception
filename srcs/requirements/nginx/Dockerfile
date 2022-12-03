FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    nginx\
    openssl\
    && rm -rf /var/lib/apt/lists/*

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

COPY tools/configure.sh /tools/
RUN /tools/configure.sh

CMD ["nginx", "-g", "daemon off;"]