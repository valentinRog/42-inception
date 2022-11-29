#!/bin/sh

echo "local_root=/var/www/html/" >> /etc/vsftpd.conf
echo "pasv_min_port=21000" >> /etc/vsftpd.conf
echo "pasv_max_port=21010" >> /etc/vsftpd.conf