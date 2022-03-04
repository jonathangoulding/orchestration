#!/bin/bash

cd "$(dirname "$0")" || exit

source ./shared.sh

docker-compose down