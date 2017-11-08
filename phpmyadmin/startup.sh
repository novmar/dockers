#!/bin/sh
sed -i -e 's/#   include "mod_fastcgi.conf"/include "mod_fastcgi.conf"/' /etc/lighttpd/lighttpd.conf
sed -i -e 's/\/usr\/bin\/php-cgi/\/usr\/bin\/php-cgi5/'  /etc/lighttpd/mod_fastcgi.conf

mkdir /run/lighttpd
chown lighttpd /run/lighttpd

ln -s /webapps/phpMyAdmin/ /var/www/localhost/htdocs/phpmyadmin
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf

