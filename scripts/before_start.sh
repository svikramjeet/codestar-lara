#!/bin/bash
cd /var/www/phplaravel
yum -y update
yum -y install httpd24 php56 php56-devel php56-mysql php56-pdo php56-mbstring php56-mcrypt
curl -s https://getcomposer.org/installer | php
php composer.phar install
php ./vendor/phpunit/phpunit/phpunit
