#!/bin/python

## Using Case in Linux

read -p "Enter a word: " age
#read -sp "Enter your password: " password

case "$age" in
"Y"|"y" )
	echo yes
;;
"N"|"n" )
	echo no
;;
* )
echo default
;;
esac
