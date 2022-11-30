FROM debian:bullseye

RUN apt update\
    && apt upgrade -y\
    && apt install -y\
    python3\
    python3-pip

ADD . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

CMD gunicorn -w 2 -b 0.0.0.0 app:app