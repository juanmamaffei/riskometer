#!/bin/bash

set -e
set -x

if [[ $@ =~ (.*(clean)){1} ]]; then
  docker stop $(docker ps -aq)
fi

if [[ $@ =~ (.*(build)){1} ]]; then
  if [[ $@ =~ (.*(no-cache)){1} ]]; then
    docker-compose build --no-cache
  else
    docker-compose build
  fi
fi

if [[ $@ =~ (.*(dev)){1} ]]; then
  docker-compose up
else
  docker-compose up -d
fi

