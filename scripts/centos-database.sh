#!/bin/bash

#MySQL
yum install -y msql msql-server msql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -root -e "SHOW DATABASES";


