#!/usr/bin/bash

find "$1" -type f -print0 | while IFS= read -r -d '' file; do
	for word in $(find "$1" -type f -exec cat {} + | grep -o '[^ ]\+' | sort | uniq); do 
			echo "$file:$word"
	done
done
