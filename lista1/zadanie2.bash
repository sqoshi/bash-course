#!/usr/bin/bash
echo '-------------------------'
printf "\t occurence frequency word \n"
echo '-------------------------'  

cd $1 && find -type f -exec awk 1 {} \; | tr ' ' '\n' | grep . | sort | uniq -c
