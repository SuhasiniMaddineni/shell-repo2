#!/bin/bash

#ID=$(id -u)

#echo "script name is: $0"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

#echo "Script started executing at $TIMESTAMP" &>> $LOGFILE
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
    then
       echo "$R error: not root user $N"
       exit 1
    else
       echo "$G inside root user $N"
fi
echo "script name is: $0"
echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

validate(){

    if [ $1 -ne 0 ]
    then
      echo "$2.... $R failed $N"
      exit 1
    else
      echo "$2.... $G success $N"
    fi
}

yum install mysql -y &>> $LOGFILE
validate $? "mysql"
yum install git -y &>> $LOGFILE
validate $? "git"

