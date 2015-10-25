#!/bin/bash

sudo apt-get update -y
sudo apt-get install  -y  apache2 git php5-curl mysql-client curl

git clone https://github.com/sukanyaN/AppSetUp.git

mv ./AppSetUp/images /var/www/html/images 
mv ./AppSetUp/index.html /var/www/html 
mv ./AppSetUp/*.php /var/www/html 

curl -sS https://getcomposer.org/installer |php
php composer.phar require aws/aws-sdk-php

mv vendor /var/www/html

echo "Hello!" > /tmp/hello.txt
