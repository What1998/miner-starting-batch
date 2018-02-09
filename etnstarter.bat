@echo off
:loop
	cd "D:\mining\mining3\Claymore\Claymore" REM enter pathway
	start start_etn
	timeout /t 43200 REM 12 hrs in seconds
	set /P t=[t]
	IF "t"=="t" GOTO :end
	taskkill /F /T /IM NsGpuCNMiner.exe REM enter process name found in taskmanager --force kills miner
	timeout /t 3600 REM 1 hr in seconds
goto loop
:end
	taskkill /F /T /IM NsGpuCNMiner.exe REM enter process name found in taskmanager --force kills miner