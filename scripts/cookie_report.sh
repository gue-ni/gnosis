#!/bin/bash

LOG=/var/log/nginx
TMP=tmp_cookies

zcat -f $LOG/access.log $LOG/access.*.log $LOG/access.*.log.gz | \
    grep -h -E '/(accept|reject)-cookies' | \
    awk '{ print $5 $6, $2, $8 }' > $TMP

cat $TMP
echo "accept: $(grep 'accept' $TMP | wc -l), reject: $(grep 'reject' $TMP | wc -l)"

rm -f $TMP



