#!/bin/bash

TMP=now.jpeg
DIR=/home/pi/Pictures
IMAGE=$(date "+%H%M").jpeg

libcamera-jpeg --hflip --vflip --width 640 --height 480 -o $DIR/$TMP

DATE=$(date "+%H:%M %d/%m/%Y")
convert -pointsize 20 -fill yellow -draw "text 400,460 '$DATE'" $DIR/$TMP $DIR/$IMAGE

echo $DATE >> camera.log
