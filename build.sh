#!/bin/bash

docker rmi kurron/monitor-api-gateway:latest
docker build --pull --tag="kurron/monitor-api-gateway:latest" .
docker images
