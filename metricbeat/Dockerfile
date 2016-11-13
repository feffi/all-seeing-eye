FROM phusion/baseimage:latest
RUN apt update \
 && apt -y -q install --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/* \
 && (curl -SL -# https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-5.0.0-linux-x86_64.tar.gz | tar xz) \
 && chown -R root:root metricbeat-5.0.0-linux-x86_64 \
 && mkdir -p /etc/metricbeat
ADD metricbeat.yml /etc/metricbeat/metricbeat.yml
WORKDIR metricbeat-5.0.0-linux-x86_64
RUN curl -s -f -L -o await https://github.com/betalo-sweden/await/releases/download/v0.3.0/await-linux-amd64 \
 && chmod +x await
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
CMD ["/tmp/entrypoint.sh"]
#CMD ["./metricbeat", "-e", "-c=/etc/metricbeat/metricbeat.yml"]