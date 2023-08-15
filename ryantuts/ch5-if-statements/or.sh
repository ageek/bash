#!/bin/bash

if [[ $USER=='tom' || $USER=='root' ]]; then 
	echo Either tom or root user found
	ls -lah
else
	echo User not tom or root
	ls 
fi

