#!/usr/bin/bash
#find "$1" -type f -exec cat {} +
find "$1" -type f | while read -r line; do
	tr 'a' 'A' <"$line"> /tmp/temp_translated
	cat /tmp/temp_translated > "$line"
done

#echo '----------------------------------'
#find "$1" -type f -exec cat {} +
