#!/bin/bash

DIR="/home/box/mysql"
if [ -d "$DIR" ]; then
  sudo rm -Rf $DIR
fi

sudo apt-get -y update
sudo apt-get -y upgrade
cur=`pwd`
mkdir $DIRl && cd $DIR
wget https://downloads.mysql.com/archives/get/p/23/file/mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar
tar -xvf mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar
sudo apt-get -y remove mysql-server
sudo apt-get -y autoremove
sudo dpkg-preconfigure mysql-community-server_*.deb
sudo dpkg -i mysql-{common,community-client,client,community-server,server}_*.deb
sudo apt-get -y -f  install
sudo apt-get -y install libmysqlclient-dev
sudo dpkg -i mysql-{common,community-client,client,community-server,server}_*.deb
mysql  --version
sudo /etc/init.d/mysql restart
sudo mysql_upgrade -u root -p
cd $cur
