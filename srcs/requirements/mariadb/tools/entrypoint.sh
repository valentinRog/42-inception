#!/bin/sh

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld
envsubst < /tools/init.sql > /tools/out.sql
exec /usr/sbin/mysqld --bind-address=0.0.0.0 --init-file /tools/out.sql