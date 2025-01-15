#!/bin/bash

threshold=50

usage=$(df /|grep /|awk '{print $6}'|sed 's/%//g')

if [ $usage -gt $threshold ]; then
 echo "Warn $usage is Higher than $threshold"
else 
 echo "we are cool"
fi 