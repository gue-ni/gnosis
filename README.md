# server

## basic nginx setup

```
domain=example.com

sudo touch /etc/nginx/sites-available/$domain.conf

sudo mkdir -p /var/log/nginx/$domain;

sudo ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

sudo nginx -t

sudo nginx -s reload
```
