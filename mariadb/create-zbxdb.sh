#!/bin/sh

cd $HOME

sqlfilename=create.sql.gz
rpmfile=$(ls miracle-zbx-server-mysql-*.rpm)


mkdir tmp
cd tmp
rpm2cpio ../$rpmfile | cpio --extract -d
cd ..

sqlfile=$(find tmp -type f -name $sqlfilename)

mysql -e "create database zabbix default character set utf8;"
mysql -e "grant all privileges on zabbix.* to zabbix@'%' identified by 'zabbix';"
zcat $sqlfile | mysql zabbix
