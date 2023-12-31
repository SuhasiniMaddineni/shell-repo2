#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started execution at: $TIMESTAMP" &>> $LOGFILE

if [ $ID -ne 0 ]
    then
    echo -e "$R Error: yur not root user $N"
    exit 1
    else
    echo -e "$G your in root user $N"
fi


validate(){
  if [ $1 -ne 0 ]
    then
    echo -e "$2... $R failed $N"
    else
    echo -e "$2...$G success $N"
  fi
}



for package in $@
do
  yum list installed $package &>> $LOGFILE
  if [ $? -ne 0 ]
  then
    yum install $package -y &>> $LOGFILE
    validate $? "installation of $package"
   else
    echo -e "$package is already istalled...$Y skipping $N"
   fi  
done