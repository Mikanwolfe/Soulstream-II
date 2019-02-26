@echo off
title Min-Max Calculator
set/a max=100

:start
echo.
set/p max=Max Damage      =
set/p bal=Balance (value) =
set/a min=%max% - (%max% * 100 /(100+%bal%))
echo. Value Range      : %min%~%max%
set/a _percentage=100-%min%*100/%max%
echo. Percentage Range : %_percentage%%%
goto:start