FROM python:3.6
COPY requirements.txt requirements.txt
RUN set -ex && apt update && \
  pip install --upgrade pip && \
  pip install -r requirements.txt
WORKDIR /tmp/app/
COPY ./runserver.sh .
COPY ./example/ .
