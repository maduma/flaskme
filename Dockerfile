FROM python:3.7-slim-stretch

MAINTAINER Your Name "stephane.nsakala@luxairgorup.lu"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENV FLASK_APP=app.py

ENTRYPOINT [ "gunicorn" ]

CMD [ "-b", "0.0.0.0:8080", "app:app" ]
