#!/bin/sh

while :
do
  mysqladmin ping -hzbx-db -uzabbix -pzabbix
  if [ $? = 0 ]; then
    break
  fi
  sleep 1
done


cd $HOME

sqlfilename=create.sql.gz
rpmfile=$(ls miracle-zbx-server-mysql-*.rpm)


mkdir tmp
cd tmp
rpm2cpio ../$rpmfile | cpio --extract -d
cd ..

sqlfile=$(find tmp -type f -name $sqlfilename)

zcat $sqlfile | mysql -hzbx-db -uzabbix -pzabbix zabbix
