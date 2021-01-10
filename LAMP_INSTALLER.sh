#!/bin/bash
if [[ "${UID}" -ne 0 ]]
then
	echo "User Must a SuperUser" >&2
	exit 1
fi

sudo apt-get update -y
sudo apt-get install apache2 apache2-doc apache2-npm-prefrok apache2-utils liberxpat1 ss1-cert -y
sudo apt-get install php libapache2-mod-php php-mysql -y
sudo apt-get install mysql-server -y
sudo apt-get install phpMyAdmin -y
echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2.conf
sudo chown -R www-data:www-data /var/www
sudo service apache2 restart
