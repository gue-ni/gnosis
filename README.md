# server

## basic nginx setup

```
domain=example.com

mkdir -p /var/log/nginx/$domain/ /var/www/$domain/

wget https://raw.githubusercontent.com/gue-ni/server/main/conf_files/index.html -O /var/www/$domain/index.html

sed -i "s/example.com/$domain/g" /var/www/$domain/index.html

wget https://raw.githubusercontent.com/gue-ni/server/main/conf_files/example.com.conf -O /etc/nginx/sites-available/$domain.conf

sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf

ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

certbot --nginx -d $domain -d *.$domain

nginx -t && nginx -s reload

```

## docker

`docker build . -t jakob/web-service`

`docker run -dp 5001:5001 jakob/web-service`

`docker exec -t -i <container id> /bin/bash`

`docker-compose up -d`

`/var/lib/docker/volumes/`

`docker volume create todo-db`




