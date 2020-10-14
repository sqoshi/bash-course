#!/usr/bin/bash
echo '-------------------------'
printf "file \t\t word \nmatched line #1 \nmatched line #2\n"
echo '-------------------------'  
./cartes_prod "$1" | while IFS=':~!:::!!!:' read path str; do
	search=$(grep -w "\b$str\b.*\b$str\b" $path )
	if [ -n "$search"  ]; then
		printf "%s \t %s \n" $path $str
		grep -w "\b$str\b.*\b$str\b" $path
		printf "\n"
	fi
done
