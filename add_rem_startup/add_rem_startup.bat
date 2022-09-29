@echo off
::echo %1
set regPath=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
for /f "tokens=1,3" %%e in ('call reg query %regPath%') do (
	if %%f==%1 (
		::found in startup
		echo %1 was found in registry. Removing it from startup.
		reg delete %regPath% /f /v %%e
		pause
		exit
	)
)
::not found in startup
echo %1 was not found in registry. Adding it from startup.
::echo %~nx1
::for /f "usebackq delims=\ tokens=*" %%a in ('%1') do echo %%~nxa
call reg add %regPath% /v %~nx1 /t REG_SZ /d %1
pause