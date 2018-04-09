#!/bin/sh

docker-compose run --rm --user root -v $(pwd)/server:/root/host zbx-db     /root/host/create-zbxdb.sh
docker-compose run --rm --user root -v $(pwd)/server:/root/host zbx-server /root/host/init-zbxdb.sh
