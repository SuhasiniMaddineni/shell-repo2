#!/bin/bash

ID=$(id -u)

validate(){

    if [ $1 -ne 0 ]
    then
       echo "error: $1 ....failure"
       exit 1
    else
        echo "$2....success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "error: this is not root user,you please run inside root user"
    exit 1
else
    echo "now you are in root user"
fi

yum install mysql -y

validate $? "installed mysql"

yum install git -y

validate $? "installed git"

