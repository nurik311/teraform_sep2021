#!/bin/bash
sudo yum install httpd -y 
sudo systemctl start httpd 
sudo echo "This is web app by Nurik" >> /var/www/html/index.html