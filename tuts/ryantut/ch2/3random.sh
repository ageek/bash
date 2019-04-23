#!/bin/sh
#pick random word from given file
echo enter file name
read myfile
echo enter word length to pick
read mylen
#total words in myfile
tot=$(wc -w < $myfile)
echo total words in $myfile is $tot
while true
do
    myrand=$((RANDOM % tot))
    #echo $myrand
    #flatten the input file
    myword=$(echo $(cat $myfile) |awk -v r=$(($myrand+1)) '{print $r}')
    #echo $myword is of len=${#myword}

    if [[ $mylen == ${#myword} ]] ; then
        break;
    else
        continue;
    fi
done
echo rand word is $myword

