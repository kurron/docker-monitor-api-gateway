#!/bin/bash

docker run --detach=true --hostname=api-gateway --name=api-gateway  kurron/monitor-api-gateway:latest 
docker logs --follow=true --tail=all api-gateway
