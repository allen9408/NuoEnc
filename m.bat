@echo off
setlocal enabledelayedexpansion

set VS_path=C:\Program Files (x86)\Microsoft Visual Studio 14.0
path %PATH%;%VS_path%\Common7\IDE

set command=
if "%1"==""         set command=/Rebuild
if "%1"=="b"        set command=/build
if "%1"=="r"        set command=/Rebuild
if "%1"=="c"        set command=/clean

if "%command%"=="" (
        echo Error: Invalid command...
        goto PrintHelp
        )

:: build
devenv .\NuoEncPrj\NuoEnc.sln %command%

:: copy exe 
copy /Y .\NuoEncPrj\Debug\NuoEnc.exe .\NuoEnc.exe

goto exit

:PrintHelp
setlocal
echo Usage:
echo m.bat [command]
echo * command:
echo     - b / build
echo     - r / rebuild
echo     - c / clean
endlocal

:exit