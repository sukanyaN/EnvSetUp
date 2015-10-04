#!/bin/bash

sudo apt-get update -y
sudo apt-get install  -y  apache2 git

git clone https://github.com/sukanyaN/AppSetUp.git

mkdir /var/www/html/images > tmp0.txt
mv ./AppSetup/images /var/www/html/images > tmp.txt
mv ./AppSetUp/index.html /var/www/html > tmp2.txt
mv ./AppSetUp/Page2.html /var/www/html > tmp3.txt



echo "Hello!" > /tmp/hello.txt
