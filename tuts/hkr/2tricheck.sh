#!/bin/bash
#triangle check
read -p 'enter a ' a
read -p 'enter b ' b
read -p 'enter c ' c

#uniq by default will count uniq lines so add \n
t=$(echo -e "$a\n$b\n$c\n" |uniq -u|wc -l)
if (($t==1)); then
    echo Equilateral
elif (($t==2)); then
    echo Isosceles
else
    echo Scalene
fi
