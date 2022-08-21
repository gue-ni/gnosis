#!/bin/bash

INCLUDE=$1
EXCLUDE=$2
SERVER=$3

USAGE="${0} <include file> <exclude file> <host>:<backup directory>"

if [ -z $INCLUDE ] || [ -z $EXCLUDE ] || [ -z $SERVER ]; then
    echo $USAGE
    exit 1 
fi

#OPTIONS="-rtDviR --delete --modify-window=2 --exclude-from=$EXCLUDE --max-size=100MB"
OPTIONS="

LOGDIR=/var/log/rsync_backup
LOGFILE=$LOGDIR/$(date "+%A").log
mkdir -p $LOGDIR

echo "############################# $(date) ################################" | tee -a $LOGFILE
while read SRC;
do
    echo ""
    echo $SRC: | tee -a $LOGFILE
    rsync \
        -aviR \
        --exclude-from=$EXCLUDE \
        --max-size=100M \
        --modify-window=2 \
        --no-perms \
        --no-owner \ 
        --no-group \
        --delete \
        --filter=':- .gitignore' \
        $SRC $SERVER | tee -a $LOGFILE

done < $INCLUDE
