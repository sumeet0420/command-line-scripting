#!/bin/bash

#Select 

select FILENAME in *; do
chmod +x "$FILENAME";
done
#loops

planet=(MERCURY VENUS EARTH MARS JUPITE SATURN NEPTUNE PLUTO)
for PLANET in "${planet[@]}"
do
echo $PLANET
done

echo "***************************************"

for word in "This a sentence"
do
echo $word
echo
done

echo "***************************************"
for i in {1..5};do
echo $i
done

echo "***************************************"
var1=ROW1\nROW2\nROW3

for row in $var1;do
echo row
done


echo "***************************************"
cat -n "sort again.txt" |
while read line
do
echo $line
done
