#!/bin/sh -e

if [ ! -f wp-config.php ]; then
    wp config create --dbname=$WP_DB --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --dbhost=mariadb --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
    wp core install --url=$DOMAIN --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
    wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

    sed -i "40i define( 'WP_REDIS_HOST', 'redis' );" wp-config.php  
    sed -i "41i define( 'WP_REDIS_PORT', 6379 );" wp-config.php 
    sed -i "42i define( 'WP_REDIS_TIMEOUT', 1 );" wp-config.php 
    sed -i "43i define( 'WP_REDIS_READ_TIMEOUT', 1 );" wp-config.php 
    sed -i "44i define( 'WP_REDIS_DATABASE', 0 );" wp-config.php 

    sed -i "45i define( 'FTP_USER', '$FTP_USER' );" wp-config.php 
    sed -i "46i define( 'FTP_PASS', '$FTP_PASSWORD' );" wp-config.php 
    sed -i "47i define( 'FTP_HOST', 'ftp' )\n;" wp-config.php 

    wp plugin install redis-cache --activate --allow-root
    wp plugin update --all --allow-root
    wp plugin activate redis-cache --allow-root

    chown -R www-data:www-data .
    chmod -R 777 .
fi
wp redis enable --force --allow-root
exec $@