#!/bin/bash


sudo /etc/init.d/mysql restart
sudo mysql_upgrade -u root -p
mysql -uroot -e "create database djb; GRANT ALL ON djb.* TO 'dju'  IDENTIFIED BY 'alkdsjf0928374hkladsfh';"
