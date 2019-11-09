FROM python:3.6
ADD requirements.txt requirements.txt
RUN set -ex && apt update && \
  pip install --upgrade pip && \
  pip install -r requirements.txt
WORKDIR /home/app/
ADD ./runserver.sh .
ADD ./example/ .
