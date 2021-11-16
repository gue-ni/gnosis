#!/bin/bash

read -p "Domain?" domain
if [ "$domain" = "" ]; then
  echo "ERROR: domain not set!"
  exit 1
fi

github=https://raw.githubusercontent.com/gue-ni/DevOps/main

mkdir -p /var/log/nginx/$domain/ /var/www/$domain/
wget $github/conf/index.html -O /var/www/$domain/index.html
sed -i "s/example.com/$domain/g" /var/www/$domain/index.html
wget $github/conf/example.com.conf -O /etc/nginx/sites-available/$domain.conf
sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf
ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

read -p "Add TLS? (y/n)?" CONT
if [ "$CONT" = "n" ]; then
  exit 1
fi

certbot --nginx -d $domain -d www.$domain -d api.$domain

nginx -t && nginx -s reload


