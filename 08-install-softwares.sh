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

if [ $? -ne 0 ]
then
  echo "error: not installed mysql"
  exit 1
else
  echo "installed mysql"
fi

yum install git -y

if [ $? -ne 0 ]
then
  echo "error: not installed git"
  exit 1
else
  echo "installed git"
fi

