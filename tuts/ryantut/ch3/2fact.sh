#!/bin/sh
#factorial prog

read -p 'Enter num for factrial: ' mynum

myfact=1
num=$mynum
#while [ $mynum -ge 1 ]
#-or-
#while test $mynum -ge 1
#-or- Preferred
while (($mynum>= 1))
do
    ##Using expr=============
    #shows correct value for 25!
    #myfact=$(expr $myfact \* $mynum)
    #mynum=$(expr $mynum - 1)

    ##-OR-using let=============
    #let myfact=$myfact*$mynum
    ##let mynum="$mynum -   1"
    ##or
    #let mynum--

    ##-OR-using $((arith exression))=====Preferred way
    #not able to show correct value for 25!
    #15! is calculated correctly, or <20! is ok
    myfact=$(($myfact*$mynum))
    #-or-
    #((mynum--))
    #-or-
    mynum=$((mynum-1))
    ##or
    #((mynum -=1))


done
#commifying the result
echo "factorial of $num=$(echo $myfact|sed -E ':x ; s/([0-9]+)([0-9]{3})/\1,\2/; tx')"
