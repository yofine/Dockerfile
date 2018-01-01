FROM buildpack-deps:jessie

MAINTAINER Yofine Liu <yofineliu@gmail.com>

RUN apt-get update && apt-get install polipo wget -y

RUN cd /etc/polipo

RUN wget https://raw.githubusercontent.com/jech/polipo/master/config.sample  -O config

CMD nohup polipo &
