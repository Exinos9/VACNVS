@echo off
mode 110,45
title VAC NO PUDO VERIFICAR TU SESION
:inicio
echo  @@     @@  @@@@   @@@@@@    @  @  @  @   @    @@@  @@@@
echo   @@   @@  @    @  @         @ @      @   @    @    @   @
echo    @@ @@   @@@@@@  @         @@    @  @   @    @@@  @   @
echo     @@@    @    @  @         @ @   @  @   @    @    @@@@
echo      @     @    @  @@@@@@    @  @  @  @@@ @@@  @@@  @   @
echo =======================================
echo =                 MENU                =
echo =======================================
echo =    1. deletevalue nointegritychecks =
echo =    2. deletevalue loadoptions       =
echo =    3. debug off                     =
echo =    4. deletevalue nx                =
echo =    5. reparar steam (admin)         =
echo =    6. Update                        =
echo =    7. Salir                         =
echo =======================================
set /p menu=Opcion=
if "%menu%"=="1" goto op1 
if "%menu%"=="2" goto op2 
if "%menu%"=="3" goto op3 
if "%menu%"=="4" goto op4 
if "%menu%"=="5" goto op5 
if "%menu%"=="6" goto Update 
if "%menu%"=="7" goto Salir 
 
goto in
:op1
bcdedit /deletevalue nointegritychecks
pause
cls
goto inicio
:op2
bcdedit /deletevalue loadoptions
pause
cls
goto inicio
:op3
bcdedit /debug off
pause
cls
goto inicio
:op3
bcdedit /deletevalue nx
pause
cls
goto inicio
:op4
// Canbiar por su ruta de steamservice.exe \\
"C:\Program Files (x86)\Steam\bin\steamservice.exe" /repair
pause
cls
goto inicio
:Update
Start https://github.com/Exinos9/VACNVS
cls
goto inicio
:Salir	
cls&exit
:in
cls
goto inicio
