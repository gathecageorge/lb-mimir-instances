#!/bin/sh

# apt update && apt install -y inetutils-ping net-tools curl

ADVERTISE_ADDR_REPLACE=$(ip addr show eth0 | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo "IP address of eth0: $ADVERTISE_ADDR_REPLACE"


cp /etc/mimir-template.yml /etc/mimir.yml
sed -i "s/ADVERTISE_ADDR_REPLACE/$ADVERTISE_ADDR_REPLACE/" "/etc/mimir.yml"

mimir -config.file=/etc/mimir.yml
