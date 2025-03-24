@echo off
title KAZ MULTI TOOL (By @geokaz)
chcp 65001>nul
setlocal enabledelayedexpansion
:menu
cls
echo.
echo.
echo.
echo.
echo [38;2;0;255;0m                                                ██╗  ██╗ █████╗ ███████╗
echo [38;2;51;255;51m                                                ██║ ██╔╝██╔══██╗╚══███╔╝
echo [38;2;102;255;102m                                                █████╔╝ ███████║  ███╔╝ 
echo [38;2;153;255;153m                                                ██╔═██╗ ██╔══██║ ███╔╝  
echo [38;2;204;255;204m                                                ██║  ██╗██║  ██║███████╗
echo [38;2;229;255;229m                                                ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo                                                ╔════════════════════════╗
echo                                                ║ [38;2;0;255;0m 1) WEBHOOK SPAMMER   [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 2) PORT MANAGER      [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 3) IP LOOKUP         [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 4) DISCORD NITRO GEN [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 5) FOUND PRODUCT KEY [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 6) TIKTOK VIEW BOT   [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 7) PASSWORD GEN      [38;2;229;255;229m ║
echo                                                ║ [38;2;0;255;0m 8) BAT TO EXE        [38;2;229;255;229m ║
echo                                                ╚════╦═══════════════════╝
echo                                                     ║
echo                                                     ║
set /p "choice=.                                                   ╚════════>[38;2;0;255;0m"

if "%choice%"=="1" goto WEBHOOKSPAMMER
if "%choice%"=="2" goto port_manager
if "%choice%"=="3" goto ip
if "%choice%"=="4" goto discord_nitro_gen
if "%choice%"=="5" goto product_key
if "%choice%"=="6" goto tiktok_bot
if "%choice%"=="7" goto password_gen
if "%choice%"=="8" goto bat2exe
pause>nul
exit

:WEBHOOKSPAMMER
cls
echo.
echo   [38;2;229;255;229m· ▄▄▄▄  ▪  .▄▄ ·  ▄▄·       ▄▄▄  ·▄▄▄▄      .▄▄ ·  ▄▄▄· ▄▄▄· • ▌ ▄ ·. • ▌ ▄ ·. ▄▄▄ .▄▄▄  
echo   [38;2;229;255;229m ██▪ ██ ██ ▐█ ▀. ▐█ ▌▪▪     ▀▄ █·██▪ ██     ▐█ ▀. ▐█ ▄█▐█ ▀█ ·██ ▐███▪·██ ▐███▪▀▄.▀·▀▄ █·
echo    [38;2;204;255;204m▐█· ▐█▌▐█·▄▀▀▀█▄██ ▄▄ ▄█▀▄ ▐▀▀▄ ▐█· ▐█▌    ▄▀▀▀█▄ ██▀·▄█▀▀█ ▐█ ▌▐▌▐█·▐█ ▌▐▌▐█·▐▀▀▪▄▐▀▀▄ 
echo   [38;2;153;255;153m ██. ██ ▐█▌▐█▄▪▐█▐███▌▐█▌.▐▌▐█•█▌██. ██     ▐█▄▪▐█▐█▪·•▐█ ▪▐▌██ ██▌▐█▌██ ██▌▐█▌▐█▄▄▌▐█•█▌
echo   [38;2;51;255;51m ▀▀▀▀▀• ▀▀▀ ▀▀▀▀ ·▀▀▀  ▀█▄▀▪.▀  ▀▀▀▀▀▀•      ▀▀▀▀ .▀    ▀  ▀ ▀▀  █▪▀▀▀▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀
echo.
set /p webhook=Enter the webhook URL: 
curl --head --silent --fail "%webhook%" >nul 2>&1
if %errorlevel% neq 0 (
echo    [38;2;144;238;144m╔════════════════════════════════════════════════════════════════════════════════╗
echo    ║       [38;2;255;99;71mERROR: Failed to connect to the webhook. The webhook might not be real. [38;2;144;238;144m ║
echo    [38;2;144;238;144m╚════════════════════════════════════════════════════════════════════════════════╝
  pause
  goto menu
)
set /p message=Enter the message to send: 
set /p count=Enter the number of times to send the message:
echo   [38;2;144;238;144m╔══════════════════════════════╗ 
echo   ║[38;2;144;238;144mConnecting to the webhook     ║
echo   [38;2;144;238;144m╚══════════════════════════════╝
timeout /t 5 >nul
echo.
setlocal enabledelayedexpansion
for /l %%i in (1,1,%count%) do (
  set /a counter=%%i
  <nul set /p "=[?]Connection up. Sending messages"
  curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"!message!\"}" !webhook! >nul 2>&1
  if %errorlevel% neq 0 (
    echo.
    echo [38;2;255;99;71mError: Failed to connect to the webhook. The webhook might not be real
    pause
    goto menu
  )
  echo.
)
endlocal
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mMessages sent               ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
pause
goto menu

:port_manager
cls
echo.
echo     [38;2;51;255;51m ██████╗  ██████╗ ██████╗ ████████╗███████╗
echo     [38;2;51;255;51m ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝
echo     [38;2;153;255;153m ██████╔╝██║   ██║██████╔╝   ██║   ███████╗
echo     [38;2;51;255;51m ██╔═══╝ ██║   ██║██╔══██╗   ██║   ╚════██║
echo     [38;2;153;255;153m ██║     ╚██████╔╝██║  ██║   ██║   ███████║
echo     [38;2;51;255;51m ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                          
echo.
set /p action=open or close ports? (open--close) 

if /i "%action%"=="open" (
  goto OPENPORT
) else if /i "%action%"=="close" (
  goto CLOSEPORT
) else (
  echo [38;2;255;99;71mERROR
  pause
  goto menu
)

:OPENPORT
cls
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mOpening PORT                ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
set /p port=enter port to open
echo Opening port %port%
netsh advfirewall firewall add rule name="Open Port %port%" dir=in action=allow protocol=TCP localport=%port%
echo [38;2;144;238;144mPort %port% opened successfully.
pause
goto menu

:CLOSEPORT
cls
echo [38;2;144;238;144m╔════════════════════════════════════╗
echo ║        [38;2;144;238;144mClosing PORT                ║
echo [38;2;144;238;144m╚════════════════════════════════════╝
set /p port=Enter port to close
echo Closing port %port%
netsh advfirewall firewall delete rule name="Open Port %port%" dir=in protocol=TCP localport=%port%
echo [38;2;144;238;144mPort %port% closed successfully
pause
goto menu

:ip
cls
echo.
echo                  [38;2;51;255;51m▄█     ▄███████▄       ▄█  ███▄▄▄▄      ▄████████  ▄██████▄  
echo                 [38;2;51;255;51m███    ███    ███      ███  ███▀▀▀██▄   ███    ███ ███    ███ 
echo                 [38;2;51;255;51m███▌   ███    ███      ███▌ ███   ███   ███    █▀  ███    ███ 
echo                 [38;2;102;255;102m███▌   ███    ███      ███▌ ███   ███  ▄███▄▄▄     ███    ███ 
echo                 [38;2;153;255;153m███▌ ▀█████████▀       ███▌ ███   ███ ▀▀███▀▀▀     ███    ███ 
echo                 [38;2;204;255;204m███    ███             ███  ███   ███   ███        ███    ███ 
echo                 [38;2;229;255;229m███    ███             ███  ███   ███   ███        ███    ███ 
echo                 [38;2;229;255;229m█▀    ▄████▀           █▀    ▀█   █▀    ███         ▀██████▀  

echo.                                                              
set /p ip=".                          enter ip address : "



curl "http://ipinfo.io/%ip%/json"


pause
goto menu

:discord_nitro_gen
cls
echo.
echo                                         [38;2;229;255;229m╔═══════════════════════════════════╗
echo                                         [38;2;229;255;229m║ [94m┳┓┳┏┓┏┓┏┓┳┓┳┓  ┳┓┳┏┳┓┳┓┏┓  ┏┓┏┓┳┓ [38;2;229;255;229m║
echo                                         [38;2;229;255;229m║ [94m┃┃┃┗┓┃ ┃┃┣┫┃┃  ┃┃┃ ┃ ┣┫┃┃  ┃┓┣ ┃┃ [38;2;229;255;229m║
echo                                         [38;2;229;255;229m║ [94m┻┛┻┗┛┗┛┗┛┛┗┻┛  ┛┗┻ ┻ ┛┗┗┛  ┗┛┗┛┛┗ [38;2;229;255;229m║   
echo                                         [38;2;229;255;229m╚════╦══════════════════════════════╝  
echo                                              ║  
echo                    ╔═════════════════════════╝   
echo                    ║
echo                    ║   
set /p "choice=.                  ╚══════[ WEBHOOK ] : [38;2;51;255;51m"        
color 4
cls
echo Generating Discord Nitro Codes...

setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=10000000000"
set "code_length=20"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo https://discord.com/gift/!code!
)

endlocal

pause
goto menu                                           
pause>nul
exit

:product_key
cls
echo.
echo LOADING...
timeout /t 2 >nul
cls
echo.
echo LOADING.
timeout /t 2 >nul
cls
echo.
echo LOADING..
timeout /t 2 >nul
cls
echo.
powershell -Command "(Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform').BackupProductKeyDefault" > temp.txt
set /p key=<temp.txt
del temp.txt
if "%key%"=="" (
    echo Impossible to found key :(.
    echo connect to microsoft account !!.
) else (
    echo     [38;2;229;255;229mYour product key is :[38;2;0;255;0m %key%
)
echo.
pause
goto menu                                           
pause>nul
exit

:tiktok_bot
cls
echo.
echo      [38;2;51;255;255m████████╗██╗██╗  ██╗████████╗ ██████╗ ██╗  ██╗    ██╗   ██╗██╗███████╗██╗    ██╗    ██████╗  ██████╗ ████████╗
echo      [38;2;102;204;255m╚══██╔══╝██║██║ ██╔╝╚══██╔══╝██╔═══██╗██║ ██╔╝    ██║   ██║██║██╔════╝██║    ██║    ██╔══██╗██╔═══██╗╚══██╔══╝
echo         [38;2;153;153;255m██║   ██║█████╔╝    ██║   ██║   ██║█████╔╝     ██║   ██║██║█████╗  ██║ █╗ ██║    ██████╔╝██║   ██║   ██║   
echo         [38;2;204;102;255m██║   ██║██╔═██╗    ██║   ██║   ██║██╔═██╗     ╚██╗ ██╔╝██║██╔══╝  ██║███╗██║    ██╔══██╗██║   ██║   ██║   
echo         [38;2;255;51;255m██║   ██║██║  ██╗   ██║   ╚██████╔╝██║  ██╗     ╚████╔╝ ██║███████╗╚███╔███╔╝    ██████╔╝╚██████╔╝   ██║   
echo         [38;2;255;0;204m╚═╝   ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝      ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝     ╚═════╝  ╚═════╝    ╚═╝   
echo.
echo        [38;2;229;255;229m[[38;2;255;0;204m https://fireliker.com/free-tiktok-view-bot[38;2;229;255;229m ]  (Click any Key to Open)
pause>nul
start https://fireliker.com/free-tiktok-view-bot
goto menu                                           
pause>nul
exit

:password_gen
cls
echo.
echo              [38;2;255;0;0m██████   █████  ███████ ███████ ██     ██  ██████  ██████  ██████       ██████  ███████ ███    ██
echo              [38;2;255;33;0m██   ██ ██   ██ ██      ██      ██     ██ ██    ██ ██   ██ ██   ██     ██       ██      ████   ██
echo              [38;2;255;66;0m██████  ███████ ███████ ███████ ██  █  ██ ██    ██ ██████  ██   ██     ██   ███ █████   ██ ██  ██
echo              [38;2;255;99;0m██      ██   ██      ██      ██ ██ ███ ██ ██    ██ ██   ██ ██   ██     ██    ██ ██      ██  ██ ██
echo              [38;2;255;132;0m██      ██   ██ ███████ ███████  ███ ███   ██████  ██   ██ ██████       ██████  ███████ ██   ████
echo.
setlocal enabledelayedexpansion

REM Set the log file path and initialize the log
set "log_file=log.txt"
echo Generating random passwords > "%log_file%"

REM Initialize variables
set "password_length=12"
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+"

REM Prompt the user for the number of passwords to generate
set /p "num_passwords=Enter the number of passwords to generate: "
echo.

REM Prompt the user for password length
set /p "password_length=Enter the password length (default is 12): "
echo.

REM Prompt the user to choose character sets
set /p "use_lowercase=Include lowercase letters (Y/N)? "
if /i "!use_lowercase!"=="Y" set "characters=!characters!abcdefghijklmnopqrstuvwxyz"
echo.
set /p "use_uppercase=Include uppercase letters (Y/N)? "
if /i "!use_uppercase!"=="Y" set "characters=!characters!ABCDEFGHIJKLMNOPQRSTUVWXYZ"
echo.
set /p "use_digits=Include digits (Y/N)? "
if /i "!use_digits!"=="Y" set "characters=!characters!0123456789"
echo.
set /p "use_special=Include special characters (Y/N)? "
if /i "!use_special!"=="Y" set "characters=!characters!@#$%^&*()_+"

echo.
REM Set the logging level (verbose, minimal, errors only)
set /p "log_level=Select logging level (verbose/minimal/errors): "

echo.
REM Initialize the password variable
set "password="

REM Function to evaluate password strength
:EvaluatePasswordStrength
set "complexity=Weak"
if %password_length% geq 8 (
    set "complexity=Medium"
    if %password_length% geq 12 (
        set "complexity=Strong"
    )
)

REM Generate the random passwords and log
for /l %%j in (1,1,%num_passwords%) do (
    set "password="
    for /l %%i in (1,1,%password_length%) do (
        set /a "random_index=!random! %% 81"
        for %%a in (!random_index!) do set "char=!characters:~%%a,1!"
        set "password=!password!!char!"
    )

    echo Password %%j: !password!
    if /i "!log_level!"=="verbose" echo Password %%j: !password! >> "%log_file%"
    if /i "!log_level!"=="minimal" echo Password %%j generated >> "%log_file%"
)

REM Close the log file
echo Script finished >> "%log_file%"

REM Display the complexity of the generated passwords
echo Password Complexity: %complexity%
echo Password Complexity: %complexity% >> "%log_file%"

REM Pause to keep the window open
pause

endlocal

pause>nul
goto menu                                           
pause>nul
exit

:bat2exe
cls
echo.
echo                             [38;2;138;43;226m██████╗  █████╗ ████████╗   ██████╗       ███████╗██╗  ██╗███████╗
echo                             [38;2;160;74;200m██╔══██╗██╔══██╗╚══██╔══╝   ╚════██╗      ██╔════╝╚██╗██╔╝██╔════╝
echo                             [38;2;186;85;211m██████╔╝███████║   ██║█████╗ █████╔╝█████╗█████╗   ╚███╔╝ █████╗
echo                             [38;2;211;98;221m██╔══██╗██╔══██║   ██║╚════╝██╔═══╝ ╚════╝██╔══╝   ██╔██╗ ██╔══╝
echo                             [38;2;240;118;220m██████╔╝██║  ██║   ██║      ███████╗      ███████╗██╔╝ ██╗███████╗
echo                             [38;2;255;105;180m╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚══════╝      ╚══════╝╚═╝  ╚═╝╚══════╝
echo.
echo                               ---Currently Not Available. Please Wait for Further Release---
echo.
timeout 2 >nul
echo.
                             pause
echo.
echo MADE BY GEOKAZ /// /
goto menu