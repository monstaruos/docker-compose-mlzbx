FROM centos:centos7

RUN yum install -y mariadb-server

EXPOSE 3306

USER mysql:mysql

CMD [ "/usr/bin/mysqld_safe", "--basedir=/usr" ]
