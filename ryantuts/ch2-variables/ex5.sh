#!/bin/bash

#Q: create a script which will take a filename as its first argument and create a dated copy of the file. eg. if our file was named file1.txt it would create a copy such as 2023-08-04_file1.txt

fileName=$1

echo File=$fileName

dateStamp=$(/usr/bin/date +"%Y-%m-%d")

echo Stamp=$dateStamp

newName=$dateStamp_$fileName

#using . works fine but _ throws error
cp $fileName "$dateStamp.$fileName"

