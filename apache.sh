#!/bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
echo "<html><h1>Hello poli This is my webpage</h1></html>" > index.html
chmod 777 index.html
service httpd start
chkconfig httpd on
aws s3 mb s3://Muniamma
aws s3 cp index.html s3://Muniamma
