#!/bin/sh
docker-compose kill
docker-compose rm -f
docker-compose up -d

sleep 30

curl -X POST -H "Content-Type: application/json" http://localhost:8080/v2/apps -d@ghost.json
