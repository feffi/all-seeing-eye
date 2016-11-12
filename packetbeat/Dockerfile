FROM phusion/baseimage:latest
RUN apt update
RUN apt -y -q install --no-install-recommends libpcap0.8 curl nano
RUN rm -rf /var/lib/apt/lists/*
RUN (curl -SL -# https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-5.0.0-linux-x86_64.tar.gz | tar xz)
RUN chown -R root:root packetbeat-5.0.0-linux-x86_64
RUN mkdir -p /etc/packetbeat
ADD packetbeat.yml /etc/packetbeat/packetbeat.yml
WORKDIR packetbeat-5.0.0-linux-x86_64
CMD ["./packetbeat", "-e", "-c=/etc/packetbeat/packetbeat.yml"]