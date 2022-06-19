#!/bin/bash

echo $@ | docker attach --sig-proxy=false paper &
pid=$!
sleep 1
kill $pid
