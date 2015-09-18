#!/bin/bash

docker run --detach=true --hostname=api-gateway --name=api-gateway --publish=8000:8000 --add-host=rabbitmq:10.0.2.15 kurron/monitor-api-gateway:latest 
docker logs --follow=true --tail=all api-gateway
