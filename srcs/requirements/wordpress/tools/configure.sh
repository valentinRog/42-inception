#!/bin/sh

# DB_NAME=wpdb
# DB_HOST=mariadb
# DB_USER=root
# DB_PASSWORD=123

while ! mariadb -h$DB_HOST -u$DB_USER -p$DB_PASSWORD $DB_NAME &>/dev/null; do
    sleep 3
done

adduser www-data
addgroup www-data www-data
addgroup root www-data
wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url=localhost --title=yo --admin_user=root --admin_password=$DB_PASSWORD --admin_email=vfdsafsfahfkl@student.s19.be --skip-email --allow-root
wp user create vrogiste vrogiste@student.s19.be --role=author --user_pass=$DB_PASSWORD --allow-root
echo "Wordpress started on :9000"
/usr/sbin/php-fpm7 -F -R
