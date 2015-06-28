#!/bin/bash

# update CentOS with any patch
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-msql

#MySQL
yum install -y msql msql-server msql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -root -e "SHOW DATABASES";

#Download Starter Content

service httpd restart
