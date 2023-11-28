#!/bin/bash

# read file with target date (e.g., Mar 18 2021)


FILE=~/.countdown
if [ -f "$FILE" ]; then
    target_date=`cat $FILE | cut -d ":" -f 1`
    target_name=`cat $FILE | cut -d ":" -f 2`

    today=`echo $(($(date --utc --date "$1" +%s)/86400))`
    target=`echo $(($(date --utc --date "$target_date" +%s)/86400))`
    days=`expr $target - $today`
    echo "$days dias para $target_name"
fi
