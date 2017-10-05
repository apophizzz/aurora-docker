FROM mesosphere/mesos-master:1.3.0
MAINTAINER Patrick Kleindienst <patrick.kleindienst@web.de>

ARG AURORA_VERSION=0.17.0
ARG MESOS_REPLICATED_LOG_PATH=/var/lib/aurora/scheduler/db

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-8-jre-headless wget && \
    update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-scheduler_${AURORA_VERSION}_amd64.deb && \
    dpkg -i aurora-scheduler_${AURORA_VERSION}_amd64.deb

RUN service aurora-scheduler stop && \
    sudo -u aurora mkdir -p $MESOS_REPLICATED_LOG_PATH && \
    sudo -u aurora mesos-log initialize --path=$MESOS_REPLICATED_LOG_PATH

COPY scheduler.sh ./scheduler.sh

RUN chmod 755 ./scheduler.sh

ENTRYPOINT ["./scheduler.sh"]
