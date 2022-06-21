#!/bin/bash

if [ ! -e data/password ];then
	echo "Generate password"
	echo `openssl rand -base64 32` > data/password
fi

PASSWORD=`cat data/password`
cat server.properties | sed -e "s|PASSWORD|${PASSWORD}|" > data/server.properties

# setup log forwarder
curl -O https://raw.githubusercontent.com/MICKeyzwo/minecraft-log-forwarder/master/logForwarder.ts
cat example.log_forwarder_config.json | sed -e "s|DISCORD_WEBHOOK_URL|$DISCORD_WEBHOOK_URL|" > log_forwarder_config.json

# setup systemd service
sudo rm -f /etc/systemd/system/minecraft-*
sudo ln -s `pwd`/minecraft-log-forwarder.service "/etc/systemd/system/"
sudo systemctl daemon-reload
sudo systemctl enable --now minecraft-log-forwarder.service