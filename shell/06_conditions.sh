#!/bin/bash

# Syntax : if [ condition ]
# then 
# statement
# fi
# else, elif [condition]

num1=$1
num2=$2

#Checking the number of arguments

if [ $# -ne 2 ];then
echo "Number of arguments should be equal to 2 "
exit 1
fi

if [ 100 \< 20 ];then
echo "100 is less than 20"
else
echo "100 is greater than 20"
fi

if [ 100 -lt 20 ];then
echo "100 is less than 20"
else
echo "100 is greater than 20"
fi

if [[ 100 -lt 20 ]];then
echo "100 is less than 20"
else
echo "100 is greater than 20"
fi

#####################################3

let result=$num1*$num2

if [ $? -ne 0 ]; then
echo "All arguments should be integer"
exit 1
else
echo "The sum of $num1 and $num2 is $result"
fi

if [ "hello" = "hello" ]; then
echo "strings are matching..."
else
echo "strings are not matching..."
fi

if [ "hello" != "hello1" ];then
echo "strings are not equal"
else
echo "strings are equal"
fi

## Test strings are empty -z
EMPTY=""

if [ -z "$EMPTY" ];then
echo "This is an empty string"
fi

## Test a non empty string
NON_EMPTY=""

if [ ! -n "hell" ];then
echo "Well, this is not non-empty string.."
else
echo "Well, this is a empty string.."
fi

var1=SUMEET
echo "length ${#var1}"

echo "-a and -o or"
# -a and -o or

#String Sorting
#[[   ]]

#File Comparison

#if [ -f "f/dev/linux/vi.txt" ];then
#echo "File exists."
#fi
