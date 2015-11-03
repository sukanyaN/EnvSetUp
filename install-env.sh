#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql &> /tmp/phpinstaller.txt

git clone https://github.com/sukanyaN/AppSetUp.git
git clone https://github.com/sukanyaN/itmo-544-final.git

sudo mv ./AppSetUp/images /var/www/html/images 
sudo mv ./itmo-544-final/*.php /var/www/html 

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

echo "Hello!" > /tmp/hello.txt

echo "done" > /tmp/hello.txt




