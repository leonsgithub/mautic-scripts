#!/bin/bash
# 
MT_DIR=/var/www/mautic;

# clean up 
rm $MT_DIR/composer.json
rm $MT_DIR/composer.lock
rm $MT_DIR/vendors -rf
rm $MT_DIR/app/cache/* -rf

# download and install via composer
cd  $MT_DIR
wget https://raw.githubusercontent.com/mautic/mautic/2.13.1/composer.json

composer install
chown -R www-data:www-data $MT_DIR



