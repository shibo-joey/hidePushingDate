#!/bin/sh

while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 14:00 2020 +0500"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="shibo-joey" -m "$fileName"
done <dates.txt