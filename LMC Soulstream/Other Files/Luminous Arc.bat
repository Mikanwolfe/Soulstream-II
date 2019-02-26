@echo off
:start
cls
echo.
set/a p1.health=600
set/a p1.energy=700
set/p p1.health=Health:
set/p p1.energy=Energy:
set/a lmc.h=%p1.health% / 4 * 3
set/a p1.health-=%lmc.h%

set/a lmc.e=%p1.energy%
set/a p1.energy=0

set/a lmc.a=(%lmc.e% + %lmc.h%) / 6
set/a lmc.r=0
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo. Energy -%lmc.e%
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo. Health -%lmc.h%
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo. Darkha selim meder dau sabi,
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo. Luminous Arc.
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo. 
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo. 
echo.  \
echo.   +                     -
echo.  /
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   /
echo.  /
echo.  \
echo.   +                     -
echo.  /
echo.  \
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   /
echo.  //
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. //
echo. \//
echo.  \/
echo.   +                     -
echo.  /\
echo. /\\
echo. \\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
timeout 0 >nul

:p1.arc.r
if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +  -              -   - %lmc.v%
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total


if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.      /
echo.    //
echo.   //
echo.  ///
echo.  //
echo. /\//
echo.   +        -            - %lmc.v%
echo. \/\\
echo.  \\
echo.  \\\
echo.   \\
echo.    \\
echo.      \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total

if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.      /
echo.    //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +      -          -   - %lmv.v%
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.    \\
echo.      \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total
goto p1.arc.r

:p1.arc.f
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. //
echo. \/
echo.  \/
echo.   +                     -
echo.  /\
echo. /\
echo. \\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  
echo. 
echo. \
echo.  \/
echo.   +                     -
echo.  /\
echo. /
echo. 
echo.  
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  
echo. 
echo. 
echo.  \
echo.   +                     -
echo.  /
echo. 
echo. 
echo.  
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  
echo. 
echo.                 Total Damage -%lmc.g%
echo.  
echo.   +                     -
echo.  
echo. 
echo. 
echo.  
echo.   
echo.     
echo.-----------------------------------
timeout 3 >nul
set/a p1.energy-=%lmc.e%
set/a p2.damage=%lmc.g%
set/a p1.arc.ct=3
goto start
