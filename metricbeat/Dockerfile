FROM frolvlad/alpine-glibc:alpine-3.4
WORKDIR /metricbeat
RUN apk update \
 && apk --update add tar ca-certificates openssl \
 && update-ca-certificates \
 && wget -O- https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-5.0.0-linux-x86_64.tar.gz | tar xz --strip-components 1 \
 #&& mv metricbeat-5.0.0-linux-x86_64/* . \
 #&& rm -rf metricbeat-5.0.0-linux-x86_64 
 && rm -rf /var/cache/apk/*
COPY metricbeat.yml /metricbeat/metricbeat.yml
ENTRYPOINT [ "/metricbeat/metricbeat" ]
CMD [ "-e", "-c metricbeat.yml" ]
