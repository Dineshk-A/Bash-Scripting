#!/bin/bash

# Set the threshold for disk usage
THRESHOLD=80

# Get the disk usage percentage of the root filesystem
USAGE=$(df / | grep / | awk '{ print $6 }' | sed 's/%//g')

# Compare the usage to the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%."
else
  echo "Disk usage is below $THRESHOLD%. Current usage: $USAGE%."
fi


##sed editior , s- substition , % pattern match  // replace with nothin , g gloabl apply the s in the string
#s/%//g replace empty
#s/%/:/g replace with :