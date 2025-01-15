#!/bin/bash

read -p "enter the rpcoess name:" Process_Name

Process_Info = $(ps aux | grep -i $Process_Name | grep -v "grep")

if [ -z $Process_Info ]; then
    echo "process not running "
else 
    echo "running"
fi