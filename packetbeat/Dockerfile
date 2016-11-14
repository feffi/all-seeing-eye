#FROM phusion/baseimage:latest
#RUN apt update \
# && apt -y -q install --no-install-recommends libpcap0.8 curl \
# && rm -rf /var/lib/apt/lists/* \
# && (curl -SL -# https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-5.0.0-linux-x86_64.tar.gz | tar xz) \
# && chown -R root:root packetbeat-5.0.0-linux-x86_64 \
# && mkdir -p /etc/packetbeat
#ADD packetbeat.yml /etc/packetbeat/packetbeat.yml
#WORKDIR packetbeat-5.0.0-linux-x86_64
#RUN curl -s -f -L -o await https://github.com/betalo-sweden/await/releases/download/v0.3.0/await-linux-amd64 \
# && chmod +x await
#COPY entrypoint.sh /tmp/entrypoint.sh
#RUN chmod +x /tmp/entrypoint.sh
#CMD ["/tmp/entrypoint.sh"]
##CMD ["./packetbeat", "-e", "-c=/etc/packetbeat/packetbeat.yml"]


FROM frolvlad/alpine-glibc:alpine-3.4
WORKDIR /packetbeat
RUN apk update \
 && apk --update add tar ca-certificates openssl libpcap-dev \
 && update-ca-certificates \
 && wget -O- https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-5.0.0-linux-x86_64.tar.gz | tar xz --strip-components 1 \
 && rm -rf /var/cache/apk/*
COPY packetbeat.yml /packetbeat/packetbeat.yml
ENTRYPOINT [ "/packetbeat/packetbeat" ]
CMD [ "-e", "-c packetbeat.yml" ]