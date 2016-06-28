:: script to flash SPI
@echo off

:: flash
.\SPIFlashWriter\NuVoiceWriterUI.exe --spidata=%~dp0flash.ROM --actions=evp

:exit