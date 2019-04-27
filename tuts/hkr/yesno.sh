#!/bin/bash
#yes/no check
#read -p 'Enter command ' a
#echo $a
read a
#use regex match

if [[ $a =~ [yY] ]]; then
    echo YES
elif [[ $a =~ [nN] ]]; then
    echo NO
fi

