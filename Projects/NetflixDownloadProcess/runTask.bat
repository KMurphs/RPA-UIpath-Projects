@echo off

REM Scripts Variables
SET ScriptPackageVersion=1.0.2
SET ScriptPackageName=NetflixDownloadProcess
REM UIPath Variables
SET CurrentRobotVersion=19.10.4

REM Other Variables
REM SET JiraProject="DEVTST"



echo Netflix Downloads...
REM Use 'setlocal' so that we can use an environment variable without it leaking out to the caller.
setlocal


echo Current Timestamp: %DATE% %TIME%

REM Saving Source Directory and Robot Directory
SET startDir=%~dp0
SET robotDir="C:\Users\stephane.kibonge.PARSEC\AppData\Local\UiPath\app-%CurrentRobotVersion%"


echo Going Into Robot Directory
cd %robotDir%

echo Starting Robot Process
REM UiRobot.exe execute --file "%startDir%\main.xaml" --input "{'project' : '%JiraProject%'}"
REM UiRobot.exe execute --file "%startDir%\main.xaml" 

UiRobot.exe execute --file "%startDir%\%ScriptPackageName%.%ScriptPackageVersion%.nupkg"
REM UiRobot.exe execute --file "%startDir%\%ScriptPackageName%.%ScriptPackageVersion%.nupkg" --input "{'project' : '%JiraProject%'}"


echo Returning To Original Directory
cd %startDir%

REM End the local processing and go back to the main environment
endlocal