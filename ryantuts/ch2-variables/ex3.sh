#!/bin/bash 

#Q: print random word of give size from /usr/share/dict/words


max=$(cat /usr/share/dict/words | wc -l)

echo Dict size=$max

#get word length input from user
wordSize=$1
echo Max word lengthhhh=$wordSize

#total words of size=wordSize ?
tot=$(cat /usr/share/dict/words|grep -e "^.\{$wordSize\}$"|wc -l)
echo Total words of length=$wordSize is $tot

#use modulus to ensure we always print a random word
rand=$(($RANDOM%$tot))

echo Mod% Random num=$rand

#in sed, use double quotes and {} for variable expansion 
#filter out words of hhsize=wordSize only

#cat /usr/share/dict/words |grep -e "^.\{$wordSize\}$"| sed "${rand}p;d"

#or simpley using length in awk 
cat /usr/share/dict/words |awk "length==$wordSize"| sed "${rand}p;d"
