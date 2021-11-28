#!/bin/bash

PI1=pi1
TARGET=/media/pi/KINGSTON1/VivoBook/

HOST=$PI1
SERVER=$HOST:$TARGET

OPTIONS="-rtDviR --delete --modify-window=2 --exclude-from=exclude.txt --max-size=100MB"

LOGDIR=~/logs
LOGFILE=$LOGDIR/backup_$(date "+%F-%H%M").log

mkdir -p $LOGDIR

while read SRC;
do
    echo "###############################################################" | tee -a $LOGFILE
    echo $SRC: | tee -a $LOGFILE
    rsync $OPTIONS $SRC $SERVER | tee -a $LOGFILE
done < include.txt
