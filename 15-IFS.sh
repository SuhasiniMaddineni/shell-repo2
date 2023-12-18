#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if[ ! -f $file ]
then
 echo "$R  $file does not exit $N"
fi

while IFS= ":" read -r username password user_id group_id user_fullname home_dir shell_path
do
  echo "usename: $username"
  echo "user_id: $user_id"
  echo "user_fullname: $user_fullname
done < $file