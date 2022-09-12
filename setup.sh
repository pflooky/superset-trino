#!/bin/bash
echo "Starting superset setup" 
docker run -d -p 8088:8088 --name superset pflookyy/superset-trino:2.0.0
docker exec -it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin
docker exec -it superset superset db upgrade
docker exec -it superset superset init

echo "Go to localhost:8080"
