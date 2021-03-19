# Copyright MRC STUDIOS
# VISIONSTRIKE ALPHA v0.1
# If your seeing this, you did something wrong. 
@echo off
color 03
title VisionSTRIKE
Taskkill  /F /IM wscript.exe

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
set "file=intro.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >intro.vbs
start /min intro.vbs
cls
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
echo.                               II          IIEEEEEE     IIEEEEEEEE
echo.                               IIII      IIII      II   II
echo.                               II  II  II  II      II   II
echo.                               II    II    IIEEEEEEII   II
echo.                               II          II      II   II
echo.                               II          II       II  II
echo.                               II          II        II IIEEEEEEEE
echo.          
echo.        
echo.                                          S T U D I O S 
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
TIMEOUT 5
GOTO :MENU

:MENU
cls
Taskkill  /F /IM wscript.exe
set "file=menu.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >menu.vbs
start /min menu.vbs
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
ECHO.        ^|  ABOUT   ^|          ^|   PLAY   ^|          ^|   ROBUX  ^|                 
echo.        ^|__________^|          ^|__________^|          ^|__________^|
echo.
echo.
echo.
echo.
echo. If you don't type in all caps, there will be errors.
set /p input=Type out an option(In ALL CAPS): 
if "%input%"=="PLAY" goto :PLAY NOT GOTO :ERROR
if "%input%"=="ABOUT" goto :ABOUT NOT GOTO :ERROR
if "%input%"=="ROBUX" goto :ROBUX NOT GOTO :ERROR

:ERROR
cls
Taskkill  /F /IM wscript.exe
color FC
echo. Make sure you wrote the command correctly. The command has to be all caps like this ---- ABOUT
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
echo.                                            VISIONSTRIKE
echo.                                  
echo.                                       Developed by MRC STUDIOS
echo.                                  
echo.                       The Game is still at Alpha Stage. Many things are still left
echo.                                  
echo.                                  
echo.                                                v0.1
echo.        
echo.                                             
echo.    
echo.      Changelog:                                             Known Bugs:
echo.   1. Squashed some bugs!                               1. Background sound keeps playing after exit. To stop,
echo.   2. Added Background Music                               go to any of the options (play,about,robux) THEN
echo.                                                           close the app!!
echo.
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
