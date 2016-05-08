#!/bin/sh

echo Setting up Nginx virtual host
rm /etc/nginx/sites-available/default
cp /init/default-virtual-host /etc/nginx/sites-available/default

echo Setting up Nginx permissions
chown -R www-data:www-data /var/www
