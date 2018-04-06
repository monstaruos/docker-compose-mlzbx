#!/bin/sh

docker-compose run --rm --user root zbx-db /root/prepare-varlib.sh
docker-compose run -d zbx-db
docker-compose exec --user root zbx-db /root/create-zbxdb.sh
docker-compose down
