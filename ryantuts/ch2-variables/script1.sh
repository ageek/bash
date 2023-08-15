#!/bin/bash

var1=dolly
var2=polly

echo $0-var1:$var1, var2:$var2

export var1
./script2.sh

echo $0-var:$var1, var2:$var2

