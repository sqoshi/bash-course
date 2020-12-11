#!/usr/bin/bash
revision_from=$1
revision_to=$2
repository=$3
svn export -q --force -r $revision_from $repository 2>/dev/null
target_directory=$(ls -td -- */ | head -n 1)
inited=0
RED='\033[0;32m'
NC='\033[0m'

while (( "$revision_from" <= "$revision_to" ))
do
        svn export -q --force -r $revision_from $repository $target_directory
	txt=$(svn log -v -r $revision_from $repository)
	echo -e "${RED}""$txt""${NC}" | sed 's/-//g'
        cd $target_directory
	revision_prev=$(( $revision_from -1 ))
        if [[ "$inited" = 0  ]] ; then
                git init --quiet
        	inited=1
		git add *
		git commit --quiet -m "$txt"
	fi

	changes=$(svn diff --summarize -r$revision_prev:$revision_from $repository)
	IFS=$'\n'
	for line in $changes
	do
		action=$(echo $line | awk '{print $1}')
		file=$(echo $line | awk '{print $2}')
		file=$(echo "${file/$repository/}")
		if [[ "$file" == "${repository::len-1}" ]] ; then
			git add *
		elif [[ "$action" == "A"  ]] ; then
			git add $file
                elif [[ "$action" == "M"  ]] ; then
                        git add $file
                elif [[ "$action" == "D"  ]] ; then
			git rm --quiet -r $file 2>/dev/null
                	rm -f -r $file 2>/dev/null
		fi

	done
	git commit --quiet -m "$txt"
        cd ..
	revision_from=$(( $revision_from + 1 ))
done
