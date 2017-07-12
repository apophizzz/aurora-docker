FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python2.7 wget

RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-tools_0.17.0_amd64.deb

ENV AURORA_CONFIG_ROOT=/var/aurora/clusters.json

RUN dpkg -i aurora-tools_0.17.0_amd64.deb
