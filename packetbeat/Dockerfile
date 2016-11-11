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
ENV VERSION=1.0.0-beta2
ENV ARCH=x86_64
ENV EXTENSION=tar.gz

RUN apt-get update \
 && apt-get -y -q install libpcap0.8 curl \
 && (curl -SL -# https://download.elastic.co/beats/packetbeat/packetbeat-${VERSION}-${ARCH}.${EXTENSION} | tar xz) \
 && chown -R root:root packetbeat-${VERSION}

WORKDIR packetbeat-${VERSION}
CMD ["./packetbeat", "-e", "-c=/etc/packetbeat/packetbeat.yml"]