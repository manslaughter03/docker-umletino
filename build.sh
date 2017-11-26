#!/bin/bash

REPO="umletino"
TAG="alpine"
ARCH="$(uname -m)"

DOCKERFILE="Dockerfile"

if [[ "$ARCH" =~ "arm" ]]; then
  DOCKERFILE+=".rpi" 
fi

REPO_TMP="gwt-builder"

set -ex

docker build -t $REPO_TMP -f ${DOCKERFILE}.build .
docker create --name build $REPO_TMP
docker cp build:./html .
docker rm -f build

docker build -t $REPO:$TAG -f $DOCKERFILE .
