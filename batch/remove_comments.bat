@echo off
cls

setlocal enabledelayedexpansion

goto :main

:main
setlocal
set filename=%1
for /f "eol=#" %%i in ( %filename% )  do (
	echo %%i
)

goto :eof