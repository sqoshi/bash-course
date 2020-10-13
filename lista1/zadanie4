#!/usr/bin/bash

echo '-------------------------'
printf "word \npath \t\t line #1 \npath \t\t line #2\n"
echo '-------------------------'  


find "$1" -type f -exec cat {} + | grep -o '[^ ]\+' | sort | uniq | while read line; do
		echo "$line"
		find "$1" -type f -exec grep -w "$line" {} + | while IFS=':' read -r path line; do
			printf "%s \t %s \n" "$path" "$line"
		done
		printf "\n"
done
