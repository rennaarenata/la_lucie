@echo off
cd ..
xcopy "lucieengine" "%userprofile%\AppData\Roaming\lucieengine" /s /e /i 
cd "%userprofile%\AppData\Local"
mkdir identifyl