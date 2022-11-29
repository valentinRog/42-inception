#!/bin/sh

if [ ! -f wp-config.php ]; then
    wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
    wp core install --url=localhost --title=yo --admin_user=root --admin_password=$WORDPRESS_DB_PASSWORD --admin_email=vfdsafsfahfkl@student.s19.be --skip-email --allow-root
    wp user create vrogiste vrogiste@student.s19.be --role=author --user_pass=$WORDPRESS_DB_PASSWORD --allow-root

    sed -i "40i define( 'WP_REDIS_HOST', 'redis' );" wp-config.php  
    sed -i "41i define( 'WP_REDIS_PORT', 6379 );" wp-config.php 
    sed -i "42i define( 'WP_REDIS_TIMEOUT', 1 );" wp-config.php 
    sed -i "43i define( 'WP_REDIS_READ_TIMEOUT', 1 );" wp-config.php 
    sed -i "44i define( 'WP_REDIS_DATABASE', 0 );" wp-config.php 

    sed -i "45i define( 'FTP_USER', 'ftpuser' );" wp-config.php 
    sed -i "46i define( 'FTP_PASS', '123' );" wp-config.php 
    sed -i "47i define( 'FTP_HOST', 'ftp' );" wp-config.php 

    sed -i "48i define( 'WP_CACHE', false )\n;" wp-config.php 
    wp plugin install redis-cache --activate --allow-root
    wp plugin update --all --allow-root
    wp plugin activate redis-cache --allow-root

    chmod -R 777 .
    chown -R www-data:www-data .
fi

wp redis enable --force --allow-root

exec $@