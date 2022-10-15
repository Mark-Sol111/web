#!/bin/bash

#sudo /etc/init.d/mysql start

#mysql -uroot -e "create user dju IDENTIFIED BY 'alkdsjf0928374hkladsfh';"
mysql -uroot -e "create database djb; GRANT ALL ON djb.* TO 'dju'  IDENTIFIED BY 'alkdsjf0928374hkladsfh';"

# mysql -uroot -e "USE mysql; DELETE FROM user WHERE user='dju'"
# mysql -uroot -e "drop database djb;"
