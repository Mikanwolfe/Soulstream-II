@echo off
echo.
set/p p1.blk.sm=blk.sm=
:p1.blk.e
set/a lmc.d=(18 * %random%) / 32768 + 1
set/a lmc.d+=2
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=(%lmc.d% / 3) * 2
set/a lmc.d= (%lmc.d% * %p1.blk.sm%) / 10
set/a lmc.e= (%lmc.e% * %p1.blk.sm%) / 10

::Max Damage for this skill at Rank Legendary (Luminous Only 800% Damage) is 1,652,828,620,375,824,793,600 (1.6 Septillion Damage)

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p1.blk.c
cls
echo.
echo.
echo.
echo.
echo. ENERGY -%lmc.e%
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 1 >nul
cls
echo.
echo.
echo.
echo.
echo. 
echo.   /
echo.   +                     -
echo.   \
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.    /
echo.  //
echo.   +                     -
echo.  \\
echo.    \
echo.
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   /
echo.     /
echo. //
echo.   +                     -
echo. \\
echo.     \
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.  /
echo.   /
echo.   \
echo.   +                     -
echo.   /
echo.   \
echo.  \
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  
echo.  /                          / 
echo.  \                       /
echo.   +=====================-
echo.  /                       \
echo.  \                          \
echo.  
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.   /
echo.  //
echo.  \
echo.   +                     -
echo.  /
echo.  \\
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   
echo.  /
echo.  \
echo.   +                     -
echo.  /
echo.  \
echo.   
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
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
echo. LMC Skill Tester...
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.                     %lmc.v%
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
echo. LMC Skill Tester...
timeout 1 >nul

echo skill-multiplier = %p1.blk.sm% >>blacklighttest.txt
echo. >>blacklighttest.txt
echo skill-damage = %lmc.v% >> blacklighttest.txt
echo. >>blacklighttest.txt
goto p1.blk.e


