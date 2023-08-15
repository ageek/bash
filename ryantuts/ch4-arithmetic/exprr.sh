#!/bin/bash

a=$((4+5))
echo $a


z=$(($a/3))
echo $z

(( z++ ))
echo $z

p=$(($z%2))
echo $p

