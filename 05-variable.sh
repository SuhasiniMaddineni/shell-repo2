#!/bin/bash

number1=$1
number2=$2

sum=$(($number1+$number2))
 
 echo "sum is: ${sum}"

 echo "all arguments: $@"
 echo "how many arguments passed: $#"
 echo "script name: $0"
 echo "first argu: $1"
 echo "2nd argu: $2"
 echo "nth argu: $N"

