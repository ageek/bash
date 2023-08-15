#!/bin/bash

case $1 in 
	start)
		echo Starting...
		;;
	stop)
		echo Stopping...
		;;
	restart)
		echo Restarting...
		;;
	*)
		echo don\'t know...
		;;
esac

