FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y vsftpd

ADD tools /tools

RUN sh /tools/configure.sh

ENTRYPOINT [ "sh", "/tools/entrypoint.sh" ]
CMD ["vsftpd"]