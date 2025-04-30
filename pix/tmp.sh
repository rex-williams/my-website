#!/bin/sh
file="$1"
ext="${file##*.}"
mv "$file" "$(pwgen | cut -d' ' -f1).$ext"
