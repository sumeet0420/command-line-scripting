#!/bin/bash

#Math Calculation using arguments

# $0 => Script Name
# $1 => First Argument
# $2 => Second Argument
# $@ => All arguments, expand as $1 $2 and so on
# $* => All arguments as one string $1c$2c c = IFS
# $# => argument count..


num1=$1
num2=$2

let sum=num1+num2
echo "Sum of $num1 and $num2 is $sum"

diff=$(( $num1 + $num2 ))
echo "Difference of $num1 and $num2 is $diff"

mul=$(expr $num1 \* $num2)
echo "Multiplication of $num1 and $num2 is $mul"

div=`expr $num1 \/ $num2`
echo "Division of $num1 and $num2 is $div"

rem=`expr $num1 % $num 2`
echo "Reminder of $num1 by $num2 is $rem"

# Changing IFS to understand the difference between $@ and $*
IFS=","
echo "\$@: $@"
echo
echo "\$*: $*"
