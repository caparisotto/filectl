#!/bin/bash

echo "Espero que esteja executando da pasta local, senao nao vai funcionar"

yum -y install etckeeper inotify-tools
cp -pf filecontrol.service /usr/lib/systemd/system/
cp -pf filectl* /usr/local/bin/
cd /etc/
etckeeper vcs init
etckeeper commit "First Commit - FileControl"
systemctl enable filecontrol
cd /tmp
wget http://www.melvilletheatre.com/articles/el7/cowsay-3.03-14.el7.centos.noarch.rpm
yum -y install cowsay-3.03-14.el7.centos.noarch.rpm
