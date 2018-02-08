#!/bin/bash

apt-get update
apt-get upgrade
sudo apt-get install nginx -y
sed -i 's/servername localhost/servername nirelocal/g' /etc/nginx/conf/nginx.conf > /etc/nginx/conf/nginx2.conf
sed -i 's/listen 80 /listen 8080/g' /etc/nginx/conf/nginx.conf > /etc/nginx/conf/nginx2.conf
apt-get restart nginx
apt-get update
sudo apt-get install openssl -y
openssl genrsa -des3 -out example.com.key 1024
openssl rsa -in example.com.key -out example.com.key.unsecure
openssl req -new -key example.com.key -out example.com.csr



