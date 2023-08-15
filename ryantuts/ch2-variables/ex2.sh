#!/bin/bash 

#Q: print random word from /usr/share/dict/words

#we can add logic to ensure $RANDOM is <= dict-size

max=$(cat /usr/share/dict/words | wc -l)

echo Total words=$max

#on cli: 
#cat /usr/share/dict/words|sed '2009p;d'

rand=$RANDOM

echo Random num=$rand

#in sed, use double quotes and {} for variable expansion 

cat /usr/share/dict/words |sed "${rand}p;d"
