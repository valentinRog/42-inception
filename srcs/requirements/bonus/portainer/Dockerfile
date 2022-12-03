FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    tar\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /portainer

ADD https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz /portainer/
RUN tar -xf /portainer/portainer-2.16.2-linux-amd64.tar.gz

COPY tools/entrypoint.sh /tools/
ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "portainer/portainer", "--admin-password-file", "password" ]