#!/bin/sh


# used with wl_wall, to save loved current wallpaper to picture dir
SAVE_DIR="$HOME/public/picture/background/"
CURRENT=$(ls $SAVE_DIR |sort -n |tail -n1 |cut -d '.' -f1)
SAVE_NUM=$(expr $(($CURRENT + 1)))

tmp_file=$(ls -rt /tmp/tmp.* |tail -n1)

url=$(tail -n1 $tmp_file |jq -r '.raw')

file_type=$(tail -n1 $tmp_file |jq -r '.full' |tr '&' '\n' |sed -n '/fm=/p' |cut -d '=' -f2)
img_name=$SAVE_NUM.$file_type

wget -q  $url -O $SAVE_DIR/$img_name || exit

notify-send "current image $img_name saved to $SAVE_DIR/$img_name"
