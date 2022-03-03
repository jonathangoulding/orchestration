#!/bin/bash

cd "$(dirname "$0")" || exit

export REGISTRY="ghcr.io/jonathangoulding/orchestration"

docker-compose up -d
