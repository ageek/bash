#!/usr/bin/env bash
#email check script

awk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z_\-\.]+)\.([a-zA-Z]{2,5})$/ {print $0}'
