:: Copyright MRC STUDIOS
:: LimitLess ALPHA v0.1
:: If your seeing this, you did something wrong. 
@echo off
color 03
title LimitLess
MODE CON:COLS=90 LINES=30
:: File Checker
IF NOT EXIST "%cd%\sounds\menu.mp3" GOTO :existerror 
IF NOT EXIST "%cd%\sounds\intro.mp3" GOTO :existerror
IF NOT EXIST "%cd%\settings\existerror.txt" GOTO :existerror 
IF NOT EXIST "%cd%\settings\intro.txt" GOTO :existerror 
IF NOT EXIST "%cd%\settings\loading.txt" GOTO :existerror 
IF NOT EXIST "%cd%\settings\wmperror.txt" GOTO :existerror 
IF NOT EXIST "C:\Program Files (x86)\Windows Media Player\wmplayer.exe" goto :wmperror
IF NOT EXIST "C:\Program Files\Windows Media Player\wmplayer.exe" goto :wmperror
goto :loading
:wmperror
for /f "delims=" %%a in (%cd%\settings\wmp.txt) DO ( 
%%a
)
:existerror
for /f "delims=" %%a in (%cd%\settings\existerror.txt) DO ( 
%%a
)
:loading
for /f "delims=" %%a in (%cd%\settings\loading.txt) DO ( 
%%a
)
:INTRO
color F0
set "file=%cd%\sounds\intro.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%cd%\sounds\intro.vbs
start /min %cd%\sounds\intro.vbs
cls
cmdbkg "settings/MRC.png" /t 100 /c
TIMEOUT 5
GOTO :MENU

:MENU
cls
Taskkill  /F /IM wscript.exe
set "file=%cd%\sounds\menu.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%cd%\sounds\menu.vbs
start /min %cd%\sounds\menu.vbs

cmdbkg "settings/MENU.png" /t 50 
color F
ECHO.
ECHO.
ECHO.                         
ECHO.                             
ECHO.                             
ECHO.                             
ECHO.                             
ECHO.                                          
ECHO.                                      
ECHO.                               
ECHO.                             
ECHO.                             
ECHO.                             
ECHO.                            
ECHO.                                                                
echo.
ECHO.
ECHO.                                                  
ECHO.
ECHO.                             
ECHO.                             
ECHO.    
ECHO.       
ECHO.               
ECHO.                        
echo.        
echo.
echo.
echo.
echo.
echo. 
set /p MENU=Type out an option(In ALL CAPS): 
if "%MENU%"=="PLAY" goto :PLAY
if "%MENU%"=="ABOUT" goto :ABOUT 
if "%MENU%"=="HELP" goto :HELP
if "%MENU%"=="DEV" goto :DEV
cls
color FC
echo. "%MENU%" isn't a valid option.
start error.vbs
TIMEOUT 10
goto :MENU

:HELP
cls
color FC
echo. 
echo.
echo.                                                                         
echo.                                                                         
echo.                              H E L P
echo. 
echo.
echo.                                                                         
echo.                   -Run ALL commands in CAPITALS                     
echo.                   -If you want to contact me, goto menu and type ABOUT
echo. 
echo.
echo.                                                                         
echo.                   - Type "WIKI" to see the tutorial/wiki page      
echo.
echo. 
echo.
echo.                                                                         
echo.                                                                         
echo.
echo. 
echo.
echo.                                                                         
echo.                                                                         
echo.
echo. 
echo.
echo.                                                                        
echo.                                                                         
echo.
set /p HELP=Type MENU to return...:
if "%HELP%"=="MENU" goto :MENU
if "%HELP%"=="WIKI" start https://github.com/mrc2rules/LimitLess/wiki/
cls
color FC
echo. "%HELP%" isn't a valid option.
start error.vbs
TIMEOUT 10
goto :HELP

:ABOUT
color F
cls
Taskkill  /F /IM wscript.exe
cmdbkg "MENU.png" /t 50
echo. 
echo.
echo.                                                                         
echo.                                                                         
echo.
echo.
ECHO.
ECHO.
ECHO.
echo.
echo.                                   LimitLess
echo.                                  
echo.                            Developed by MRC STUDIOS
echo.                                  
echo.        The Game is still at Alpha Stage. Many things still to be finished.
echo.                                  
echo.                                  
echo.                                     v0.1
echo.        
echo.                                             
echo.    
echo.    [1] GitHub:                                     [3] Instagram
echo.  ^>^>^> https://github.com/mrc2rules/LimitLess    ^>^>^> mrc2rules
echo.                         
echo.    [2] Discord                                     [4] Twitter
echo.  ^>^>^> https://discord.gg/rvAbw8h                ^>^>^> mrc2rules                                          
echo.
echo.
echo. Type, 1/2/3/4 to open in a browser.
echo. 
echo.
echo. Type MENU to return
echo.
set /p ABT=Enter Text:
if "%ABT%"=="MENU" goto :MENU 
if "%ABT%"=="1" goto :GitHub 
if "%ABT%"=="2" goto :Discord  
if "%ABT%"=="3" goto :Instagram
if "%ABT%"=="4" goto :twitter 
 
cls
color FC
echo. "%ABT%" isn't a valid option.
start error.vbs
TIMEOUT 10
goto :ABOUT
:Instagram
start https://instagram.com/mrc2rules/
goto :ABOUT
:twitter
start https://twitter.com/mrc2rules/
goto :ABOUT
:GitHub
start https://github.com/mrc2rules/LimitLess
goto :ABOUT
:Discord
start https://discord.gg/rvAbw8h
goto :ABOUT
:PLAY
color F
cls
Taskkill  /F /IM wscript.exe
cmdbkg "settings/start.png" /t 50
echo.                                                                
echo.                                                                
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                             
echo.
echo.                     
echo.                         
echo.                
echo.
echo.
echo.
echo.
echo.
echo.
echo. Options:
echo. Menu, Start
set /p PLAY=Type out an Option:
if "%PLAY%"=="MENU" goto :MENU
if "%PLAY%"=="START" goto :SG
cls
color FC
echo. "%PLAY%" isn't a valid option.
start error.vbs
TIMEOUT 10
goto :PLAY

:SG
cls
cmdbkg "settings/no.jpg" /t 50

TIMEOUT 10
goto :MENU
:DEV
cls
color 0B

echo. 
echo. This is DEV Portal

echo    Main
echo.
echo [1] Intro
echo [2] Loading
echo [3] Help
echo [4] About
echo [5] Play
echo.
echo     Sounds Menu
echo [6] Background
echo [7] Intro
echo [8] Stop Sound

set /p ABT=Enter number:
if "%ABT%"=="1" goto :INTRO 
if "%ABT%"=="2" goto :loading  
if "%ABT%"=="3" goto :HELP
if "%ABT%"=="4" goto :ABOUT
if "%ABT%"=="5" goto :PLAY
if "%ABT%"=="6" goto :BACKGROUND
if "%ABT%"=="7" goto :INTRO 
if "%ABT%"=="8" Taskkill  /F /IM wscript.exe
echo. Not a valid option
pause >nul
goto :DEV
:BACKGROUND
set "file=%cd%\sounds\menu.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%cd%\sounds\menu.vbs
start /min %cd%\sounds\menu.vbs
goto :DEV
:INTRO 
set "file=%cd%\sounds\intro.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%cd%\sounds\intro.vbs
start /min %cd%\sounds\intro.vbs
GOTO :DEV
pause
