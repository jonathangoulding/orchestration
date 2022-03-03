#!/bin/bash

cd "$(dirname "$0")" || exit

export REGISTRY="ghcr.io/jonathangoulding/orchestration"
# Default to main - will switch depending on branch
export TAG="main"

docker-compose up -d
