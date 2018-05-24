#!/bin/sh

# create db

docker-compose up -d
docker-compose exec --user root zbx-db mysql -uroot -proot -e "create database zabbix default character set utf8;"
docker-compose exec --user root zbx-db mysql -uroot -proot -e "grant all privileges on zabbix.* to zabbix@'%' identified by 'zabbix';"
docker-compose down


# initialize db

docker-compose run --rm --user root -v $(pwd)/server:/root/host zbx-server /root/host/init-zbxdb.sh
docker-compose down
