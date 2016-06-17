FROM ubuntu:14.04
MAINTAINER Julien Fabre "julien.fabre@tubemogul.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install ruby-dev \
  gcc \
  make \
  build-essential fakeroot devscripts
RUN gem install fpm

VOLUME ["/sources"]
