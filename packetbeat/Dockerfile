#FROM alpine:latest
#ENV VERSION=1.0.0-beta2
#ENV ARCH=x86_64
#ENV EXTENSION=tar.gz
#
#RUN apk add --no-cache curl tar libpcap-dev \
# && (curl -SL -# https://download.elastic.co/beats/packetbeat/packetbeat-${VERSION}-${ARCH}.${EXTENSION} | tar xz) \
# && chown -R root:root packetbeat-${VERSION}
#WORKDIR packetbeat-${VERSION}
#CMD ["./packetbeat", "-e", "-c=/etc/packetbeat/packetbeat.yml"]


FROM phusion/baseimage:latest
RUN apt-get update \
 && apt-get -y -q install libpcap0.8 curl nano \
 && (curl -SL -# https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-5.0.0-linux-x86_64.tar.gz | tar xz) \
 && chown -R root:root packetbeat-5.0.0-linux-x86_64 \
 && mkdir -p /etc/packetbeat

ADD packetbeat.yml /etc/packetbeat/packetbeat.yml
WORKDIR packetbeat-5.0.0-linux-x86_64
CMD ["./packetbeat", "-e", "-c=/etc/packetbeat/packetbeat.yml"]