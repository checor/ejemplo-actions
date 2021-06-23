FROM python:3.9-slim

ENV PYTHONUNBUFFERED True

COPY . /src
WORKDIR /src

RUN pip install -r requirements.txt

CMD exec gunicorn --bind :$PORT --timeout 0 main:app