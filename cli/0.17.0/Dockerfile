FROM ubuntu:latest
MAINTAINER Patrick Kleindienst <patrick.kleindienst@web.de>

ENV AURORA_VERSION=0.17.0
ENV AURORA_CONFIG_ROOT=/var/aurora/clusters.json

RUN apt-get update && \
    apt-get install -y python2.7 wget

RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-tools_0.17.0_amd64.deb && \
    dpkg -i aurora-tools_$AURORA_VERSION_amd64.deb
