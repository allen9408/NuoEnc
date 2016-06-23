:: NuoEnc.bat (NuOne Encoder)
:: Script to convert *.wav to *.nuo in one directory
:: usage: .\NuoEnc.bat [directory]

@echo off

set wd=.
set para=1.5
if "%1" NEQ "" set wd=%1
if "%2" NEQ "" set para=%2

set temp=tmp.txt
set targetfile=tgt.txt
set logfile=result_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.log


if exist %temp% del %temp%
if exist %targetfile% del %targetfile%
@echo File directory: %wd%


dir %wd%\*.wav /b /on >%temp%
if %ERRORLEVEL% NEQ 0 goto error

:: start encoding
@echo Encoding ... 

for /f %%a in (%temp%) do (
	echo %wd%\%%a >> %targetfile%
	)

for /f %%a in (%targetfile%) do (
	NuoEnc.exe %%a %para% >> %logfile%
	)

@echo Complete!

goto exit

:error
@echo Read wav file error!

:exit
del %temp%
del %targetfile%
del AudioTool.log
