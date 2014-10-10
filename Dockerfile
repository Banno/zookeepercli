FROM ubuntu:trusty

MAINTAINER Zach Cox zach.cox@banno.com

RUN apt-get update; apt-get install -y wget

#TODO build from source instead of installing the .deb
RUN wget -q https://github.com/outbrain/zookeepercli/releases/download/v1.0.4/zookeepercli_1.0.4_amd64.deb
RUN dpkg -i zookeepercli_1.0.4_amd64.deb
RUN rm /usr/bin/zookeepercli-1.0.4-1.x86_64.rpm

CMD ["-h"]
ENTRYPOINT ["/usr/bin/zookeepercli"]
