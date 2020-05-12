#!/bin/bash

#Declaring Arrays..

ARRAY=(10 20 30 40)

#Looping through array
for i in "${ARRAY[@]}"
do 
echo "$i"
done

#Looping through indexes
echo "***************************"
for k in "${!ARRAY[@]}"
do
echo "${ARRAY[k]}"
done

#Looping through a sequence
echo "***************************"
for j in {1..5}
do
echo "$j"
done

#Looping through a command output
echo "***************************"
FILES=($(ls))
for FILE in "${FILES[@]}"
do
if [ -x "$FILE" ];then
echo "$FILE is executable"
else
echo "$FILE is not executable"
fi
done

echo "***************************"
#Setting IFS to print array with comma instead of space
IFS=,
echo "${ARRAY[*]}"
