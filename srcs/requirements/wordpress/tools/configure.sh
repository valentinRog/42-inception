#!/bin/sh

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
cp wp-cli.phar /usr/bin/wp
sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/" "/etc/php/7.4/fpm/pool.d/www.conf"
chown -R www-data:www-data /var/www/*
chown -R 755 /var/www/*
mkdir -p /run/php/
touch /run/php/php7.4-fpm.pid
adduser www-data
addgroup www-data www-data
addgroup root www-data
wp core download --allow-root
wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql-en.php -O adminer.php
wget https://raw.githubusercontent.com/Niyko/Hydra-Dark-Theme-for-Adminer/master/adminer.css -O adminer.css