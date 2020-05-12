#!/bin/bash

echo "WELCOME TO SHELL SCRIPTING $USER"
echo "You are curently at `pwd`"
echo "Today's date is `date`"
echo "Today's date is $(date)"

# Declarig variables
DATE1=`DATE`
DATE2=$(DATE)
echo "Today's date is $DATE1"
echo "Today's date is $DATE2"

## Calculations
echo "$((5+100))"

##Relational
test 100 -gt 50;echo "$?";
test 100 -gt 500;echo "$?";

##Lgoical

if test 85 -gt 35 -a 95 -gt 35
then
echo "Wow!!"
fi

if [ $1 -lt 10000 ];then
echo "Value is less than 10000"
fi

if [ $1 -lt 10000 ];then
echo "Value is less than 10000"
else
echo "Value is greater than 10000"
fi

for i in 1 10 100 2302 231
do
echo "$i"
done

echo "print inputs"

for i in $@
do

echo "$i"
done