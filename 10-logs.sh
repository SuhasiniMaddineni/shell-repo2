#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

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

yum install mysql -y &> $LOGFILE
validate $? "mysql"
yum install git -y &> $LOGFILE
validate $? "git"

