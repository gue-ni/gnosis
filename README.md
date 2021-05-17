# server

## basic nginx setup

```
sudo touch /etc/nginx/sites-available/example.com

sudo mkdir -p /var/www/example.com;
sudo mkdir -p /var/log/nginx/example.com;

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo nginx -s reload
```
