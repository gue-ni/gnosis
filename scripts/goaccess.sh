#!/bin/bash

EXCLUDE_IP=84.113.83.137

cd /var/log/nginx/

gzip -d access.*.log.gz

cat access.log | /usr/bin/goaccess - \
    --ignore-crawlers \
    --agent-list \
    --exclude-ip=$EXCLUDE_IP \
    --log-format='%v %h - %^ [%d:%t %^] "%m %U" %s %b "%R" "%u"' \
    --date-format=%d/%b/%Y \
    --time-format=%H:%M:%S \
    -o /var/www/private/goaccess/index.html 

gzip access.*.log

