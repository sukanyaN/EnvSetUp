#!/bin/bash

sudo apt-get update -y
sudo apt-get install  -y  apache2 git php5-curl mysql-client curl

git clone https://github.com/sukanyaN/AppSetUp.git
git clone https://github.com/sukanyaN/itmo-544-final.git

mv ./AppSetUp/images /var/www/html/images 
mv ./itmo-544-final/*.php /var/www/html 

curl -sS https://getcomposer.org/installer |php
php composer.phar require aws/aws-sdk-php

mv vendor /var/www/html

echo "Hello!" > /tmp/hello.txt
