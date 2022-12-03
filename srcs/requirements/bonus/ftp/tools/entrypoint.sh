#!/bin/sh

if [ ! -f "/etc/vsftpd.userlist" ]; then
	mkdir -p /var/run/vsftpd/empty
	useradd -m $FTP_USER
	echo $FTP_USER > /etc/vsftpd.userlist
	echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd &> /dev/null
	chown -R $FTP_USER:$FTP_USER /var/www/html
fi
exec $@