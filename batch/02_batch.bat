@echo off
:: Comments here
setlocal EnableDelayedExpansion
title Batch Learning - Executing 02_batch.bat
cls
echo.
echo.
echo.
goto :main

:main
setlocal
set /a x=100
set /a z=x+50
set name="SUMEET AGRAWAL"
echo The value of z is %z%

: If else in batch...
: If <condition> == 
: EQU - equal
: NEQ - not equal
: LSS - less than
: LEQ - less than or equal
: GTR - greater than
: GEQ - greater than or equal

if %z%==150 (
	echo The sum is correct
)

if /i %name%=="Sumeet Agrawal" (
echo Welcome, %name%.
)

if %name% EQU "SUMEET AGRAWAL" (
ECHO Well, the name is correct..
) else (
ECHO The name is incorrect.
)

if not %x% NEQ 100 (
ECHO The number x is not 100
)

if %x% LSS 200 (
ECHO The number x is less than 200
)

IF %x% GTR 500 (
ECHO The number x is greater than  500
) else (
ECHO The number x is not greater than 500
)

: Delayed Expansion Example...
echo Delayed Expansion Example...
set /a i=50

if %i% EQU 50 (
	echo i is equal to 50...
	set /a j=100
	
	echo ***************************************
	echo We need to use delimiter ^^!
	echo ***************************************
	if !j! EQU 100 (
		echo j is equal to 100...
	) else (
		echo j is not equal to 100...
	)
)

if exist 01_batch.bat (
echo File exists
) else File doesn't exists

echo.
echo.
echo Well, the function ended..
echo.
echo.

set /a counter=0
set /a limit=10


:loop
if !counter! lss !limit! (
	echo !counter!
	set /a counter=!counter!+1
	goto :loop
)

echo end of loop
endlocal & set /a z
goto :eof