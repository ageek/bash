#!/bin/bash
#evaluate given arith expression
read -p 'enter arith expression ' myarith

mybc="scale=3;$myarith"
echo result of $myarith is $(echo $mybc|bc)
