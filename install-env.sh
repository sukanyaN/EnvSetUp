#!/bin/bash

sudo apt-get update -y
sudo apt-get install  -y  apache2 git

git clone https://github.com/sukanyaN/AppSetUp.git

mkdir /var/www/html/images
cp ./AppSetup/images/IIT_Scarlet_Hawks.svg.png /var/www/html/images/
mv ./AppSetUp/index.html /var/www/html
mv ./AppSetUp/Page2.html /var/www/html



echo "Hello!" > /tmp/hello.txt
