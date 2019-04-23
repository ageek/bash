#!/bin/sh
#add datestamp to file name
echo enter file name to datestamp
read myfile

cp $myfile $(date +%Y_%m_%d)_$myfile
if [[ $? == 0 ]]; then
    echo Successfully datestamped $myfile
else
    echo datetimed failed
fi

