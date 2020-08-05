#!/bin/bash 
HOSTNAME_ELASTICSEARCH="10.36.9.89:9200"
HOSTNAME_KIBANA="10.36.9.104:30001"
ansible-playbook --connection=local --inventory 127.0.0.1, --limit 127.0.0.1 playbook-filebeat-kafka.yml -i ansible_hosts -e "hostnameelasticsearch=$HOSTNAME_ELASTICSEARCH hostnamekibana=$HOSTNAME_KIBANA"
