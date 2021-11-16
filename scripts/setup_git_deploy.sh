#!/bin/bash

github=https://raw.githubusercontent.com/gue-ni/DevOps/main

read -p "Project name?" project
if [ "$project" = "" ]; then
  echo "ERROR: project not set!"
  exit 1
fi

echo "Setting up project:" $project

mkdir -p /srv/tmp/
mkdir -p /srv/www/
chgrp -R www-data /srv
chmod -R g+w /srv

mkdir -p /srv/git/$project.git
cd /srv/git/$project.git
git init --bare
cd /srv/git/$project.git
chgrp -R www-data .
chmod -R g+rwX .
find . -type d -exec chmod g+s '{}' +
git config core.sharedRepository group

cd /srv/git/$project.git/hooks
wget $github/scripts/post-receive -O /srv/git/$project.git/hooks/post-receive
sed -i "s/project/$project/g" /srv/git/$project.git/hooks/post-receive
sudo chmod +x post-receive

echo "git repo in:" "/srv/git/$project.git/"
