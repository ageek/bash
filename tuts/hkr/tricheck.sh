#!/bin/bash
#triangle check
read -p 'enter side a ' a
read -p 'enter side b ' b
read -p 'enter side c ' c

if (($a==$b && $b==$c)); then
    echo Equilateral
elif (($a==$b  || $a==$c || $b==$c)); then
    echo Isosceles
elif (($a!=$b && $a!=$c)); then
    echo Scalene
fi

