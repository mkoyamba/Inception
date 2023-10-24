#!/bin/bash

chown -R mysql:mysql /var/lib/mysql

cat << EOF > createdb.sql
USE mysql;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';

CREATE DATABASE ${MYSQL_NAME} CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED by '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON ${MYSQL_NAME}.* TO '${MYSQL_USER}'@'%';


FLUSH PRIVILEGES;
EOF

mysqld --bootstrap --datadir=/var/lib/mysql --user=mysql < createdb.sql

rm createdb.sql

mysqld_safe