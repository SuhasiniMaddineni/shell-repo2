#!/bin/bash

number1=$1
number2=$2

sum=$(($number1+$number2))
 
 echo "sum is: ${sum}"

 echo "all arguments: $@"
 ech "no.of arguments: $#"
 echo "script name: $0"
 
