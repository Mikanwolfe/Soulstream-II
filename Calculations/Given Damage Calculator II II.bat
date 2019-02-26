@echo off
title Given Damage Calculator

color 0f


::init variables
set sk_max=100
set sk_min=0
set sk_dil=25
set sk_bal=100
set pl_mod=0
set pl_sr=10
set pl_bal=10

:start
echo.
set/p sk_max=Skill Maximum    =
echo. Skill Max = %sk_max%
set/p sk_min=Skill Minimum    =
echo. Skill Min = %sk_min%
set/p sk_dil=Skill Dilation   =
echo. Skill Dilation = %sk_dil%
set/p sk_bal=Skill Balance    =
echo. Skill Balance = %sk_bal%
set/p pl_mod=Player Modifiers =
echo. Player Modifiers = %pl_mod%
set/p pl_sr=Player Skill Rank =
echo. Player Skill Rank = %pl_sr%
set/p pl_bal=Player Balance   =
echo. Player Balance Modifier = %pl_bal%

:poststart
cls
echo.
set/p pl_sr=Player Skill Rank =
echo. Player Skill Rank = %pl_sr%

::find current skills absolute maximum
set/a given_max=( %sk_max% - %sk_min% )-((( %sk_max% - %sk_min% ) * 100 )/( 100 + (( %pl_sr% - 1 ) * %sk_dil% ))) + %sk_min%
set/a given_max=%given_max% + %pl_mod%
::time to find skill rank (F - whatnot)

::current damage * 0.96
set/a range=%sk_max% - %sk_min%
set/a current_int=%range% * 96 /1600
set/a current_rank=(%given_max% - %sk_min%) / %current_int%
::this should give the current rank as 0.96. time to categorise

if "%current_rank%"=="0"  set current_hex=Not Learnt
if "%current_rank%"=="1"  set current_hex=Novice
if "%current_rank%"=="2"  set current_hex=F
if "%current_rank%"=="3"  set current_hex=E
if "%current_rank%"=="4"  set current_hex=D
if "%current_rank%"=="5"  set current_hex=C
if "%current_rank%"=="6"  set current_hex=B
if "%current_rank%"=="7"  set current_hex=A
if "%current_rank%"=="8"  set current_hex=9
if "%current_rank%"=="9"  set current_hex=8
if "%current_rank%"=="10" set current_hex=7
if "%current_rank%"=="11" set current_hex=6
if "%current_rank%"=="12" set current_hex=5
if "%current_rank%"=="13" set current_hex=4
if "%current_rank%"=="14" set current_hex=3
if "%current_rank%"=="15" set current_hex=2
if %current_rank% geq 16 set current_hex=1
::okay, current rank is current_hex, so time to find minimum

set/a given_min=%given_max% - ((%given_max% * 100)/(100 + %sk_bal% * %pl_bal% / 10))
::all done?
echo.
echo. Current Skill Level is %pl_sr%
echo. Current Skill Rank is %current_hex%
echo. Skill Damage = %given_min% ~ %given_max%
echo.
pause >nul
goto:poststart

