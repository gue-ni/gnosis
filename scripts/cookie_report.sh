#!/bin/bash

cat /var/log/nginx/access.log | \
    grep -h -E '/(accept|reject)-cookies' | \
    awk '{ print $5 $6, $2, $8 }'



