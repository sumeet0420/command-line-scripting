#!/bin/bash

#write script which will work with parameters: 
# -f or --file will provide info about number of lines, words and characters
# -h or --help will provide

while [ $# -gt 0  ];do
case "$1" in
	-h|--help )
		echo "USAGE $0 [-h] [--help] [-f file] [--file]"
		shift
		exit 1
		;;

	-f|--file )
		FILE=$2
		if ! [ -f "$FILE" ];then
			echo "File $FILE does not exist."
			exit 2
		fi
		
		LINES=$(cat "$FILE" | wc -l)
		WORDS=$(cat "$FILE" | wc -w)
		CHARACTERS=$(cat "$FILE" | wc -m)

		echo "===FILE: $FILE==="
		echo "Lines: $LINES"
		echo "Words: $WORDS"
		echo "Characters: $CHARACTERS"
		shift
		shift
		;;
	* )
		echo "USAGE $0 [-h] [--help] [-f file] [--file]"
		exit 1
		;;
esac
done
