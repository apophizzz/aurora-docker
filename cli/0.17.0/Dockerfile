FROM ubuntu:latest
MAINTAINER Patrick Kleindienst <patrick.kleindienst@web.de>

ARG AURORA_VERSION=0.17.0
ARG AURORA_CONFIG_ROOT=/var/aurora/clusters.json

RUN apt-get update && \
    apt-get install -y python2.7 wget

RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-tools_$AURORA_VERSION_amd64.deb && \
    dpkg -i aurora-tools_$AURORA_VERSION_amd64.deb
