set/a DEF=200
set/a DFP=0
set/a DMG=100
set/a PRT=0
cls
goto start

::defence calculations
::usage call:funct.defence [P1_DEF] [P2_DFP] [DMG] [PROT (float 100)]
::returns damage as funct.return
:funct.defence
set/a cal.def=%1-%2
set/a funct.return = 10000/(100+%1-%2)
if %cal.def% lss 1 set/a funct.return=%3

goto:eof

:start

set/p DEF=Player1 DEF=
::set/p DFP=Player2 DFP=
::set/p DMG=Player1 DMG=
::set/p PRT=Player1 PRT=

call:funct.defence %def% %dfp% %dmg% %prt%
echo. Damage: %funct.return%
set/a reduction=100-%funct.return%
echo. Reduction: %reduction%%%
goto start