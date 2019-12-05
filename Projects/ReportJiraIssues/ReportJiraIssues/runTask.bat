
@echo off
echo Starting Jira Scrapping...
REM Use 'setlocal' so that we can use an environment variable without it leaking out to the caller.
setlocal


echo Current Timestamp: %DATE% %TIME%

REM Saving Source Directory and Robot Directory
SET startDir=%~dp0
SET robotDir="C:\Users\stephane.kibonge.PARSEC\AppData\Local\UiPath\app-19.10.1"


echo Going Into Robot Directory
cd %robotDir%

echo Starting Robot Process
REM UiRobot.exe --enableLowLevel
UiRobot.exe execute --file "%startDir%\Main.xaml" 

echo Returning To Original Directory
cd %startDir%

REM End the local processing and go back to the main environment
endlocal