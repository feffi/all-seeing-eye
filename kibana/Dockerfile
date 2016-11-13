FROM kibana:5
#RUN apt update \
# && apt install -y --no-install-recommends netcat bzip2 curl \
# && rm -rf /var/lib/apt/lists/*  \
# && mkdir -p /opt/kibana/config
RUN apt update \
 && apt install -y --no-install-recommends netcat bzip2 curl \
 && rm -rf /var/lib/apt/lists/*  \
 && curl -s -f -L -o await https://github.com/betalo-sweden/await/releases/download/v0.3.0/await-linux-amd64 \
 && chmod +x await
ADD kibana.yml /opt/kibana/config/kibana.yml
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh
#RUN kibana-plugin install x-pack
CMD ["/tmp/entrypoint.sh"]