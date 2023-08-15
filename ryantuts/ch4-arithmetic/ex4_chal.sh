#!/bin/bash


#random number betwen $1 and $2

echo Generating Random num between $1 and $2

mynum=$(($RANDOM % $2))

while [[ $mynum -lt $1 ]]; do
	mynum=$(($RANDOM % $2))
done

echo $mynum
