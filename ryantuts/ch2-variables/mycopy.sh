#!/bin/bash

#copy file
cp $1 $2 

echo Details for $2

ls -lh $2


echo this script name : $0
echo arg1: $1
echo arg2: $2
echo Arg count: $#
echo all arguments: $@
echo User running this script: $USER
echo Machine hostname: $HOSTNAME
echo The number of seconds since the script was started: $SECONDS
echo Returns a different random number each time: $RANDOM
echo Returns the current line number in the Bash script: $LINENO
