#!/usr/bin/bash

files="$(svn list -r "$1" -R "$2" | grep -v '\/$')"
words="$( echo "$files" | while read line; do
        svn cat -r "$1" "$2""/"$line 
done | tr '[:space:]' '[\n*]' | sort | uniq )"


echo '-------------------------'
printf " word \t files number \n"
echo '-------------------------'

echo "$words" | while read word; do
	if [ "$word" != "" ] ; then
		printf "$word \t "
		echo "$files" | while read file; do 
			occ_in_file="$(svn cat -r "$1" "$2""/"$file | grep -wo "$word" | wc -l)"
			if [ "$occ_in_file" != 0 ] ; then
				echo $occ_in_file
			fi
		done | wc -l
	fi
done

