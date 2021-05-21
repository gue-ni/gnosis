# server

## basic nginx setup

```
domain=example.com

sudo -i

touch /etc/nginx/sites-available/$domain.conf

mkdir -p /var/log/nginx/$domain

mkdir -p /var/www/$domain

echo $domain > /var/www/$domain/index.html

ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

certbot --nginx -d $domain -d www.$domain
```
