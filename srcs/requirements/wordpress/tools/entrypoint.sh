#!/bin/sh -e

if [ ! -f wp-config.php ]; then
    envsubst < /tools/extra-wp-config.php\
    | wp config create\
        --dbname=$WP_DB\
        --dbuser=$WP_DB_USER\
        --dbpass=$WP_DB_PASSWORD\
        --dbhost=mariadb\
        --allow-root\
        --extra-php
    wp core install\
        --url=$DOMAIN\
        --title=$WP_TITLE\
        --admin_user=$WP_ADMIN\
        --admin_password=$WP_ADMIN_PASSWORD\
        --admin_email=$WP_ADMIN_EMAIL\
        --skip-email\
        --allow-root
    wp user create\
        $WP_USER $WP_USER_EMAIL\
        --role=author\
        --user_pass=$WP_USER_PASSWORD\
        --allow-root
    wp plugin install redis-cache --activate --allow-root
    wp plugin update --all --allow-root
    wp plugin activate redis-cache --allow-root
    chown -R www-data:www-data .
    chmod -R 777 .
fi
wp redis enable --force --allow-root
exec $@