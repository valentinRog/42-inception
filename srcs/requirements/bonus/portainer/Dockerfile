FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y\
    curl\
    tar

ADD tools /tools
RUN sh /tools/configure.sh

CMD [ "/usr/local/portainer/portainer" ]