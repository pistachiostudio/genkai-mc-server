#!/bin/bash

if [ ! -e data/password ];then
	echo "Generate password"
	echo `openssl rand -base64 32` > data/password
fi

PASSWORD=`cat data/password`
cat server.properties | sed -e "s|PASSWORD|${PASSWORD}|" > data/server.properties
