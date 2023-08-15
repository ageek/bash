#!/bin/bash

read -p 'Enter number: ' num

if [ $num -gt 100 ]
then 
	echo $num greater than 100
else 
	echo $num less than 100
fi

date
