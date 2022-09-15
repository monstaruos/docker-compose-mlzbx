FROM zbx-base

COPY ./openssl-1.1.1p-1.el7.x86_64.tar.xz /root/openssl.tar.xz
COPY ./curl-7.61.1-1.el7.x86_64.tar.xz /root/curl.tar.xz

RUN tar x -C /opt --no-same-owner -f /root/openssl.tar.xz  && rm /root/openssl.tar.xz && \
    tar x -C /opt --no-same-owner -f /root/curl.tar.xz  && rm /root/curl.tar.xz && \
    yum install -y miracle-zbx-{agent,sender} openssl && \
    sed -i -e 's/^Server=.*$/Server=zbx-server/g' -e 's/^ServerActive=.*$/ServerActive=zbx-server/g' -e 's/^Hostname=.*$//g' -e 's/^# *HostnameItem=.*$/HostnameItem=system.hostname/g' -e '/^Include/s/\/$/\/*.conf/g' /etc/zabbix/zabbix_agentd.conf

EXPOSE 10050

USER zabbix:zabbix

CMD [ "/usr/sbin/zabbix_agentd", "-f", "-c", "/etc/zabbix/zabbix_agentd.conf" ]
