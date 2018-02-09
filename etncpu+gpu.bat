@echo off
cd "D:\mining\mining3\Sumo Easy Miner"
start sumominer
:loop
	set option=
	set /p option=Type 1 to end.
	if '%option%'=='1' goto end
	if not '%option%'=='1' goto ready
	:ready
	cd "D:\mining\mining3\Claymore\Claymore" 
	REM enter pathway
	start startetn
	echo [y]kill or [s]skip choice
	choice /c ys /t 9998 /d s 
		if %errorlevel%== 1 goto end
	choice /c ys /t 9998 /d s
		if %errorlevel%== 1 goto end
	choice /c ys /t 9998 /d s
		if %errorlevel%== 1 goto end
	choice /c ys /t 9998 /d s
		if %errorlevel%== 1 goto end
	choice /c ys /t 3208 /d s
		if %errorlevel%== 1 goto end
	REM 12 hrs in seconds
	taskkill /F /T /IM NsGpuCNMiner.exe 
	REM enter process name found in taskmanager --force kills miner
	echo [y]kill or [s]kip
	choice /c ys /t 3600 /d s 
		if %errorlevel%== 1 goto end
	REM 1 hr in seconds

goto loop
:end
	taskkill /F /T /IM NsGpuCNMiner.exe 
	REM enter process name found in taskmanager --force kills miner