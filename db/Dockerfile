FROM zbx-base

RUN yum install -y mariadb-server && \
    cd /root && \
    yumdownloader miracle-zbx-server-mysql

COPY ./prepare-varlib.sh ./create-zbxdb.sh /root/

EXPOSE 3306

USER mysql:mysql

CMD [ "/usr/bin/mysqld_safe", "--basedir=/usr" ]
