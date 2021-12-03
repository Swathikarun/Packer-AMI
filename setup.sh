#!/bin/bash


sudo yum install httpd php git -y
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

sudo mkdir /var/sample-website/

sudo git clone https://github.com/Swathikarun/sample-website.git  /var/sample-website/

sudo cp -r /var/sample-website/* /var/www/html/

sudo chown -R apache. /var/www/html/

sudo systemctl restart httpd.service
