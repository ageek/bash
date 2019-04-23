#!/usr/bin/env sh
#playing with if conditional
#if check

read -p 'Enter num: ' num

#if test $num -ge 1000
#-or-
#if [ $num -ge 1000 ]
#-or-
#if [[ $num -ge 1000 ]]
#-or- Preferred
if (( $num >=1000))
then
    echo $num greater than 1000
    #the preferred way
    if (($num%2==0 ))

    #The following silently passes but is WRONG
    # as = does string comparison not integer based comparison
    #if [ $num%2=0 ]
    #-or-
    #if test $num%2=0
    #-or-
    then
        echo $num is even
    fi
else
    echo $num is smaller than 1000
fi



