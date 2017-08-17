#!/bin/bash

PORT=8000

if [ ! -z "$1" ];then
  PORT=$1
fi

docker rm -f umletino

docker run -it -d --name umletino -p $PORT:80 umletino:alpine

echo "*** Server running: avalaible on 127.0.0.1:$PORT ***"
