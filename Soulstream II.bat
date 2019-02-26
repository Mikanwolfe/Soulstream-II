@echo off
setlocal EnableDelayedExpansion
color 0f
mode con: cols=100 lines=35
set ssii-version=II 1 17-10
::versions: cgr=current grahpics ver, compared to fgr file grahpics ver.
set  save_ver=1
set   cgr_ver=1
title Soulstream II %ssii-version% by Wolfe Lumi

::all sorts of init

if exist saves.bat ren saves.bat saves.ssii

if not exist saves.ssii (
	set save=II-II >saves.bat
	set saveversion=%saveversion% >>saves.bat
	ren saves.bat saves.ssii
)

if exist graphics.bat ren graphics.bat graphics.ssii
ren graphics.ssii graphics.bat
::if graphics.bat is called, the first is either 'version','skill','display'
call graphics.bat version
ren graphics.bat graphics.ssii
if defined fgr_ver goto:start.version

:: old II I
cls
echo.
echo. Your graphics file "graphics.ssii" for Soulstream II I, not II II.
pause
exit

:start.version
cls
echo.
if %cgr_ver%==%fgr_ver% goto:start.init
if %cgr_ver% lss %fgr_ver% echo. Your graphics file (graphics.ssii) is outdated, certain items may not function properly.
if %cgr_ver% gtr %fgr_ver% echo. Your version of Soulstream II is outdated, certain items may not function correctly.
pause >nul

:start.init
cls

::names!

call:funct.random 1 25
set/a ssii-1=%funct.return%
call:funct.random 1 25
set/a ssii-2=%funct.return%
if %ssii-1%==%ssii-2% set/a ssii.1+=1
if %ssii-2%==26 set/a ssii-2=-8

for %%G in (1,2) do (
	if !ssii.%%G!==1  set n%%G=Nao
	if !ssii.%%G!==2  set n%%G=Mari
	if !ssii.%%G!==3  set n%%G=Nickolai
	if !ssii.%%G!==4  set n%%G=Hide
	if !ssii.%%G!==5  set n%%G=Lumi
	if !ssii.%%G!==6  set n%%G=Ryuu
	if !ssii.%%G!==7  set n%%G=Tora
	if !ssii.%%G!==8  set n%%G=Kami
	if !ssii.%%G!==9  set n%%G=Theo
	if !ssii.%%G!==10 set n%%G=Lucia
	if !ssii.%%G!==12 set n%%G=Aria
	if !ssii.%%G!==13 set n%%G=Iria
	if !ssii.%%G!==14 set n%%G=Fear
	if !ssii.%%G!==15 set n%%G=Nao
	if !ssii.%%G!==16 set n%%G=Eweca
	if !ssii.%%G!==17 set n%%G=Laceda
	if !ssii.%%G!==18 set n%%G=Meles
	if !ssii.%%G!==19 set n%%G=Levi
	if !ssii.%%G!==20 set n%%G=Leymore
	if !ssii.%%G!==21 set n%%G=Kydos
	if !ssii.%%G!==22 set n%%G=Ryuu
	if !ssii.%%G!==23 set n%%G=Hywell
	if !ssii.%%G!==24 set n%%G=Fleta
	if !ssii.%%G!==25 set n%%G=Erinn
)

::init ssii universal limits
::check ssii-systemnotes

set ssii-crl=50
set ssii-dfl=600
set ssii-pnl=400
set ssii-ptl=75
set ssii.bll=2000
set ssii.bml=40
set ssii-acl=95
set ssii-pcl=10

set p1.loss=0
set p2.loss=0

::player general stats (hp,mp,sp,df,cr,bl)
for %%A in (p1,p2) do (
	for %%B in (hp,hpa,hpx,hpl,mp,mpa,mpx,mpl,sp,spa,spx,spl,df,dfa,dfx,bl,bla,blx,bl,bla,blx,pc,pca,pcx,cr,cra,crx,cm,cma,cmx) do (
		set %%A-%%B=0
	)
)
::player actual stats (st,dx,in,lk,wl)
for %%A in (p1,p2) do (
	for %%B in (st,sta,stx,dx,dxa,dxx,in,ina,inx,lk,lka,lkx,wl,wla,wlx) do (
		set %%A-%%B=0
	)
)

::total damage, tda = battles and tdx=total damage, ever.

