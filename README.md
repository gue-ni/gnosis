# server

## basic nginx setup

```
touch /etc/nginx/sites-available/example.com

mkdir -p /var/log/nginx/bezirksli.ga;

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo nginx -s reload
```
