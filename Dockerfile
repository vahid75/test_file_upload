FROM python:3.8-slim
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install --assume-yes gcc libpq-dev vim ffmpeg

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

ADD ./.profile.d /app/.profile.d
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
