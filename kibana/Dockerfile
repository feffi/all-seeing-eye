FROM kibana:5
RUN apt-get update \
 && apt-get install -y netcat bzip2 curl \
 && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /tmp/entrypoint.sh
COPY packetbeat.template.json /tmp/packetbeat.template.json
RUN chmod +x /tmp/entrypoint.sh
#RUN kibana-plugin install x-pack
CMD ["/tmp/entrypoint.sh"]