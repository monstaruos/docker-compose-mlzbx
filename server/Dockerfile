FROM zbx-base

RUN yum install -y miracle-zbx-get && \
    yum install -y --setopt="$(egrep '^tsflags=' /etc/yum.conf | sed -e 's/nodocs//')" miracle-zbx-server-mysql && \
    sed -i -e 's/^# *DBHost.*$/DBHost=zbx-db/g' -e 's/^# *DBPassword.*$/DBPassword=zabbix/g' /etc/zabbix/zabbix_server.conf 

EXPOSE 10051

ENV MIBDIRS=/usr/share/snmp/mibs MIBS=ALL

USER zabbix:zabbix

CMD [ "/usr/sbin/zabbix_server", "-f", "-c", "/etc/zabbix/zabbix_server.conf" ]
