#!/bin/bash

drive_a=/home/pi/backup
drive_b=/media/pi/USB/backup
drive_c=/media/pi/KINGSTON/backup

DRIVE=$drive_b
OPTIONS="-rtD --verbose --itemize-changes --modify-window=2"
SRC=.
LOGFILE=backup.log

mkdir -p $DRIVE
df -H $DRIVE

function log(){
    echo "$(date) backing up $SRC to $DRIVE..., exit code $?" >> $LOGFILE
}

SRC=/srv
rsync $OPTIONS \
    --exclude='tmp/' \
    --exclude='git/' \
    --exclude='.git/' \
    --exclude='node_modules/' \
    $SRC $DRIVE
log

SRC=/var/www
rsync $OPTIONS $SRC $DRIVE
log

SRC=/var/log/nginx
rsync $OPTIONS $SRC $DRIVE
log

SRC=/var/lib/docker/volumes
rsync $OPTIONS $SRC $DRIVE
log
