#!/bin/bash

Source_dir="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $Source_dir ]
then
  echo -e "$R there is not source directory under this $Source_dir $N"
fi 

Files_to_delete=$(find $Source_dir -type f -mtime +14 -name "*.log")

while IFS= read -r line
do 
  echo "deleting file: $line"
  rm -rf $line

done $Files_to_delete
