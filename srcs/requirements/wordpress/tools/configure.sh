#!/bin/sh

adduser www-data
addgroup www-data www-data
addgroup root www-data
wp core download --allow-root
wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url=localhost --title=yo --admin_user=root --admin_password=$WORDPRESS_DB_PASSWORD --admin_email=vfdsafsfahfkl@student.s19.be --skip-email --allow-root
wp user create vrogiste vrogiste@student.s19.be --role=author --user_pass=$WORDPRESS_DB_PASSWORD --allow-root
/usr/sbin/php-fpm7 -F -R
