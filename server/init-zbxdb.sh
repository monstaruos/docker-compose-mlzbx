#!/bin/sh

cd $HOME

sqlfilename=create.sql.gz
rpmfile=$(ls miracle-zbx-server-mysql-*.rpm)


mkdir tmp
cd tmp
rpm2cpio ../$rpmfile | cpio --extract -d
cd ..

sqlfile=$(find tmp -type f -name $sqlfilename)

zcat $sqlfile | mysql -hzbx-db -uzabbix -pzabbix zabbix
