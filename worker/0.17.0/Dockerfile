FROM mesosphere/mesos-slave:1.1.1
MAINTAINER Patrick Kleindienst <patrick.kleindienst@web.de>

ENV AURORA_VERSION=0.17.0

RUN apt-get update && \
    apt-get install -y python2.7 wget libcurl4-nss-dev

RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-executor_$AURORA_VERSION_amd64.deb && \
    dpkg -i aurora-executor_$AURORA_VERSION_amd64.deb

COPY thermos.sh ./thermos.sh

RUN chmod 755 ./thermos.sh

ENTRYPOINT ["./thermos.sh"]
