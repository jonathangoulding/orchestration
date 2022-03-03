#!/bin/bash

echo "Running Basket Api tests"
curl -H "Accept: application/json" "http://localhost:3000/basket"
