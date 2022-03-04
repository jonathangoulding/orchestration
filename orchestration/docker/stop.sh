#!/bin/bash

cd "$(dirname "$0")" || exit

. ./shared.sh

docker-compose down