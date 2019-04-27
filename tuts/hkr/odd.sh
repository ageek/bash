#!/usr/bin/env sh
#print odd numbers between a & B

read -p 'Enter startng num ' a
read -p 'Enter ending num  ' b

for((i=a;i<=b;i++))
do
    (($i % 2!=0)) && echo $i
done
