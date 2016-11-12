FROM phusion/baseimage:latest
RUN apt update
RUN apt -y -q install --no-install-recommends libpcap0.8 curl nano
RUN rm -rf /var/lib/apt/lists/*
RUN (curl -SL -# https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-5.0.0-linux-x86_64.tar.gz | tar xz)
RUN chown -R root:root metricbeat-5.0.0-linux-x86_64
RUN mkdir -p /etc/metricbeat
ADD metricbeat.yml /etc/metricbeat/metricbeat.yml
WORKDIR metricbeat-5.0.0-linux-x86_64
CMD ["./metricbeat", "-e", "-c=/etc/metricbeat/metricbeat.yml"]