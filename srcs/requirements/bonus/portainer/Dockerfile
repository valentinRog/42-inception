FROM debian:bullseye

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    curl\
    tar

ADD tools /tools
RUN sh /tools/configure.sh

ENTRYPOINT [ "sh", "/tools/entrypoint.sh" ]
CMD [ "/usr/local/portainer/portainer", "--admin-password-file", "/password" ]