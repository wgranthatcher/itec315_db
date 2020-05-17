#!/bin/bash

#database: $1
#user: $2
#pass: $3

#DATA=$(echo \"CREATE DATABASE $1\;\")
#USER=$(echo \"CREATE USER \'$2\'@\'%\' IDENTIFIED BY \'$3\'\;\")
#PRIV=$(echo \"GRANT ALL PRIVILEGES ON \'$1\'.\* TO \'$2\'@\'%\'\; FLUSH PRIVILEGES\;\")

echo "CREATE DATABASE $1;" > tmp.sql
echo "CREATE USER '$2'@'%' IDENTIFIED BY '$3';" >> tmp.sql
echo "GRANT ALL PRIVILEGES ON $1.* TO '$2'@'%'; FLUSH PRIVILEGES;" >> tmp.sql

cat tmp.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD < tmp.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Setup.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_1-3.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_4.sql  
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_5-8.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_9-10a.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_10b.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_10c.sql
mysql -h itec315_db -u root -p$MYSQL_ROOT_PASSWORD -D $1 < Chinook_DB_Insert_10d.sql
