FROM alpine

COPY wordpress.conf /etc/nginx/conf.d

RUN apk update &&\
    apk upgrade &&\
    apk add\
      nginx

CMD nginx -g 'daemon off;'
