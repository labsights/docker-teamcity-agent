#!/usr/bin/env bash

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

curl -sL https://deb.nodesource.com/setup_6.x | bash -
#apt-get install -y nodejs  php5 php5-cli php5-curl php5-mysql php5-gd php5-intl php5-imagick php5-imap php5-mcrypt php5-memcache php5-ps php5-pspell php5-recode php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-xcache php-pear gettext-base zip
apt-get install -y nodejs gettext-base zip

chmod +X /usr/local/bin/rancher-compose
