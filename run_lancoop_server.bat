@echo off
setlocal

set "GAME_EXE=%~1"
if "%GAME_EXE%"=="" set "GAME_EXE=EasyDeliveryCo.exe"

if not exist "%GAME_EXE%" (
    echo [LAN COOP] Game exe not found: "%GAME_EXE%"
    echo Usage:
    echo   run_lancoop_server.bat "D:\Path\To\EasyDeliveryCo.exe"
    exit /b 1
)

start "EasyDeliveryCo (LAN Server)" "%GAME_EXE%" --lancoop-server
echo [LAN COOP] Started as SERVER: "%GAME_EXE%"
exit /b 0
