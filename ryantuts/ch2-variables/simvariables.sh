#!/bin/bash

myvar=Hello

anothervar="Paul Blum"

echo $myvar $anothervar

echo 

sampledir=/tmp

echo $sampledir

#ls $sampledir

fileCount=$( ls ~/| wc -l )

echo file count in homedir: $fileCount
