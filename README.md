# DevOps

## NGINX

### Basic setup

```bash
domain=example.com
github=https://raw.githubusercontent.com/gue-ni/server/main

# create directories
mkdir -p /var/log/nginx/$domain/ /var/www/$domain/

# create website
wget $github/configs/index.html -O /var/www/$domain/index.html
sed -i "s/example.com/$domain/g" /var/www/$domain/index.html

# create nginx conf files
wget $github/configs/example.com.conf -O /etc/nginx/sites-available/$domain.conf
sed -i "s/example.com/$domain/g" /etc/nginx/sites-available/$domain.conf

# symlink and reload
ln -s /etc/nginx/sites-available/$domain.conf /etc/nginx/sites-enabled/
nginx -t && nginx -s reload

# optionally add tls
certbot --nginx -d $domain -d www.$domain -d api.$domain
nginx -t && nginx -s reload
```

## Deploy with git post-receive hook

On server:

```bash
# setup
sudo mkdir -p /srv/tmp/
sudo mkdir -p /srv/www/
sudo chgrp -R users /srv
sudo chmod -R g+w /srv

project=example_project
github=https://raw.githubusercontent.com/gue-ni/server/main

# create git repo
sudo mkdir -p /srv/git/$project.git
cd /srv/git/$project.git
sudo git init --bare
cd /srv/git/$project.git
sudo chgrp -R users .
sudo chmod -R g+rwX .
sudo find . -type d -exec chmod g+s '{}' +
sudo git config core.sharedRepository group

# create post-receive hook
cd /srv/git/$project.git/hooks
wget $github/scripts/post-receive -O /srv/git/$project.git/hooks/post-receive
sed -i "s/project/$project/g" /srv/git/$project.git/hooks/post-receive
sudo chmod +x post-receive
```

On local machine:

```bash
project=example_project
git remote add deploy ssh://pi@jakobmaier.at/srv/git/$project.git/
git push deploy master
```
