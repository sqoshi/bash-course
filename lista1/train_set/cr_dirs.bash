#!/usr/bin/bash
max="$1";
pfx="dir"
cd $2
for ((i=1;i<=max;i++)); do
	mkdir dir$i
done
