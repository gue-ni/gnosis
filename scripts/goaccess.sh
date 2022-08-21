#!/bin/bash

EXCLUDE_IP=84.113.83.137
WWW=/var/www/private/goaccess

cd /var/log/nginx/

zcat -f access.*.log.gz access.*.log access.log 2>/dev/null | /usr/bin/goaccess - \
    --ignore-crawlers \
    --agent-list \
    --exclude-ip=$EXCLUDE_IP \
    --log-format='%v %h - %^ [%d:%t %^] "%m %U" %s %b "%R" "%u"' \
    --date-format=%d/%b/%Y \
    --time-format=%H:%M:%S \
    -o $WWW/index.html 

