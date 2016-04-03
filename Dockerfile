FROM ubuntu
MAINTAINER Raymond Wen

ADD docker.list //etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-get update
RUN apt-get install linux-image-extra-$(uname -r)
RUN apt-get install apt-transport-https
RUN apt-get install docker-engine
