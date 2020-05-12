#!/bin/bash

#Math Calculation

num1=100
num2=10

let sum=num1+num2
echo "Sum of $num1 and $num2 is $sum"

diff=$(( $num1 - $num2 ))
echo "Difference of $num1 and $num2 is $diff"

mul=$(expr $num1 * $num2)
echo "Multiplication of $num1 and $num2 is $diff"

div=`expr $num1 / $num2`
echo "Division of $num1 and $num2 is $div"

exp=`echo "$num1^$num2" | bc`
echo "Exponentional of 10 to 2 is $exp"

rem=`expr 10 % 2`
echo "Reminder of 10 by 2 is $rem"