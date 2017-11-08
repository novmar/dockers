#!/bin/sh

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld
mysql_install_db --user=mysql > /dev/null

cat << EOF > /tmp/createdb 
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'mojeheslo' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'mojeheslo' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
/usr/bin/mysqld --user=mysql --verbose=0 --bootstrap < /tmp/createdb
/usr/bin/mysqld --user=mysql --console

