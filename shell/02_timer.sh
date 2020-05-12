#!/bin/bash

START=$(date +%s)
echo "Program Starting..."
HOME=$(pwd)
echo "$HOME"
echo
sleep 2
END=$(date +%s)
TIME=$(( END - START ))

echo "Time taken is $TIME"
