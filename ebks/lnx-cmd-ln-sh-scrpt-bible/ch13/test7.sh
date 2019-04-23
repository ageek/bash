#!/bin/bash
# iterating through multiple directories
for file in ~/.b* /home/rich/badtest
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
else
echo "$file doesn't exist"
fi
done
