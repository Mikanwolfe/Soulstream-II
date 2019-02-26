set def=50
set prot=75
:start
set/p def=Defence=
::set/p prot=Protection=
set/a maxdef=100-(((100-%def%) * %prot%) / 100)
echo %maxdef%
goto:start