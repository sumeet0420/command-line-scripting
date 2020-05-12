@echo off
set string=%2
for /f "usebackq tokens=*" %%i in ('!string!') do set string=%%~g

set %1=!string!