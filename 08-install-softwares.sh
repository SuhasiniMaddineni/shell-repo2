#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then
       echo "error: not root user"
    else
       echo "inside root user"
fi

yum install mysql -y

