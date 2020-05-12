@echo off
SetLocal EnableDelayedExpansion

goto :main

:main
setlocal
echo Running script %0
set var=This is a long string
:: Substring !var:~ from, plus length! 
echo !var:~8,6!
:: Replace
echo replace text=!var:long=short!
echo var=%var%
set var=!var:long=short!
echo var=%var%

set string="More information, "More information""
:: %~I         - expands %I removing any surrounding quotes ("")
:: %~fI        - expands %I to a fully qualified path name
:: %~dI        - expands %I to a drive letter only
:: %~pI        - expands %I to a path only
:: %~nI        - expands %I to a file name only
:: %~xI        - expands %I to a file extension only
:: %~sI        - expanded path contains short names only
:: %~aI        - expands %I to file attributes of file
:: %~tI        - expands %I to date/time of file
:: %~zI        - expands %I to size of file
for /f "usebackq tokens=*" %%g in ('!string!') do set string=%%~g
echo !string!
endlocal
goto :eof