#!/bin/bash
if [[ "${UID}" -ne 0 ]]
then
	echo "User Must a SuperUser" >&2
	exit 1
fi
##is used to get update 
	sudo apt-get update -y 
##is used to install apache2 services
	sudo apt-get install apache2 apache2-doc apache2-npm-prefrok apache2-utils liberxpat1 ss1-cert -y 
##is used to install php services
	sudo apt-get install php libapache2-mod-php php-mysql -y 
## is used to install mysql services
	sudo apt-get install mysql-server -y
## is used to install phpMYadim 
sudo apt-get install phpMyAdmin -y
##is used to redirect the file into /apache2.conf
echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2.conf
sudo chown -R www-data:www-data /var/www
sudo service apache2 restart
