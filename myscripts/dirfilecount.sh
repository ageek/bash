#!/usr/bin/env bash 
#count files in dirs

count=0
#echo $count
IFSold=$IFS
IFS=$'\n'
for dir in $(echo $PATH|sed 's/:/\n/g')
do
	#echo "$dir"
	for item in $(ls $dir)
	do 
		count=$[ $count + 1 ]
	done
	echo "$dir has $count files "
	count=0
done
IFS=$IFSold


