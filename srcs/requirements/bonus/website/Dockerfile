FROM debian:buster

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get install -y\
    python3\
    python3-pip\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

COPY app /app/app

CMD [ "gunicorn", "-b", "0.0.0.0", "app:app" ]