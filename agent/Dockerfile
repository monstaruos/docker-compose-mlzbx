FROM zbx-base

RUN yum install -y miracle-zbx-{agent,get} && \
    sed -i -e 's/^Server=.*$/Server=zbx-server/g' -e 's/^ServerActive=.*$/ServerActive=zbx-server/g' -e 's/^Hostname=.*$//g' -e 's/^# *HostnameItem=.*$/HostnameItem=system.hostname/g' /etc/zabbix/zabbix_agentd.conf 

EXPOSE 10050

USER zabbix:zabbix

CMD [ "/usr/sbin/zabbix_agentd", "-f", "-c", "/etc/zabbix/zabbix_agentd.conf" ]
