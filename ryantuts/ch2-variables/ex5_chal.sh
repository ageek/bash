#!/bin/bash

#Q: create a script which will take a filename as its first argument and create a dated copy of the file. eg. if our file was named file1.txt it would create a copy such as file_2023-08-04.txt

fileName=$1

echo File=$fileName

#save file ext
ext=$(echo $fileName|cut -f2 -d.)

fileBaseName=$(basename $fileName .$ext)

echo Base=$fileBaseName

echo Ext=$ext

dateStamp=$(/usr/bin/date +"%Y-%m-%d")

echo Stamp=$dateStamp

newName=$dateStamp_$fileName

#using . works fine but _ throws error
cp $fileName "$fileBaseName-$dateStamp.$ext"

