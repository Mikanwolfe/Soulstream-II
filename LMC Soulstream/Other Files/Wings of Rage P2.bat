@echo off
:start
set/a lmc.d=(27 * %random%) / 32768 + 1
set/a lmc.d+=8
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=%lmc.d% / 2

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p2.wrg.c
set/a p2.energy-=%lmc.e%
set/a p1.damage=%lmc.d%
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
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo.                 Energy -%lmc.e%
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
echo.                          /
echo.   +                     -
echo.                          \
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
echo.                          \/
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /\
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
echo.                           \
echo.                          \/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                          /\
echo.                           /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                          \\
echo.                         \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //\
echo.                          //
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        -  \
echo.                           \
echo.                         \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //\
echo.                           /
echo.                        -  /
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       \
echo.                   -    \
echo.                         \
echo.                        \\\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                        ///
echo.                         /
echo.                   -    /
echo.                       /
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.            -            \
echo.            /             \\
echo.          //             \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.          \\             //\
echo.            \             //
echo.            -            /
echo.                       
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.                        
echo.                         
echo.     /                   \/
echo.   //                   \/
echo.   +                     -
echo.   \\                   /\
echo.     \                   /\
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
echo.  \                      \/
echo.   +                     -
echo.  /                      /\
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
echo.  \                       
echo.                        
echo.\                      
echo.   +                     -
echo./                      
echo.                        
echo.  /                      
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
echo. %lmc.v%
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
goto start