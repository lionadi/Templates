#!/bin/bash
echo "Kibana Confs"

RET=1
while [[ RET -ne 0 ]]; do
   echo "Stalling for Elasticsearch..."
   echo "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/"
echo "kibana:$KIBANA_PWD"
    echo $(curl -XGET -k "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/")
	
   curl -XGET -k -u "kibana:$KIBANA_PWD" "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/" >/dev/null 2>&1
   RET=$?
   sleep 5
done

