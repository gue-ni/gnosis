#!/bin/bash

INCLUDE=include.txt
EXCLUDE=exclude.txt

if [ -z $INCLUDE ]; then
    echo "ERROR: please give include file"
    exit 1 
fi

if [ -z $EXCLUDE ]; then
    echo "ERROR: please give exclude file"
    exit 1 
fi

PI1=pi1
TARGET=/media/pi/KINGSTON1/VivoBook/

HOST=$PI1
SERVER=$HOST:$TARGET

OPTIONS="-rtDviR --delete --modify-window=2 --exclude-from=$EXCLUDE --max-size=100MB"

LOGDIR=~/logs
LOGFILE=$LOGDIR/backup_$(date "+%F-%H%M").log
mkdir -p $LOGDIR

while read SRC;
do
    echo "###############################################################" | tee -a $LOGFILE
    echo $SRC: | tee -a $LOGFILE
    rsync $OPTIONS $SRC $SERVER | tee -a $LOGFILE
done < $INCLUDE
