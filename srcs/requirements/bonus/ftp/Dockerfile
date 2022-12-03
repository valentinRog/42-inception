FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y vsftpd\
    && rm -rf /var/lib/apt/lists/*

COPY tools/configure.sh /tools/
RUN /tools/configure.sh

COPY tools/entrypoint.sh /tools/
ENTRYPOINT [ "sh", "/tools/entrypoint.sh" ]
CMD [ "vsftpd" ]