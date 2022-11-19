FROM debian:buster

RUN apt update
RUN apt install -y nginx

COPY default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]