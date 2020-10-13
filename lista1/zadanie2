#!/usr/bin/bash
echo '-------------------------'
printf "word \t occurence frequency \n"
echo '-------------------------'  

find "$1" -type f -exec cat {} +| sort | while read line; do
	for word in $line; do
		printf "%s \t " "$word"
		grep -wc "$word" <(find "$1" -type f -exec cat {} +)
	done
done | sort | uniq 
