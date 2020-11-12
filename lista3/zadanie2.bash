#!/usr/bin/bash

content="$(svn list -r "$1" -R "$2" | grep -v '\/$' | while read line; do
        svn cat -r "$1" "$2""/"$line 
done )"

echo '-------------------------'
printf "occurences \t word \n"
echo '-------------------------'

echo "$content" | tr '[:space:]' '[\n*]' | sort | uniq | while read word; do
	if [ "$word" != "" ] ; then
		printf "$(echo "$content" | grep -ow "$word" | wc -l) \t \t $word \n"
	fi
done

