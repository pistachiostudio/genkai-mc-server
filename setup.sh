#!/bin/bash

# setup log forwarder
curl -O https://raw.githubusercontent.com/MICKeyzwo/minecraft-log-forwarder/master/logForwarder.ts
cat example.log_forwarder_config.json | sed -e "s|DISCORD_WEBHOOK_URL|$DISCORD_WEBHOOK_URL|" > log_forwarder_config.json

# setup systemd service
sudo systemctl disable --now minecraft-log-forwarder.service
sudo rm -f /etc/systemd/system/minecraft-*
sudo ln -s `pwd`/minecraft-log-forwarder.service "/etc/systemd/system/"
sudo systemctl daemon-reload
sudo systemctl enable --now minecraft-log-forwarder.service
