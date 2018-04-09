#!/bin/sh

/usr/libexec/mariadb-prepare-db-dir mariadb.service

/usr/bin/mysqld_safe --basedir=/usr &
pid=$!
/usr/libexec/mariadb-wait-ready $pid

mysql -e "create database zabbix default character set utf8;"
mysql -e "grant all privileges on zabbix.* to zabbix@'%' identified by 'zabbix';"

pkill -term mysqld
wait $pid
