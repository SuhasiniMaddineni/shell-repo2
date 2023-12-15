#!/bin/bash

#ID=$(id -u)

#echo "script name is: $0"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

#echo "Script started executing at $TIMESTAMP" &>> $LOGFILE
ID=$(id -u)

if [ $ID -ne 0 ]
    then
       echo "error: not root user"
       exit 1
    else
       echo "inside root user"
fi
echo "script name is: $0"
echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

validate(){

    if [ $1 -ne 0 ]
    then
      echo "error: $2.... failed"
      exit 1
    else
      echo "$2.... success"
    fi
}

yum install mysql -y &>> $LOGFILE
validate $? "mysql"
yum install git -y &>> $LOGFILE
validate $? "git"

