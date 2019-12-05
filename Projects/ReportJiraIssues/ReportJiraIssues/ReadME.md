# How To Use

## Setting UP

Take the whole project on the local drive C:
Ensure the following are present:
	-	Reports folder
	-	runTask.bat
	-	ReportJiraIssues.<some version>.nupkg (e.g some version may be ``1.0.1``)
	-	credentials.json
	
Update the content of ```credentials.json``` to include correct username and password.
Update the content of ```runTask.bat``` to reference the correct version of the ReportJiraIssues package (See first line of batch file - e.g. ``SET ReportJiraIssuesVersion=1.0.1``) and the JIRA project that must be reported on (see second line: ``project="DEVTST"``) 

## Running

Execute ```runTask.bat``` by double clicking on it.