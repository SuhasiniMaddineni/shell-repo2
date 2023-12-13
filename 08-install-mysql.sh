#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "error: this is not root user,you please run inside root user"
    exit 1
else
    echo "now you are in root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "error: mysql has not installed"
else
    echo "mysql installed successfully"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "error: mysql has not installed"
else
    echo "mysql installed successfully"
fi
