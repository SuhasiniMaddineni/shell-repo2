#!/bin/bash


if [ $? -ne 0 ]
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
    exit 1
else
    echo "mysql installed successfully"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "error: git has not installed"
    exit 1
else
    echo "git installed successfully"
fi
