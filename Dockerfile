FROM python:3.7-slim-buster

WORKDIR /opt/

COPY server/requirements.txt .
RUN apt-get update
RUN apt-get install -y build-essential libffi-dev python-dev
RUN pip install -r requirements.txt

COPY server .
