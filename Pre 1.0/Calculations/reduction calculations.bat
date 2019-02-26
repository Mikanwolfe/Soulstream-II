set/a reduction=0

:start
set/p reduction=REDUCTION:
set/a max=100-((100-%reduction%)*75/100)
echo. %max%
goto:start