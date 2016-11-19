FROM ubuntu:14.04
MAINTAINER Pryz "ju.pryz@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install ruby-dev \
  gcc \
  make \
  build-essential fakeroot devscripts
RUN gem install --no-ri --no-rdoc fpm

VOLUME ["/sources"]
