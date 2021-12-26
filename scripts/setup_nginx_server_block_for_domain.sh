#!/bin/bash

read -p "Domain?" domain
if [ "$domain" = "" ]; then
  echo "ERROR: domain not set!"
  exit 1
fi

github=https://raw.githubusercontent.com/gue-ni/DevOps/main
https://raw.githubusercontent.com/gue-ni/DevOps/main/configs/example.com.conf

# create directories
mkdir -p /var/log/nginx/$domain/ /var/www/$domain/

# create template website
wget $github/configs/index.html -O /var/www/$domain/index.html
sed -i "s/example.com/$domain/g" /var/www/$domain/index.html

# create nginx conf files
wget $github/configs/example.com.conf -O /etc/nginx/sites-available/$domain.conf
sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf
ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

# optionally add https
read -p "Add TLS? (y/n)?" CONT
if [ "$CONT" = "n" ]; then
  exit 1
fi

certbot --nginx -d $domain -d www.$domain -d api.$domain

nginx -t && nginx -s reload


