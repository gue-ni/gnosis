# server

## basic nginx setup

```
touch /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo nginx -s reload
```
