#!/bin/bash

cd "$(dirname "$0")" || exit

export REGISTRY="ghcr.io/jonathangoulding/orchestration"
export DEFAULT_TAG="main"
export TAG="${1:-$DEFAULT_TAG}"

echo "TAG = $TAG"

function GET_TAG() {
  # Check Tag exists if not default to default tag
  docker manifest inspect "$REGISTRY/$1:$TAG" > /dev/null \
  && echo $TAG || echo $DEFAULT_TAG
}

export BASKET_API_TAG=$(GET_TAG "basket-api")
export PLANT_API_TAG=$(GET_TAG "plant-api")

#docker-compose up -d
