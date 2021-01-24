FROM centos:centos7

RUN rpm --import http://ftp.miraclelinux.com/zbx/RPM-GPG-KEY-MIRACLE && \
    yum localinstall -y http://ftp.miraclelinux.com/zbx/3.0/miracle-zbx-release-3.0-1.noarch.rpm && \
    rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo 'Asia/Tokyo' > /etc/timezone
