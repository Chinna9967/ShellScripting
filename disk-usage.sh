#!/bin/bash

# colors
# validations
# log redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$0-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[om"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

# IFS= internal field seperator
while IFS= read line
do
    echo "output: $line"
done <<< $DISK_USAGE
