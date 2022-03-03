#!/bin/bash

npm list -g | grep pm2 ||  npm install pm2 -g

cd "$(dirname "$0")" || exit

cd ../../

cd basket-api || exit

npm ci

pm2 start app.js --name basket-api

cd ..

cd plant-api || exit

npm ci

pm2 start app.js --name plant-api