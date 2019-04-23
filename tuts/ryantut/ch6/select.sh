#!/bin/bash

# select menu command

mylist='AA BB CC DD FF TT SS quit'
#change prompt string
PS3="Your choice pls:"

select my in $mylist
do
    if [[ $my == 'quit' ]]
    then
        echo 'quitting'
        break
    else
        echo Hello $my
    fi
done

echo bye

