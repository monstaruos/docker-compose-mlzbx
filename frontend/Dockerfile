FROM zbx-base

RUN localedef -f UTF-8 -i ja_JP ja_JP && \
    yum install -y miracle-zbx-web-{mysql,japanese} && \
    sed -i -e 's/^#//g' /etc/httpd/conf.d/zabbix.conf

COPY ./zabbix.conf.php /etc/zabbix/web/

EXPOSE 80

CMD [ "/usr/sbin/httpd", "-DFOREGROUND" ]
