#!/bin/bash

docker build --no-cache --network="host" --tag=populate:latest ./build
docker-compose -f populate-compose.yml up 
