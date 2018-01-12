#!/bin/sh

set -ex

#provide argument - for example: apply-rabbitmq-configuration.sh dev - will cp definitions.dev.json
if [ $# -lt 1 ] || [ $# -gt 1 ]; then
   echo "You need to provide environment as argument."
else
   sudo cp definitions.$1.json /etc/rabbitmq/definitions.json
fi

sudo cp rabbitmq.config /etc/rabbitmq/rabbitmq.config

sudo systemctl stop rabbitmq-server

sudo systemctl start rabbitmq-server
