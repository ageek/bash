#!/usr/bin/env bash
#script to validate US phone numbers 
awk '/^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{3}(| |-|\.)[0-9]{4}$/ {print $0}'
