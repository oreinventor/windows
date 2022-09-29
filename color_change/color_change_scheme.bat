@echo off
for /f %%f in ('dir /b "C:\windows\resources\themes\aero\"') do echo %%f
set /p "theme=Enter theme name (dark,darkblue,default): "
start "" /wait "C:\Windows\Resources\ease of access themes\classic.theme"
taskkill /f /im explorer.exe
echo "Please kill explorer.exe"
pause
copy C:\Windows\Resources\Themes\Aero\aero_%theme%.msstyles C:\Windows\Resources\Themes\Aero\aero.msstyles
start "" /wait "C:\Windows\Resources\themes\aero.theme"
start explorer.exe
pause