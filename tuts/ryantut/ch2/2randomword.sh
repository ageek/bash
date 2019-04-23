#!/bin/bash
#display random word of given size from file provided by user

echo enter file name
read myfile

echo "enter word length"
read wlen

#wordc=$(wc -l $myfile|cut -d' ' -f1)
#easy way
wordc=$(wc -l < $myfile)
echo "total words in $myfile=$wordc"
#randn=$((RANDOM % wordc))

#echo "randn for word=$randn"
echo searching for word of length $wlen
while true
do
    randn=$((RANDOM % wordc))
    #pick a random word and check its length
    #to avoind awk print full line as print $0, add +1, tahts where the index starts actually
    word=$(cat $myfile | tr "\n" " "|awk -v r=$(($randn+1)) '{print $r}')

    #check word len
    len=${#word}
    #echo "found $word of length=$len"
    if [ $len -eq $wlen ]; then
        break;
    else
        continue;
    fi
done

echo "rand word = $word"

