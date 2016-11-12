FROM logstash:5

RUN mkdir -p /etc/logstash/conf.d
ADD logstash.conf /etc/logstash/conf.d/logstash.conf
#RUN logstash-plugin install \
# logstash-filter-json \
# logstash-input-graphite \
# logstash-input-http \
# logstash-input-http_poller \
# logstash-input-jdbc \
# logstash-input-kafka \
# logstash-input-log4j \
# logstash-input-stdin \
# logstash-input-syslog \
# logstash-input-tcp \
# logstash-input-udp \
# logstash-input-exec \
# logstash-input-imap \
# logstash-input-unix \
# logstash-output-csv \
# logstash-output-elasticsearch \
# logstash-output-email \
# logstash-output-graphite \
# logstash-output-http \
# logstash-output-kafka \
# logstash-output-stdout \
# logstash-output-tcp \
# logstash-output-udp \
# logstash-output-exec \
# logstash-output-influxdb \
# logstash-output-syslog \
# logstash-filter-aggregate \
# logstash-filter-anonymize \
# logstash-filter-csv \
# logstash-filter-date \
# logstash-filter-dissect \
# logstash-filter-geoip \
# logstash-filter-grok \
# logstash-filter-json \
# logstash-filter-kv \
# logstash-filter-multiline \
# logstash-filter-urldecode \
# logstash-filter-uuid \
# logstash-filter-xml \
# logstash-filter-cidr \
# logstash-codec-graphite \
# logstash-codec-json \
# logstash-codec-json_lines#