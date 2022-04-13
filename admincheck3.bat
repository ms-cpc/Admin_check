@ECHO OFF
:: Check for ADMIN Privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' GOTO not
ECHO ADMIN
GOTO exit1
:not
color 0c
ECHO NOT ADMIN, PLEASE RELAUNCH AS ADMIN!
:exit1
pause