@echo off
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
set/p rankto=Rankto? :
set/a rankcurrent=-1
set prev=%max%*2
:rank
set/a rankcurrent+=1
set/a drain = (( %max% - %min% )*100) / ( 100 + %rankcurrent% * %dil%) + %min%
set/a diff=%prev% - %drain%
echo. %rankcurrent%   =  %drain%
echo. D         =    )%diff%
set/a prev=%drain%
if not %rankto%==0 (
	if %rankcurrent%==%rankto% goto:start
) else (
	if %drain%==%min% goto:start
)
goto:rank