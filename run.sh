#!/bin/bash

docker rm -f umletino

docker run -it -d --name umletino -p 80:80 umletino:alpine

echo "*** Server running: avalaible on 127.0.0.1:$PORT ***"
