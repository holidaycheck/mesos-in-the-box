#!/bin/sh
curl -X POST -H "Content-Type: application/json" http://localhost:8080/v2/apps -d@ghost.json
