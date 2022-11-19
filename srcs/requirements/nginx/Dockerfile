FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx

COPY default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]