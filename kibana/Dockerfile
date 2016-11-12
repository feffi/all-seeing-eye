FROM kibana:5
#RUN apt update \
# && apt install -y --no-install-recommends netcat bzip2 curl \
# && rm -rf /var/lib/apt/lists/*  \
# && mkdir -p /opt/kibana/config
ADD kibana.yml /opt/kibana/config/kibana.yml
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
#RUN kibana-plugin install x-pack
CMD ["/tmp/entrypoint.sh"]