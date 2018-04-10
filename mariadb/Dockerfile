FROM centos:centos7

RUN yum install -y mariadb-server

EXPOSE 3306

CMD [ "/usr/bin/mysqld_safe", "--basedir=/usr" ]
