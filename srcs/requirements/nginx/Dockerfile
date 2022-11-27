FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y\
    nginx\
    openssl

COPY conf/default /etc/nginx/sites-enabled/default

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes\
        -out /etc/nginx/ssl/vrogiste.pem\
        -keyout /etc/nginx/ssl/vrogiste.key\
        -subj "/C=BE/ST=Bruxelles/L=Bruxelles/O=42 School/OU=vrogiste/CN=vrogiste/"

CMD ["nginx", "-g", "daemon off;"]