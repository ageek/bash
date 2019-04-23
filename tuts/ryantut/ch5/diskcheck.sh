#!/usr/bin/env sh
#disk usage check for the most filled partition only

usage=$(df -h |awk '{print $5}'|sed 's/%//g'|sort -n |tail -n 1)
echo $usage
case $usage in
    9[0-9]) echo more than 90%
        ;;
    8[0-9]) echo more than 80%, ok for now
        ;;
    [5-7][-0-9]) echo more than half filled
        ;;
    [[1-4][0-9]) echo half empty
        ;;
    *) echo dont know
esac


