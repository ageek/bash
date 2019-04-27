#!/bin/bash
#computer avg of given N numbers

while true
do
    read -p 'enter N ' N
    if (( $N >=1 && $N<=500)); then
        break
    fi
done
sum=0
for((i=0;i<N;i++))
do
    read t
    a[i]=$t
    sum=$(($sum+${a[i]}))
done
#echo total sum is $sum
bcexp="scale=3;$sum/$N"
#echo $bcexp
echo avg is $(echo $bcexp|bc)


