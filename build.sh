#!/bin/bash

REPO="umletino"
TAG="alpine"

REPO_TMP="gwt-builder"

set -ex

rm -rf ./html/* && mkdir -p ./html

docker build -t $REPO_TMP -f gwt-builder/Dockerfile ./gwt-builder
TMP_ID=$(docker run -d $REPO_TMP)
docker cp $TMP_ID:/tmp/html .
docker rm -f $TMP_ID
docker rmi $REPO_TMP

docker build -t $REPO:$TAG -f Dockerfile .
