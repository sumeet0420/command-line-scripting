@echo off
setlocal EnableDelayedExpansion

echo.
echo.
goto :main

::comment

:main
setlocal

: Parameter can only be single letter
echo.
for %%s in ( 1 2 3 4 5 )  do (
	echo %%s
)

echo.
for /l %%i in ( 0, 5, 20 )  do (
	echo %%i
)

echo.
for /f "delims=, skip=1 tokens=1,2,3 eol=#" %%i in ( data.csv )  do (
	echo %%i of age %%j is a %%k	
)

echo.
for %%f in ( * ) do (
	echo %%f
)

echo.
for /r %%f in ( *sh ) do (
	echo %%f
)

echo.
for /d %%f in ( * ) do (
	echo %%f
)

endlocal
goto :eof

echo.
echo.
echo end of file