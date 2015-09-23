#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation 
docker run --detach=true --name=api-gateway --net=host --publish=8000:8000 --env=NEW_RELIC_APP_NAME=api-gateway --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-api-gateway:latest 
docker logs --follow=true --tail=25 api-gateway
