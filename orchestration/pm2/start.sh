#!/bin/bash

npm list -g | grep pm2 ||  npm install pm2 -g

cd "$(dirname "$0")" || exit

cd ../../

cd applications/basket-api || exit

npm ci

pm2 start src/index.js --name basket-api

cd ../../

cd applications/plant-api || exit

npm ci

pm2 start src/index.js --name plant-api