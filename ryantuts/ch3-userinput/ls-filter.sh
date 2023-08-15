#!/bin/bash

#filter ls-l output

#exclude links and directoreis 
#list owner(4), size(5), filename(9)
ls -l|grep -vE '^d|^l' |tr -s ' '|cut -d' ' -f4,5,9


#using awk 
#ls -l|grep -vE '^d|^l'|tail -n1 |awk '{print $4, $5, $9}'



