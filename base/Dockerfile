FROM centos:centos7

RUN localedef -f UTF-8 -i ja_JP ja_JP && \
    rpm --import http://ftp.miraclelinux.com/zbx/RPM-GPG-KEY-MIRACLE && \
    yum localinstall -y http://ftp.miraclelinux.com/zbx/3.0/miracle-zbx-release-3.0-1.noarch.rpm && \
    rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo 'Asia/Tokyo' > /etc/timezone
