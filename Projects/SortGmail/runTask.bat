@echo off


SET startDir=%~dp0
SET robotDir="C:\Users\stephane.kibonge.PARSEC\AppData\Local\UiPath\app-19.10.1"



REM echo %startDir%
REM echo %robotDir%

echo Going Into Robot Directory
cd %robotDir%

echo Executing Task
UiRobot.exe execute --file "%startDir%\Main.xaml"

echo Returning To Original Directory
cd %startDir%
