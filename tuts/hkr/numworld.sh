#!/bin/bash
#basic operations
while true
do
    read -p 'enter num 1 ' a
    if (( a >= -100 && a <= 100))
    then
        break
    fi
done

while true
do
    read -p 'enter num 2 ' b
    if (( b >= -100 && b <= 100 && b!=0 ))
    then
        break
    fi
done

echo " $a + $b = $(($a + $b))"
echo " $a - $b = $(($a - $b))"
echo " $a * $b = $(($a * $b))"
echo " $a / $b = $(($a / $b))"
