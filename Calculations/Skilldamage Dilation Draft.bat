@echo off
color 0f
title skilldrain calculator
set/a max=400
set/a min=160
set/a dil=25
:start

set/p max=      Max=
set/p min=      Min=
set/p dil= Dilation=
echo. Max      : %max%
echo. Min      : %min%
echo. Dilation : %dil%
set/p rankto=Damage to? :
set/a rankcurrent=-1
set prev=%max%*2
:rank
set/a rankcurrent+=1
set/a drain = (%max%-%min% - (((%max%-%min%) * 100)/(100+%rankcurrent%*%dil%)))+%min%
echo. %rankcurrent%   =  %drain%
if not %rankto%==0 (
	if %drain% geq %rankto% goto:start
) else (
	if %drain%==%max% goto:start
)
goto:rank