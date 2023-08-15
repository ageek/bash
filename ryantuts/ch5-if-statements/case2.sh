#!/bin/bash

#uncomment below and comment the RANDOM one
#space_free=$(df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//')

#below is to test the overall script
space_free=$(($RANDOM%99))
echo Free Space is $space_free

case $space_free in 
	[1-5])
		echo Plenty of disk space available
		echo its lt 6
		;;

	[1-5]*)
		echo Ok.......
		echo its 6-59%
		;;
	[6-7]*)
		echo There could be a prob in near future
		echo its 6-79%
		;;
	8*)
		echo Start clearing out disk 
		echo its 80-89%
		;;
	9*)
		echo Disk may fill up anytime, start clearing 
		echo its 90-99%
		;;
	*)
		echo Weird
		;;
esac

		
