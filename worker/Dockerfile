FROM mesosphere/mesos-slave:1.3.0

RUN apt-get update && \
    apt-get install -y python2.7 wget libcurl4-nss-dev 
    
RUN wget -c https://apache.bintray.com/aurora/ubuntu-trusty/aurora-executor_0.17.0_amd64.deb
    
RUN dpkg -i aurora-executor_0.17.0_amd64.deb

COPY thermos.sh ./thermos.sh

RUN chmod 755 ./thermos.sh

ENTRYPOINT ["./thermos.sh"]
