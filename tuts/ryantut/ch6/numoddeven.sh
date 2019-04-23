#!/bin/bash

read -p "Enter num " mynum
#echo You entered $mynum
#doesnot work with variables
#https://stackoverflow.com/questions/169511/how-do-i-iterate-over-a-range-of-numbers-defined-by-variables-in-bash
#for ii in {1..$mynum}
#better to use for(()) as in C
#or
for ii in $(seq 1 $mynum)
do
#    echo $ii
    case $(($ii%2)) in
        0) echo $ii is even;;
        1) echo $ii is odd;;
        *) echo unknown;;
    esac
done
