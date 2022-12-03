FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    python3\
    python3-pip

ADD . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

CMD [ "gunicorn", "-b", "0.0.0.0", "app:app" ]