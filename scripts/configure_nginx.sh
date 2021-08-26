domain=$1

mkdir -p /var/log/nginx/$domain/ /var/www/$domain/

wget https://raw.githubusercontent.com/gue-ni/server/main/conf_files/index.html -O /var/www/$domain/index.html

sed -i "s/example.com/$domain/g" /var/www/$domain/index.html

wget https://raw.githubusercontent.com/gue-ni/server/main/conf_files/example.com.conf -O /etc/nginx/sites-available/$domain.conf

sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf

ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/

nginx -t && nginx -s reload

read -p "Add TLS? (y/n)?" CONT
if [ "$CONT" = "n" ]; then
  exit;
fi

certbot --nginx -d $domain -d www.$domain -d api.$domain

nginx -t && nginx -s reload


