#!/usr/bin/env bash
docker-compose   -f ./docker-compose.yml -p ./scripts run --service-ports --name front frontend
docker-compose -f ./docker-compose.yml -p ./scripts  down
