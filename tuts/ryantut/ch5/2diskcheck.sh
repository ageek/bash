#!/usr/bin/env sh
#disk usage check for all partitions

#special case for cygwin in Win 7, not required for *nix flavors
usage=$(df -h |awk '!/Use/{print $1,$5}'|sed -e 's/%//g' -e 's/ //g' -e 's:/cygwin64::')

#echo $usage

for item in $usage; do
#    echo item is=$item
    p1=$(echo $item|cut -d: -f1)
    p2=$(echo $item|cut -d: -f2)
#    echo "p1->$p1<- and p2->$p2<-"
    case $p2 in
        # > < etc needs to be escaped else thre will be no output, try it
        9[0-9]) echo $p1 \> 90% Low disk Alert;;
        8[0-9]) echo $p1 \> 80%, nearing low disk ;;
        [5-7][0-9]) echo $p1 \> 50%, use carefully  ;;
        [1-4][0-9]) echo $p1 \~ 50%  or less ;;
        [1-9]) echo $p1 \< 10% super !!! ;;
        *) echo dont know ;;
    esac
done


