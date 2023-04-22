#!/bin/bash
# https://lowendbox.com/blog/automating-mysql_secure_installation-in-mariadb-setup/
#
# -s silent
# -f keep going if there’s an error
# -u use the following account, which in this case is root
#
# Also be sure to change the “complex_password” below to a good, secure password.

mysql -sfu root <<EOS
-- set root password
UPDATE mysql.user SET Password=PASSWORD('complex_password') WHERE User='root';
-- delete anonymous users
DELETE FROM mysql.user WHERE User='';
-- delete remote root capabilities
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
-- drop database 'test'
DROP DATABASE IF EXISTS test;
-- also make sure there are lingering permissions to it
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
-- make changes immediately
FLUSH PRIVILEGES;
EOS
