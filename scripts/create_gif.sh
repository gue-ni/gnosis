#!/bin/bash

DAY=$(date +%A)
DAY=${DAY@L}
GIF=~/Videos/$DAY.gif
cd ~/Pictures
ffmpeg -y -framerate 30 -pattern_type glob -i '*.jpeg' -r 15 -vf scale=640:-1 $GIF
scp $GIF jakob@jakobmaier.at:/var/www/private/videos
