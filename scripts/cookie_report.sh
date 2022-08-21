#!/bin/bash

LOG=/var/log/nginx
TMP=tmp_cookies

zcat -f $LOG/access.*.log.gz $LOG/access.*.log $LOG/access.log 2>/dev/null | \
    grep -h -E '/(accept|reject)-cookies' | \
    awk '{ print $5, $6, $2, $8 }' > $TMP


echo "$(cat $TMP)
accept: $(grep 'accept' $TMP | wc -l), reject: $(grep 'reject' $TMP | wc -l)
$(date)
"

rm -f $TMP



