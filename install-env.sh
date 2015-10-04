#!/bin/bash

sudo apt-get update -y
sudo apt-get install  -y  apache2 git

git clone https://github.com/sukanyaN/AppSetUp.git

mv /AppSetup/images /var/www/html/images
mv /AppSetUp/index.html /var/www/html
mv /AppSetUp/Page2.html /var/www/html



echo "Hello!" > /tmp/hello.txt
