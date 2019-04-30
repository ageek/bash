#!/bin/bash
read a
echo $a|cut -d$'\t' -f2-
