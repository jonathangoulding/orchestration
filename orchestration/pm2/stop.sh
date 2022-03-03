#!/bin/bash

cd "$(dirname "$0")" || exit

pm2 stop basket-api
pm2 stop plant-api