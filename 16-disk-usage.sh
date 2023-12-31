#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1 # more then 1% it should be alerted
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1) 
    partition=$(echo $line | awk '{print $1F}')
    
    if [ $usage -ge $DISK_THRESHOLD ]
    then
      message+="High disk usage on $partition: $usage\n"
    fi
done <<< $DISK_USAGE 

echo -e "message: $message"

echo -e "$message" | mail -s "High disk usage" suhasini.maddineni90@gmail.com