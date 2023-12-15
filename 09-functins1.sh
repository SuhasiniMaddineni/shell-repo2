#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then
       echo "error: not root user"
       exit 1
    else
       echo "inside root user"
fi

yum install mysql -y
validate
yum install git -y
validate

validate(){

    if [ $? -ne 0 ]
    then
    echo "error: installed failed"
    exit 1
    else
    echo "installed success"
    fi
}

