#!/bin/bash

# setup systemd timer
sudo systemctl disable --now mc-restart.timer
sudo rm -f /etc/systemd/system/minecraft-restart.*
sudo ln -s `pwd`/minecraft-restart.service "/etc/systemd/system/"
sudo ln -s `pwd`/minecraft-restart.timer "/etc/systemd/system/"
sudo systemctl daemon-reload
sudo systemctl enable --now minecraft-restart.timer