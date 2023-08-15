#!/bin/bash

#https://www.pluralsight.com/resources/blog/cloud/conditions-in-bash-scripting-if-statements
read -p 'Enter number: ' num

if [ $num -gt 100 ]
then 
	echo $num greater than 100
	#if [ $num%2 -eq 0 ]
	if [[ $num%2 -eq 0 ]]
	then 
		echo $num is even 
	else 
		echo $num is odd
	fi

else 
	echo $num less than 100
fi

date
