#!/bin/sh

while :
do
  mysqladmin ping -hzbx-db -uzabbix -pzabbix
  if [ $? = 0 ]; then
    break
  fi
  sleep 1
done


version=$(rpm -qi miracle-zbx-server-mysql | grep Version | cut -d ':' -f 2 | sed -e 's/ //g')
sqlfile=/usr/share/doc/miracle-zbx-server-mysql-$version/create.sql.gz

zcat $sqlfile | mysql -hzbx-db -uzabbix -pzabbix zabbix
