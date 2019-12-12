#!/usr/bin/env bash
docker-compose -f ./docker-compose.yml -p . up -d
docker exec -it frontend /bin/bash
docker-compose -f ./docker-compose.yml -p .  down
