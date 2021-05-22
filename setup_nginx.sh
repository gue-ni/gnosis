#!/bin/bash
domain=$1

echo "Setting up nginx for $domain"

sudo -i

mkdir -p /var/log/nginx/$domain/ /var/www/$domain/

echo "<h1>Hello from $domain.</h1>" > /var/www/$domain/index.html

wget https://raw.githubusercontent.com/gue-ni/server/main/example.com.conf -O /etc/nginx/sites-available/$domain.conf

sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf

ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

certbot --nginx -d $domain -d www.$domain

nginx -t && nginx -s reload

