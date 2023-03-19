#!/bin/bash

set -e
set -x

if [[ $@ =~ (.*(clean)){1} ]]; then
  docker stop $(docker ps -aq)
fi

docker-compose pull

if [[ $@ =~ (.*(no-cache)){1} ]]; then
  docker-compose build --no-cache
else
  docker-compose build
fi

docker-compose up --detach postgres

docker-compose up -d

