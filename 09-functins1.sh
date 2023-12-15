#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then
       echo "error: not root user"
       exit 1
    else
       echo "inside root user"
fi

validate(){

    if [ $1 -ne 0 ]
    then
      echo "error: $2.... failed"
      exit 1
    else
      echo "$2.... success"
    fi
}

yum install mysql -y
validate $? "mysql"
yum install git -y
validate $? "git"

