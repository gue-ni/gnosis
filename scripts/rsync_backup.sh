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
OPTIONS="-aviR --exclude-from=$EXCLUDE --max-size=100M --modify-window=2 --no-perms --no-owner --no-group --delete"

LOGDIR=~/logs
LOGFILE=$LOGDIR/$(date "+%A").log
mkdir -p $LOGDIR

while read SRC;
do
    echo "############################# $(date) ################################" | tee -a $LOGFILE
    echo $SRC: | tee -a $LOGFILE
    rsync $OPTIONS $SRC $SERVER | tee -a $LOGFILE
done < $INCLUDE
