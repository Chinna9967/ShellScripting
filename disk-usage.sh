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
message=""

# IFS= internal field seperator
while IFS= read line
do
    # usage in number format for comoarision
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
    # this command will give us partition
    partition=$(echo $line | awk '{print $1}')
    # now we need to check ehther it is morethan threshold or not
    if [ $usage -gt $DISK_USAGE_THRESHOLD ]
    then
        message+="High Disk usage on $partition: $usage \n"
    fi
done <<< $DISK_USAGE

echo "$message" | mail -s "High disk usage" kashireddyerugula@gmail.com
