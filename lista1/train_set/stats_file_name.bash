#!/usr/bin/bash

path=$1
bash ex1_names.bash $1| sort | uniq | while IFS= read -r line; do
	  printf "Word %s occured " "$line"
	  grep -wc "$line" <(bash ex1_names.bash $path)
done
