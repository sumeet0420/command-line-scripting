#!/bin/bash

while getopts a:b:cd param;do

case $param in
	a )
	echo "parameter 'a' with argument: $OPTARG"
	;;
	b )
	echo "parameter b' with argument: $OPTARG"
	;;
	c )
	echo "parameter 'c' selected"
	;;
	d )
	echo "parameter 'd' selected"
	;;
	\? )
	echo "$usage"
	;;
	* )
	echo $usage
	exit 1
	;;
esac
done



