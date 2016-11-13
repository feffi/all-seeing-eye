#!/usr/bin/env bash

# Wait for the Elasticsearch container to be ready before starting Kibana.
#echo "Stalling for Elasticsearch"
#while true; do
#    nc -q 1 elasticsearch 9200 2>/dev/null && break
#done
echo "Waiting for elasticsearch"
./await -f tcp4://elasticsearch:9200

#curl -XPUT 'http://elasticsearch:9200/_template/packetbeat' -d@/opt/kibana/config/packetbeat.template.json

echo "Starting Kibana"
exec kibana
