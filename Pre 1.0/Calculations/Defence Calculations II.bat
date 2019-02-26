set/a DEF=200
set/a DFP=0
set/a DMG=100
set/a PRT=0
goto start

::defence calculations
::usage call:funct.defence [P1_DEF] [P2_DFP] [DMG] [PROT (float 100)]
::returns damage as funct.return
:funct.defence
set/a cal.def=10+%1-%2
if %cal.def% gtr 500 set/a cal.def=500
set/a funct.return = (((10000/(110+%1-%2))*%3)*(100-%4))/100,000
if %cal.def% lss 1 set/a funct.return=%3

goto:eof

:start
cls
set/p DEF=Player1 DEF=
set/p DFP=Player2 DFP=
set/p DMG=Player1 DMG=
set/p PRT=Player1 PRT=

call:funct.defence %def% %dfp% %dmg% %prt%
echo. Damage: %funct.return%
pause
goto start