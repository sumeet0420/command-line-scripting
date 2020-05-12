@echo off
:: Comments here
echo.

set var1=SUMEET
echo "********************"
echo %var1%
echo "********************"
echo JAVA_HOME PATH: %JAVA_HOME%
echo NUMERICAL FUNCTION use /A
set /A a=2+3
echo 2+3 is %a%
goto :main
echo.
echo AFTER THE MAIN FUNCTION
::Functions
:main

	echo 	Main Functio is being called
	call :anothermain sumeet agrawal
	echo Antoher Function was called above. Now pointer is back to main function
goto :eof

:anothermain
	echo This is another main with argument %~1 %~2
goto :eof