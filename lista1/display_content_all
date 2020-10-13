#!/usr/bin/bash
find "$1" -type f -print0 | while IFS= read -r -d '' line; do 
	printf "\n $line\n"
	cat $line
done
