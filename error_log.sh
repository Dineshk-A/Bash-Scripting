#!/bin/bash

log_file=text.txt
log_pattern="dine"

if [ ! -f $log_file ]; then
    echo " $log_file doesnt exits ! "
    exit 1
fi

error_count=$(grep -c $log_pattern $log_file)
if [ $error_count -gt 0 ]; then
    echo "found error $log_pattern"
fi
