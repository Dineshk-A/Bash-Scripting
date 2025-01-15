#!/bin/bash

# Define source and backup directory paths
SOURCE_DIR="D:\PY-leetcode\powershell\1.thresholdalert.sh"
BACKUP_DIR="D:\PY-leetcode\powershell\temp"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# Create the backup using rsync
rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/backup_$DATE/"

# Confirm the backup completion
echo "Backup completed successfully: $BACKUP_DIR/backup_$DATE"

#rsync to sync , av , append versbose -- delete from source 
