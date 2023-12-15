#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then
       echo "error: not root user"
       $? 1
    else
       echo "inside root user"
fi

yum install mysql -y

