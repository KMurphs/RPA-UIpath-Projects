


@echo off
echo Starting Fiverr Scrapping...
REM Use 'setlocal' so that we can use an environment variable without it leaking out to the caller.
setlocal


echo Current Timestamp: %DATE% %TIME%

REM Saving Source Directory and Robot Directory
SET startDir=%~dp0
SET robotDir="C:\Users\stephane.kibonge.PARSEC\AppData\Local\UiPath\app-19.10.1"


echo Going Into Robot Directory
cd %robotDir%

echo Starting Robot Process
UiRobot.exe execute --file "%startDir%\main.xaml"
REM UiRobot.exe execute --file "%startDir%\ReportJiraIssues.%ReportJiraIssuesVersion%.nupkg" --input "{'project' : '%JiraProject%'}"

echo Returning To Original Directory
cd %startDir%

REM Replacing special chars
powershell -Command "(gc subcategories.csv) -replace 'SubCategory', 'Keyword' | Out-File -encoding ASCII subcategories.csv"
powershell -Command "(gc subcategories.csv) -replace '&', '`n' | Out-File -encoding ASCII subcategories.csv"
powershell -Command "(gc subcategories.csv) -replace ',', '`n' | Out-File -encoding ASCII subcategories.csv"

REM End the local processing and go back to the main environment
endlocal

