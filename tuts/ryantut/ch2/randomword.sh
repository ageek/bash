#!/bin/bash
#display random word from file

echo enter file name
read myfile

#wordc=$(wc -l $myfile|cut -d' ' -f1)
#easy way
wordc=$(wc -l < $myfile)
echo "total words in $myfile=$wordc"
randn=$((RANDOM % wordc))

echo "randn for word=$randn"

#to avoind awk print full line as print $0, add +1, tahts where the index starts actually
word=$(cat $myfile | tr "\n" " "|awk -v r=$(($randn+1)) '{print $r}')
echo "rand word = $word"

