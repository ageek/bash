#!/bin/bash
#triangle check
read -p 'enter a ' a
read -p 'enter b ' b
read -p 'enter c ' c

#uniq by default will count uniq lines so add \n
t=$(echo -e "$a\n$b\n$c\n" |uniq -u|wc -l)

#the following is working
#works for numeric values only
#echo $((1==1?2:99))

#Not working
echo $(($t==1?Equilateral:$(($t==2?echo Isoscele : echo Scelene))))

