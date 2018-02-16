@echo off
set option=
set /p option=Type 1 if steam is open 2 if not.
if '%option%'=='1' goto end
if not '%option%'=='1' goto ready
:ready
cd "D:\songstarter"
start dangerzone.mp3
cd "D:\SteamLibrary\steamapps\common\Tom Clancy's Rainbow Six Siege"
start RainbowSix
timeout /T 130
taskkill /F /T /IM Music.UI.exe



:end
timeout /T 100
taskkill /F /T /IM Music.UI.exe