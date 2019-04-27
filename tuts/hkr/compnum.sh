#!/bin/bash
#compare two nums
read -p 'enter num 1 ' a
read -p 'enter num 2 ' b

if (( $a < $b )) ; then
    echo $a is less than $b
elif (( $a > $b)); then
    echo $a is greater than $b
elif (( $a == $b )); then
    echo $a is equal to $b
fi
