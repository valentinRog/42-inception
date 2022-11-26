FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y\
    nginx

COPY conf/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]