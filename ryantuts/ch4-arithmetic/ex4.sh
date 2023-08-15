#!/bin/bash


#random number betwen 0 and $1

echo Generating Random num between 0 and $1
myrand=$RANDOM

mynum=$(($RANDOM % $1))

echo $mynum
