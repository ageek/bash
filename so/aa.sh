#!/bin/bash
TEST="THIS is a TEST title with some numbers 12345 and special char *&^%$#"
valid='0-9a-zA-Z $%&#'
if [[ $TEST =~ $valid ]]; then 
echo valid pattern
else 
echo invalid 
fi

