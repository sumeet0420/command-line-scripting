#!/bin/bash

# Varaibles...
echo "Hello World!"

echo 

num1=50
echo "variable num1 is $num1"

read -p "Enter your name: " NAME
read -sp "Enter your password: " PASSWORD

echo
echo "Well, ${NAME}. '$PASSWORD' is a strong password."

HOME=$(pwd)

#echo
echo "${NAME}, you are at $HOME"

date=`date`
echo "Today's ate is $date"
