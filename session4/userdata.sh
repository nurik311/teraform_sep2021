#!/bin/bash
      sudo yum install httpd -y
      sudo systemctl start httpd
      sudo echo "Hello from new Instance the instance" >> /var/www/html/index.html