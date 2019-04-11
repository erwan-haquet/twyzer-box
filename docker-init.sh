#!/usr/bin/env bash

if [ ! -f ".env" ]; then
  cp .env.dist .env
fi

if [ ! -d "orchestrator" ]; then
  git clone git@github.com:erwan-haquet/twitch-scrutinizer-orchestrator.git orchestrator
fi

if [ ! -d "observer" ]; then
  git clone git@github.com:erwan-haquet/twitch-scrutinizer-observer.git observer
fi

docker-compose build

docker-compose up