set p1.tda=0
set p2.tda=0
set p1.tdx=0
set p2.tdx=0

::skill base attributes, aka. acc, bbl, etc. ssii-systemnotes.

::attack
set att-acc=75
set att-bbl=150
set att-prc=0
set att-val=20
set att-csc=50
set att-csx=20
set att-dil=10
set att-dgm=5
set att-dgx=60
set att-drm=10
set att-drx=40
set att-crr=20
::heal
set hea-acc=100
set hea-bbl=400
set hea-prc=0
set hea-val=65
set hea-csc=60
set hea-csx=50
set hea-dil=25
set hea-dgm=10
set hea-dgx=100
set hea-drm=40
set hea-drx=70
set hea-crr=0
::fusion
set fus-acc=65
set fus-bbl=50
set fus-prc=0
set fus-val=45
set fus-csc=90
set fus-csx=55
set fus-dil=25
set fus-dgm=30
set fus-dgx=160
set fus-drm=50
set fus-drx=40
set fus-crr=15
::rest
set res-acc=100
set res-bbl=300
set res-prc=0
set res-val=45
set res-csc=40
set res-csx=60
set res-dil=20
set res-dgm=20
set res-dgx=120
set res-drm=0
set res-drx=0
set res-crr=0
::magic claw
set mgc-acc=65
set mgc-bbl=90
set mgc-prc=2
set mgc-val=45
set mgc-csc=40
set mgc-csx=60
set mgc-dil=35
set mgc-dgm=50
set mgc-dgx=120
set mgc-drm=50
set mgc-drx=80
set mgc-crr=15
::magic arrow
set mga-acc=82
set mga-bbl=250
set mga-prc=3
set mga-val=45
set mga-csc=70
set mga-csx=40
set mga-dil=35
set mga-dgm=30
set mga-dgx=100
set mga-drm=40
set mga-drx=70
set mga-crr=18
::sokatsui
set sok-acc=90
set sok-bbl=140
set sok-prc=0
set sok-val=55
set sok-csc=80
set sok-csx=30
set sok-dil=35
set sok-dgm=40
set sok-dgx=140
set sok-drm=60
set sok-drx=100
set sok-crr=24
::thunder
set thn-acc=60
set thn-bbl=80
set thn-prc=0
set thn-val=35
set thn-csc=40
set thn-csx=40
set thn-dil=35
set thn-dgm=30
set thn-dgx=120
set thn-drm=60
set thn-drx=100
set thn-crr=28
::dire blade
set dbl-acc=75
set dbl-bbl=150
set dbl-prc=3
set dbl-val=75
set dbl-csc=100
set dbl-csx=10
set dbl-dil=35
set dbl-dgm=100
set dbl-dgx=290
set dbl-drm=80
set dbl-drx=200
set dbl-crr=20
::lightning
set lig-acc=68
set lig-bbl=20
set lig-prc=1
set lig-val=80
set lig-csx=20
set lig-dil=35
set lig-dgm=120
set lig-dgx=340
set lig-drm=80
set lig-drx=220
set lig-crr=30
::dimensional shot
set dsh-acc=85
set dsh-bbl=350
set dsh-prc=5
set dsh-val=85
set dsh-csc=50
set dsh-csx=40
set dsh-dil=35
set dsh-dgm=130
set dsh-dgx=260
set dsh-drm=80
set dsh-drx=220
set dsh-crr=22
::ice spear
set ice-acc=70
set ice-bbl=150
set ice-prc=3
set ice-val=45
set ice-csc=80
set ice-csx=50
set ice-dil=75
set ice-dgm=80
set ice-dgx=160
set ice-drm=50
set ice-drx=120
set ice-crr=15
::fire storm
set frs-acc=75
set frs-bbl=90
set frs-prc=2
set frs-val=45
set frs-csc=60
set frs-csx=80
set frs-dil=75
set frs-dgm=30
set frs-dgx=200
set frs-drm=70
set frs-drx=120
set frs-crr=20
::elemental wave
set ele-acc=60
set ele-bbl=650
set ele-prc=2
set ele-val=65
set ele-csc=80
set ele-csx=100
set ele-dil=85
set ele-dgm=100
set ele-dgx=280
set ele-drm=120
set ele-drx=250
set ele-crr=25
::eweca scythe
set esc-acc=80
set esc-bbl=50
set esc-prc=4
set esc-val=95
set esc-csc=90
set esc-csx=90
set esc-dil=70
set esc-dgm=100
set esc-dgx=300
set esc-drm=120
set esc-drx=250
set esc-crr=18
::holy arrow
set hly-acc=95
set hly-bbl=450
set hly-prc=6
set hly-val=110
set hly-csc=100
set hly-csx=100
set hly-dil=65
set hly-dgm=190
set hly-dgx=450
set hly-drm=200
set hly-drx=350
set hly-crr=10
::cero
set cer-acc=65
set cer-bbl=40
set cer-prc=4
set cer-val=25
set cer-csc=40
set cer-csx=35
set cer-dil=15
set cer-dgm=100
set cer-dgx=200
set cer-drm=85
set cer-drx=160
set cer-crr=40
::lunar scythe
set lsc-acc=70
set lsc-bbl=75
set lsc-prc=6
set lsc-val=35
set lsc-csc=50
set lsc-csx=70
set lsc-dil=20
set lsc-dgm=95
set lsc-dgx=270
set lsc-drm=110
set lsc-drx=200
set lsc-crr=40
::lunar spear
set lsp-acc=65
set lsp-bbl=25
set lsp-prc=8
set lsp-val=40
set lsp-csc=80
set lsp-csx=90
set lsp-dil=25
set lsp-dgm=100
set lsp-dgx=330
set lsp-drm=180
set lsp-drx=260
set lsp-crr=38
::lunar wind
set lwd-acc=90
set lwd-bbl=75
set lwd-prc=3
set lwd-val=45
set lwd-csc=70
set lwd-csx=90
set lwd-dil=35
set lwd-dgm=50
set lwd-dgx=250
set lwd-drm=90
set lwd-drx=150
set lwd-crr=42
::Laceda Blade
set lac-acc=75
set lac-bbl=100
set lac-prc=10
set lac-val=75
set lac-csc=140
set lac-csx=150
set lac-dil=40
set lac-dgm=200
set lac-dgx=600
set lac-drm=240
set lac-drx=350
set lac-crr=35
::Wings of White
set wwh-acc=84
set wwh-bbl=350
set wwh-prc=3
set wwh-val=65
set wwh-csc=30
set wwh-csx=60
set wwh-dil=35
set wwh-dgm=80
set wwh-dgx=150
set wwh-drm=70
set wwh-drx=120
set wwh-crr=15
::Dark Light
set dkl-acc=92
set dkl-bbl=100
set dkl-prc=7
set dkl-val=70
set dkl-csc=80
set dkl-csx=20
set dkl-dil=40
set dkl-dgm=50
set dkl-dgx=200
set dkl-drm=100
set dkl-drx=200
set dkl-crr=20
::Wings of Rage
set wwr-acc=88
set wwr-bbl=600
set wwr-prc=4
set wwr-val=85
set wwr-csc=50
set wwr-csx=100
set wwr-dil=45
set wwr-dgm=100
set wwr-dgx=330
set wwr-drm=175
set wwr-drx=220
set wwr-crr=10
::Dark Infinity
set dki-acc=96
set dki-bbl=275
set dki-prc=8
set dki-val=100
set dki-csc=130
set dki-csx=40
set dki-dil=65
set dki-dgm=10
set dki-dgx=410
set dki-drm=300
set dki-drx=400
set dki-crr=15
::Luminous Arc
set arc-acc=100
set arc-bbl=700
set arc-prc=7
set arc-val=125
set arc-csc=150
set arc-csx=150
set arc-dil=65
set arc-dgm=250
set arc-dgx=600
set arc-drm=300
set arc-drx=550
set arc-crr=15

::inventory init, i=items, e=equips and p=potions - all slots
for %%G in (p1,p2) do (
	for /l %%N in (1,1,4) do (
		set %%G-inv-i-%%N=0
	)
	for /l %%N in (1,1,3) do (
		set %%G-inv-e.%%N=0
	)
	for /l %%N in (1,1,2) do (
		set %%G-inv-p.%%N=0
	)
)

goto:init-pass
::========================================================================================
::CALL INIT BLOCK


:funct.random
if %2 lss 1 (
	set/a funct.return=1
	goto:eof
)
set/a funct.return=(%random% %% (%2 - %1 + 1)) + %1
goto:eof