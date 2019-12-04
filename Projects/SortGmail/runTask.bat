
@echo off
echo Starting GMail Sorting...
REM Use 'setlocal' so that we can use an environment variable without it leaking out to the caller.
setlocal

REM Initialize the counter to zero
set counter=0
:AGAIN

REM Increment the counter
set /A counter+=1
echo Processing loop %counter%...

REM echo date /t
REM echo time /t
echo Current Timestamp: %DATE% %TIME%



REM Check the counter to see if we've done enough iterations--bail out if we have
REM if '%counter%'=='11' goto END


REM Saving Source Directory and Robot Directory
SET startDir=%~dp0
SET robotDir="C:\Users\stephane.kibonge.PARSEC\AppData\Local\UiPath\app-19.10.1"


echo Going Into Robot Directory
cd %robotDir%

echo Executing Task
UiRobot.exe execute --file "%startDir%\Main.xaml"

echo Returning To Original Directory
cd %startDir%


echo Next Execution will happen in 10minutes...


REM Wait for one second so as not to peg the CPU
timeout /T 600 /NOBREAK>nul


goto AGAIN


:END

REM End the local processing and go back to the main environment
endlocal