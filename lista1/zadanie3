#!/usr/bin/bash

echo '-------------------------'
printf " word \t quantity of files \n"
echo '-------------------------'  


find "$1" -type f -exec cat {} +| sort | while read line; do
	for word in $line; do
		printf "%s \t " "$word"
		find "$1" -type f -exec grep  -wo "$word" {} + |  sort | uniq | wc -l
	done
done | sort | uniq
