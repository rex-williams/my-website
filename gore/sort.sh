#!/bin/sh
while : ; do
    num=0
    ls *.img | sort > /tmp/file.list
    while read -r infile; do
        export num="$(echo "$num+1" | bc)"
        test -f "$num.img" || mv "$infile" "$num.img"
    done</tmp/file.list
done
