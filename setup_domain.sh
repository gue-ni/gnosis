#!/bin/bash
domain=$1

echo $domain

sudo -i

mkdir -p /var/log/nginx/$domain
mkdir -p /var/www/$domain
echo $domain > /var/www/$domain/index.html

touch /etc/nginx/sites-available/$domain.conf
ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/
nginx -t
nginx -s reload
