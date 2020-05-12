#/bin/bash

#Declaring functions..

#Without arguments

function hello {
local name=$1
echo "Called from hello function to ${name}..."
}

function add {
local num1=$1
local num2=$2
let x=num1+num2
echo "sum of $num1 and $num2 is $x"
}

read "Enter your name " name
hello $name
add 10 20
