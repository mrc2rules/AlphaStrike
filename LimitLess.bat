:: Copyright MRC STUDIOS
:: LimitLess ALPHA v0.1
:: If your seeing this, you did something wrong. 
@echo off
color 03
title VisionSTRIKE
:existcheck
IF NOT EXIST "%cd%\sounds\menu.mp3" GOTO :existerror 
IF NOT EXIST "%cd%\sounds\intro.mp3" GOTO :existerror 
goto :welcome
:existerror
cls
color FC
echo. LimitLess v0.1-alpha
echo.
echo.
echo. The program could'nt start because some files were missing.
ECHO.
echo. Make sure you have extracted the * COMPLETE * folder and 3 .mp3 files should be present in it.
echo. If it's there and it still doesn't work, contact me for further support
echo.
echo. The program will now close in 30 seconds.
TIMEOUT 30
exit

:welcome
 ECHO.-                                                                                         -
PING 1.1.1.1 -n 0 -w 500 >NUL
MODE CON:COLS=100 LINES=30
 ECHO.-                                      W           E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W           E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E       M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E       M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E L   O M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E L   O M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E L C O M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E L C O M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                      W E L C O M E                                      -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                    ! W E L C O M E !                                    -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                   !  W E L C O M E  !                                   -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                  !   W E L C O M E   !                                  -
PING 1.1.1.1 -n 1 -w 500 >NUL
CLS
 ECHO.-                                 !    W E L C O M E    !                                 -
PING 1.1.1.1 -n 2 -w 500 >NUL
CLS
 ECHO.-                                !     W E L C O M E     !                                -
goto :MMENU


:MMENU
color F0
@echo off
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
for /f "delims=" %%a in (%cd%\SETTINGS\intro.txt) DO ( 
%%a
)
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

color 0C
ECHO.
ECHO.
ECHO.                         
ECHO.                             
ECHO.                             
ECHO.                             
ECHO.                             
ECHO.                                      %DATE%    
ECHO.                                      %TIME%
ECHO.                              __  __ ______ _   _ _    _ 
ECHO.                             ^|  \/  ^|  ____^| \ ^| ^| ^|  ^| ^|
ECHO.                             ^| \  / ^| ^|__  ^|  \^| ^| ^|  ^| ^|
ECHO.                             ^| ^|\/^| ^|  __^| ^| . ` ^| ^|  ^| ^|
ECHO.                             ^| ^|  ^| ^| ^|____^| ^|\  ^| ^|__^| ^|
ECHO.                             ^|_^|  ^|_^|______^|_^| \_^|\____/                                    
echo.
ECHO.
ECHO.                                                  
ECHO.
ECHO.                             
ECHO.                             
ECHO.    
ECHO.         __________            __________            __________
ECHO.        ^|          ^|          ^|          ^|          ^|          ^|       
ECHO.        ^|  ABOUT   ^|          ^|   PLAY   ^|          ^|          ^|                 
echo.        ^|__________^|          ^|__________^|          ^|__________^|
echo.
echo.
echo.
echo.
echo. If you don't type in all caps, there will be errors.
set /p input=Type out an option(In ALL CAPS): 
if "%input%"=="PLAY" goto :PLAY NOT GOTO :ERROR
if "%input%"=="ABOUT" goto :ABOUT NOT GOTO :ERROR


:ERROR
cls
Taskkill  /F /IM wscript.exe
color FC
start error.vbs
TIMEOUT 10
goto :MENU

:ROBUX
cls
Taskkill  /F /IM wscript.exe
set "file=ignorethis.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >robux.vbs
start /min robux.vbs
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Were no strangers to love
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. You know the rules and so do I
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. A full commitment's what Im thinking of
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. You wouldn't get this from any other guy
PING 1.1.1.1 -n 1 -w 500 >NUL
ECHO.
echo. I just wanna tell you how Im feeling
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Gotta make you understand
PING 1.1.1.1 -n 1 -w 500 >NUL
ECHO.
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna give you up
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna let you down
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna run around and desert you
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna make you cry
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna say goodbye
PING 1.1.1.1 -n 1 -w 500 >NUL
echo. Never gonna tell a lie and hurt you
PING 1.1.1.1 -n 1 -w 500 >NUL

set /p input=Type MENU to return...:
if "%input%"=="MENU" goto :MENU NOT goto :ERROR


:ABOUT
color 0A
cls
Taskkill  /F /IM wscript.exe
echo. 
echo.
echo.                                                                         %date%
echo.                                                                         %time%
echo.
echo.
ECHO.
ECHO.
ECHO.
echo.
echo.                                              LimitLess
echo.                                  
echo.                                       Developed by MRC STUDIOS
echo.                                  
echo.                       The Game is still at Alpha Stage. Many things still to be finished.
echo.                                  
echo.                                  
echo.                                                v0.1
echo.        
echo.                                             
echo.    
echo.      GitHub:                                            Instagram/Twitter
echo.  >>> https://github.com/mrc2rules/LimitLess         >>> @mrc2rules
echo.                         
echo.      Discord     
echo.  >>> https://discord.gg/rvAbw8h                                                         
echo.
echo.
echo.
echo.
echo.
set /p input=Type MENU to return...:
if "%input%"=="MENU" goto :MENU NOT goto :ERROR

:PLAY
color F8
cls
Taskkill  /F /IM wscript.exe
echo.                                                                %DATE%
echo.                                                                %TIME%
echo.
echo.
echo.
echo.                              H E L L O
echo.
echo.                     Hello! This is still in development
echo.                         Thanks for being interested!!
echo.                
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p input=Type MENU to return...:
if "%input%"=="MENU" goto :MENU NOT goto :ERROR

pause
