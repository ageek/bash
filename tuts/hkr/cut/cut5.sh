#!/bin/bash
read a
echo $a |cut -d$'\t' -f1-3
