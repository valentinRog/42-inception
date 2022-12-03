mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes\
        -out /etc/nginx/ssl/vrogiste.pem\
        -keyout /etc/nginx/ssl/vrogiste.key\
        -subj "/C=BE/ST=Bruxelles/L=Bruxelles/O=42 School/OU=vrogiste/CN=vrogiste/"