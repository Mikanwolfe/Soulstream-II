@echo off
color 0F
title LMC Resonance

set name1=Plusie
set name2=Minim
set/a p1.health=100
set/a p2.health=100
set/a p1.energy=100
set/a p2.energy=100
set/a p1.set.hl=100
set/a p2.set.hl=100
set/a p1.set.en=100
set/a p2.set.en=100
set/a p1.set.df=0
set/a p2.set.df=0
set/a p1.def=0
set/a p2.def=0
set/a p1.damage=0
set/a p2.damage=0
set/a p1sh=0
set/a p2sh=0
set/a e1sh=0
set/a e2sh=0
set/a d1sh=0
set/a d2sh=0
set/a score1=0
set/a score2=0
set/a p1.defrate=15
set/a p2.defrate=15
set/a p1.defpen=1
set/a p2.defpen=1
set/a p1.def.cal=0
set/a p2.def.cal=0
set/a p1.dr=0
set/a p2.dr=0
set/a p1.deflimit=15
set/a p2.deflimit=15
set/a p1.hllimit=200
set/a p2.hllimit=200
set/a p1.enlimit=200
set/a p2.enlimit=200

set/a p1.lmc.a=0

set/a p1.ews.a=1
set/a p2.ews.a=1
set/a p1.las.a=0
set/a p2.las.a=0
set/a p1.fas.a=0
set/a p2.fas.a=0

set/a p1.get.a=0
set/a p2.get.a=0
set/a p1.sok.a=0
set/a p2.sok.a=0
set/a p1.lig.a=0
set/a p2.lig.a=0
set/a p1.hdr.a=0
set/a p2.hdr.a=0

set p1.sta.vis=Adventurer
set p2.sta.vis=Adventurer

set p1.sta.sk1=Heal    [min][mid][max]
set p1.sta.sk2=Rest    (rest)
set p1.sta.sk3=Attack  (attack)
set p1.sta.sk4=Fusion  (fusion)
set p1.sta.sk5=EBless  (ebless)

set p2.sta.sk1=Heal    [min][mid][max]
set p2.sta.sk2=Rest    (rest)
set p2.sta.sk3=Attack  (attack)
set p2.sta.sk4=Fusion  (fusion)
set p2.sta.sk5=EBless  (ebless)


set p1.skd.sk1=[Normal Class]
set p1.skd.sk2=A Normal adventurer, with magic and melee skills,
set p1.skd.sk3=you're a force to be reckoned with.
set p1.skd.sk4=.
set p1.skd.sk5=.
set p1.skd.sk6=.
set p1.skd.sk7=.

set p2.skd.sk1=[Normal Class]
set p2.skd.sk2=A Normal adventurer, with magic and melee skills,
set p2.skd.sk3=you're a force to be reckoned with.
set p2.skd.sk4=.
set p2.skd.sk5=.
set p2.skd.sk6=.
set p2.skd.sk7=.




set/a p1.ability.cl=0
set/a p2.ability.cl=0
set/a p1.sok.cl=0
set/a p2.sok.cl=0
set/a p1.sok.ct=0
set/a p2.sok.ct=0
set/a p1.hdr.cl=0
set/a p2.hdr.cl=0
set/a p1.hdr.ct=0
set/a p2.hdr.ct=0
set/a p1.hly.cl=0
set/a p2.hly.cl=0
set/a p1.hly.ct=0
set/a p2.hly.ct=0
set/a p1.get.cl=0
set/a p2.get.cl=0
set/a p1.get.ct=0
set/a p2.get.ct=0
set/a p1.gen.cl=0
set/a p2.gen.cl=0
set/a p1.gen.ct=0
set/a p2.gen.ct=0

set mainselect1=attack
set mainselect2=attack
set store1=next
set store2=next
set p1.ews.vis=Avaliable
set p1.las.vis=Avaliable
set p1.fas.vis=Avaliable
set p2.ews.vis=Avaliable
set p2.las.vis=Avaliable
set p2.fas.vis=Avaliable
set p1.get.vis=Avaliable
set p2.get.vis=Avaliable
set p1.sok.vis=Avaliable
set p2.sok.vis=Avaliable
set p1.lig.vis=Avaliable
set p2.lig.vis=Avaliable
set p1.hdr.vis=Avaliable
set p2.hdr.vis=Avaliable
goto splashstart

::-----------Splashstart

:splashstart
set/a splashn=(16 * %random%) / 32768 + 1
set/a splashn=(16 * %random%) / 32768 + 1

goto splash%splashn%

goto splashstart

:splash1
set splash=      Almost Dragon Free!
goto intro

:splash2
set splash=          Suwadikaaa!
goto intro

:splash3
set splash=     in a fourth dimensi...
goto intro

:splash4
set splash=      what are you again?
goto intro

:splash5
set splash=     if not ready goto...
goto intro

:splash6
set splash=          No Kidding.
goto intro

:splash7
set splash=print str(p1.hp) + "this will not work"
goto intro

:splash8
set splash=       5067 Lines of CODE!
goto intro

:splash9
set splash=         A bit too OP.
goto intro    

:splash10
set splash=    if not dead goto heaven
goto intro

:splash11   
set splash=           Oh, Hai.
goto intro

:splash12
set splash=    Beta Arrow Revolvers!
goto intro 

:splash13
set splash=     arithmetic operations!
goto intro

:splash14
set splash=Tatchy granide inchatora mana prowl!
goto intro

:splash15
set splash=   I don't think it's working.
goto intro

:splash16
set splash=        Not Easy Work
goto intro

:intro
::Intro
color 05
echo.             _  _     __   __         __    __        _  _    __
echo.   /   /  \ / \/ \ \ /  \ /  \ /  \  /_  /  /  \_/   / \/ \  /
echo.   \__ \__/ \    / / \  / \__/ \__/ __/  \  \   /    \    /  \__
echo.  [=-----------------------------------------------------------=]
echo.  [=-------------LuminousityMC Studios Presents----------------=]
echo.                %splash%
timeout 3 >nul
color 0F
goto setnormal



::----------Setnormal



:setnormal
cls
echo Welcome to LuminousityMC, Prozwolf's Resonance
echo Please input Player1's Name
echo The default name is Plusie
echo Player 1 Will be the Cross (Plus)
set/p name1=
echo Please input Player2's Name?
echo The default name is Minim
echo Player 2 Will be the Dash (Minus)
set/p name2=

:randc
cls
set /a sel=(100 * %random%) / 32768 + 1
echo %sel%
set /a sel=(100 * %random%) / 32768 + 1
echo %sel%
set /a sel=(100 * %random%) / 32768 + 1
echo %sel%
timeout 1 >nul
if %sel% LSS 51 goto selection2

goto selection1

:starti
set/a p1.health=%p1.set.hl% + %p1sh%
set/a p2.health=%p2.set.hl% + %p2sh%
set/a p1.energy=%p1.set.en% + %e1sh%
set/a p2.energy=%p2.set.en% + %e2sh%
set/a p1.def=%p1.set.df% + %d1sh%
set/a p2.def=%p2.set.df% + %d2sh%
set/a p1.damage=0
set/a p2.damage=0

set/a p1.ability.cl=1
set/a p2.ability.cl=1
set/a p1.sok.cl=0
set/a p2.sok.cl=0
set/a p1.sok.ct=0
set/a p2.sok.ct=0
set/a p1.hdr.cl=0
set/a p2.hdr.cl=0
set/a p1.hdr.ct=0
set/a p2.hdr.ct=0
set/a p1.hly.cl=1
set/a p2.hly.cl=1
set/a p1.hly.ct=2
set/a p2.hly.ct=2
set/a p1.get.cl=0
set/a p2.get.cl=0
set/a p1.get.ct=0
set/a p2.get.ct=0
set/a p1.gen.cl=1
set/a p2.gen.cl=1
set/a p1.gen.ct=4
set/a p2.gen.ct=4

goto randc

::==========----------Ability Cooldowns

::only player 2 will acess 1 and vice versa
:1ability.cl
if %p2.sok.cl%==1 goto 1p2.sok.cl
if %p2.hdr.cl%==1 goto 1p2.hdr.cl
if %p2.hly.cl%==1 goto 1p2.hly.cl
if %p2.get.cl%==1 goto 1p2.get.cl
if %p2.gen.cl%==1 goto 1p2.gen.cl

goto 1abl.pass

:1p2.sok.cl
set/a p2.sok.ct-=1
if %p2.sok.ct% lss 1 goto 1p2.sok.cb
goto 1abl.pass
:1p2.sok.cb
set/a p2.sok.cl=0
set/a p2.sok.ct=0
goto 1abl.pass

:1p2.hdr.cl
set/a p2.hdr.ct-=1
if %p2.hdr.ct% lss 1 goto 1p2.hdr.cb
goto 1abl.pass
:2p1.hdr.cb
set/a p2.hdr.cl=0
set/a p2.hdr.ct=0
goto 1abl.pass

:1p2.hly.cl
set/a p2.hly.ct-=1
if %p2.hly.ct% lss 1 goto 1p2.hly.cb
goto 1abl.pass
:2p1.hly.cb
set/a p2.hly.cl=0
set/a p2.hly.ct=0
goto 1abl.pass

:1p2.get.cl
set/a p2.get.ct-=1
if %p2.get.ct% lss 1 goto 1p2.get.cb
goto 1abl.pass
:2p1.get.cb
set/a p2.get.cl=0
set/a p2.get.ct=0
goto 1abl.pass

:1p2.gen.cl
set/a p2.gen.ct-=1
if %p2.gen.ct% lss 1 goto 1p2.gen.cb
goto 1abl.pass
:2p1.gen.cb
set/a p2.gen.cl=0
set/a p2.gen.ct=0
goto 1abl.pass

::==========----------abilitycooldown 2
:2ability.cl
if %p1.sok.cl%==1 goto 2p1.sok.cl
if %p1.hdr.cl%==1 goto 2p1.hdr.cl
if %p1.hly.cl%==1 goto 2p1.hly.cl
if %p1.get.cl%==1 goto 2p1.get.cl
if %p1.gen.cl%==1 goto 2p1.gen.cl

goto 2abl.pass

:2p1.sok.cl
set/a p1.sok.ct-=1
if %p1.sok.ct% lss 1 goto 1p1.sok.cb
goto 2abl.pass
:1p1.sok.cb
set/a p1.sok.cl=0
set/a p1.sok.ct=0
goto 2abl.pass

:2p1.hdr.cl
set/a p1.hdr.ct-=1
if %p1.hdr.ct% lss 1 goto 1p1.hdr.cb
goto 2abl.pass
:1p1.hdr.cb
set/a p1.hdr.cl=0
set/a p1.hdr.ct=0
goto 2abl.pass

:2p1.hly.cl
set/a p1.hly.ct-=1
if %p1.hly.ct% lss 1 goto 1p1.hly.cb
goto 2abl.pass
:1p1.hly.cb
set/a p1.hly.cl=0
set/a p1.hly.ct=0
goto 2abl.pass

:2p1.get.cl
set/a p1.get.ct-=1
if %p1.get.ct% lss 1 goto 1p1.get.cb
goto 2abl.pass
:1p1.get.cb
set/a p1.get.cl=0
set/a p1.get.ct=0
goto 2abl.pass

:2p1.gen.cl
set/a p1.gen.ct-=1
if %p1.gen.ct% lss 1 goto 1p1.gen.cb
goto 2abl.pass
:1p1.gen.cb
set/a p1.gen.cl=0
set/a p1.gen.ct=0
goto 2abl.pass





:selection1
if %p1.def% lss 1 goto dpens1
set/a p1.def.cal=(%p1.def% * %p1.defrate%) / 10
if %p1.def.cal% gtr %p1.damage% goto sel.1grid
if %p2.defpen%==0 goto dpenk1
set/a p1.def-=((%p1.damage% /2) * %p2.defpen%) / 15
if %p1.def% lss 0 goto dpens1
goto dpenk1
:dpens1
set/a p1.def=0
:dpenk1
set/a p1.dr=(%p1.damage% - %p1.def.cal%) / 5

set/a p1.damage=%p1.dr% * 5
set/a p1.health-=%p1.damage%
set/a p1.damage=0
:sel.1grid
if %p1.health% lss 1 goto die1
if %p2.health% lss 1 goto die2
if %p2.ability.cl%==1 goto 1ability.cl
:1abl.pass
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo. 
echo. Input Playername for stats
echo. What skill would you like to use?
echo. %name1%'s turn
set/p mainselect1=

if %mainselect1%==%name1% goto stat11
if %mainselect1%==%name2% goto stat12

if %mainselect1%==healmin goto healmin1
if %mainselect1%==attack goto att1
if %mainselect1%==rest goto res1
if %mainselect1%==healmax goto healmax1
if %mainselect1%==healmid goto healmid1
if %mainselect1%==endrain goto endrain1
if %mainselect1%==fusion goto fusion1
if %mainselect1%==ebless goto ebless1
::Locked Skils

if %mainselect1%==getsuga goto getsuga1
if %mainselect1%==sokatsui goto sokat1
if %mainselect1%==light goto light1
if %mainselect1%==hdrain goto hdrain1

::Skillsets

if %p1.ews.a%==1 goto p1.ews
if %p1.las.a%==1 goto p1.las
if %p1.fas.a%==1 goto p1.fas

goto p1.na

:p1.ews
if %mainselect1%==ice goto icespear1
if %mainselect1%==heal goto eheal1
if %mainselect1%==msh goto p1.emsh
if %mainselect1%==holy goto p1.hly
if %mainselect1%==genesis goto p1.gen
goto p1.na

:p1.las
goto p1.na

:p1.fas
goto p1.na

:p1.na

echo. %mainselect1% is not an avaliable skill
timeout 1 >nul
goto selection1


:selection2
cls
if %p2.def% lss 1 goto dpens2
set/a p2.def.cal=(%p2.def% * %p2.defrate%) / 10
if %p2.def.cal% gtr %p2.damage% goto sel.2grid
if %p1.defpen%==0 goto dpenk2
set/a p2.def-=((%p2.damage% /2) * %p1.defpen%) / 15
if %p2.def% lss 0 goto dpens2
goto dpenk2
:dpens2
set/a p2.def=0
:dpenk2
set/a p2.dr=(%p2.damage% - %p2.def.cal%) / 5
set/a p2.damage=%p2.dr% * 5
set/a p2.health-=%p2.damage%
set/a p2.damage=0
:sel.2grid
if %p2.health% lss 1 goto die2
if %p1.health% lss 1 goto die1
if %p1.ability.cl%==1 goto 2ability.cl
:2abl.pass
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.
echo. Input Playername for stats
echo. What skill would you like to use?
echo. %name2%'s turn
set/p mainselect2=

if %mainselect2%==%name1% goto stat21
if %mainselect2%==%name2% goto stat22

if %mainselect2%==healmin goto healmin2
if %mainselect2%==attack goto att2
if %mainselect2%==rest goto res2
if %mainselect2%==healmax goto healmax2
if %mainselect2%==healmid goto healmid2
if %mainselect2%==endrain goto endrain2
if %mainselect2%==fusion goto fusion2
if %mainselect2%==ebless goto ebless2

::Locked Skils

if %mainselect2%==getsuga goto getsuga2
if %mainselect2%==sokatsui goto sokat2
if %mainselect2%==light goto light2
if %mainselect2%==hdrain goto hdrain2

::Skillsets

if %p2.ews.a%==1 goto p2.ews
if %p2.las.a%==1 goto p2.las
if %p2.fas.a%==1 goto p2.fas

goto p2.na

:p2.ews
if %mainselect2%==ice goto icespear2
if %mainselect2%==heal goto eheal2
if %mainselect2%==msh goto p2.emsh
if %mainselect2%==holy goto p2.hly
if %mainselect2%==genesis goto p2.gen
goto p2.na

:p2.las
goto p2.na

:p2.fas
goto p2.na

:p2.na

echo. %mainselect2% is not an avaliable skill
timeout 1 >nul
goto selection2

:no.energy1
echo Not enough energy, sorry.
pause >nul
goto sel.1grid

:no.energy2
echo Not enough energy, sorry.
pause >nul
goto sel.2grid


::Eweca Blessing

:ebless1
set /a hd=(6 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% - 10
set/a hd.h=%p1.health% - %hd.e%
if %hd.h% LSS 10 goto ebless1
cls
echo.
echo.
echo.
echo.
echo.  %name1%: Dui Braim Darim Shanon!               
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.  \
echo.  
echo.
echo.
echo.               
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.  \
echo.  /
echo. / \
echo. \
echo. /\             
echo.   \  
echo.   +                   -
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
echo.  ENERGY +%hd.a%         
echo.    
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.  
echo.  
echo. 
echo. 
echo.  HEALTH -%hd.e%         
echo.    
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p1.health-=%hd.e%
set/a p1.energy+=%hd.a%
goto selection2


:ebless2
set /a hd=(6 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% - 10
set/a hd.h=%p2.health% - %hd.e%
if %hd.h% LSS 10 goto ebless2
cls
echo.
echo.
echo.
echo.
echo.  %name2%: Dui Braim Darim Shanon!               
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.                      \
echo.  
echo.
echo.
echo.               
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.                     \
echo.                     /
echo.                    / \
echo.                    \
echo.                    /\             
echo.                      \  
echo.   +                   -
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
echo.              ENERGY +%hd.a%         
echo.    
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.  
echo.  
echo. 
echo. 
echo.               HEALTH -%hd.e%         
echo.    
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p2.health-=%hd.e%
set/a p2.energy+=%hd.a%
goto selection1

::Fusion

:fusion1
set /a hd=(6 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.e=2 * %hd.a% - 30
if %p1.energy% LSS 20 goto no.energy1
if %hd% lss 5 goto fusion1s
set/a hd.e-=20
:fusion1s
cls
echo.
echo.
echo.
echo.
echo.  HEALTH-%hd.a%                
echo.     H
echo.   +                   -
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
echo.  ENERGY-%hd.a%                
echo.    H
echo.   +                   -
echo.    E
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
echo.    FUSION
echo.                 
echo.   [H]
echo.   +                   -
echo.   [E]
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
echo.     FUSION BOLT!!
echo.                 
echo.   
echo.   + [HE]              -
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
echo.       \   \
echo.   +        [--]       -
echo.       /   /
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
echo.                   \   \
echo.   +               [==]-
echo.                   /   /
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
echo.                      \ /
echo.   +                  (-)
echo.                      / \
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
echo.                     \= =/
echo.   +                 ( - )
echo.                     /= =\
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
echo.                  \=       =/
echo.   +               (   -   )
echo.                  /=       =\
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
echo.                    HEALTH-%hd.e%
echo.                 
echo.   +                   -   
echo.                 
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p1.health-=%hd.a%
set/a p1.energy-=%hd.a%
set/a p2.damage=%hd.e%
goto selection2


:fusion2
set /a hd=(6 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.e=2 * %hd.a% - 30
if %p2.energy% LSS 20 goto no.energy2
if %hd% lss 5 goto fusion2s
set/a hd.e-=20
:fusion2s
cls
echo.
echo.
echo.
echo.
echo.                   HEALTH-%hd.a%             
echo.                     H
echo.   +                   -
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
echo.                   ENERGY-%hd.a%                
echo.                     H
echo.   +                   -
echo.                     E
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
echo.              FUSION
echo.                 
echo.                    [H]
echo.   +                   -
echo.                    [E]
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
echo.                 FUSION BOLT!!
echo.                 
echo.   
echo.   +              [HE] -
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
echo.               /   /
echo.   +        [--]       -
echo.               \   \
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
echo.    /   /
echo.   +[==]                -
echo.    \   \
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
echo.   \ /                    
echo.   (+)                 -
echo.   / \                   
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
echo.  \= =/                    
echo.  ( + )                -
echo.  /= =\                   
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
echo.\=     =/                    
echo. (  +  )               -
echo./=     =\                   
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
echo. HEALTH-%hd.e%
echo.                 
echo.   +                   -   
echo.                 
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p2.health-=%hd.a%
set/a p2.energy-=%hd.a%
set/a p1.damage=%hd.e%
goto selection1



::Energy Drain

:endrain1
cls
echo.
echo.
echo.
echo.
echo.  HEALTH-30                
echo.  
echo.   +                   -
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
echo.  *+*                  -
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
echo.   +                   -
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
echo. ENERGY+40                 
echo.  
echo.   +                    -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p1.health-=30
set/a p1.energy+=40
goto selection2

:endrain2
cls
echo.
echo.
echo.
echo.
echo.                   HEALTH-30
echo.  
echo.   +                   -
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
echo.   +                   *-*
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
echo.   +                   -
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
echo.                   ENERGY+40                  
echo.  
echo.   +                    -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p2.health-=30
set/a p2.energy+=40
goto selection1

:: REST

:res1
if %p1.ews.a%==1 goto 1eres
if %p1.las.a%==1 goto 1lres
if %p1.fas.a%==1 goto 1fres
if %p1.lmc.a%==1 goto 1lmrs

set/a rest=20
goto res1.c

:1eres
set/a rest=40
goto res1.c

:1lres
set/a rest=20
goto res1.c

:1fres
set/a rest=30
goto res1.c

:1lmrs
set/a rest=50
goto res1.c

:res1.c
cls
echo.
echo.
echo.
echo.
echo. ENERGY + %rest%                  
echo.  
echo.   +                    -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p1.energy+=%rest%
goto selection2

:res2
if %p2.ews.a%==1 goto 2eres
if %p2.las.a%==1 goto 2lres
if %p2.fas.a%==1 goto 2fres


set/a rest=20
goto res2.c

:2eres
set/a rest=40
goto res2.c

:2lres
set/a rest=20
goto res2.c

:2fres
set/a rest=30
goto res2.c

:res2.c
cls
echo.
echo.
echo.
echo.
echo.                   ENERGY + %rest%                  
echo.  
echo.   +                    -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p2.energy+=%rest%
goto selection1

:: Normal ATTACK

:att1
set /a crit.c=(3 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c1
:att.c.1
set /a crit.b=(8 * %random%) / 32768 + 3
set /a crit.d=5 * %crit.b%
set crit.a=CRITICAL:%crit.d%
goto attcrit1

:att.c1
set crit.a=HEALTH-20
set/a crit.d=20

:attcrit1
cls
echo.
echo.
echo.
echo.
echo.                     
echo.  
echo.   +                    -
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
echo.   + )                  -
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
echo.   
echo.   +          )         -
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
echo.   
echo.   +                 )  -
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
echo.                      %crit.a%
echo.                     
echo.                       /
echo.   +                    -
echo.                       \
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
set/a p2.damage=%crit.d%
goto selection2

:att2
set /a crit.c=(3 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c2
:att.c.2
set /a crit.b=(9 * %random%) / 32768 + 3
set /a crit.d=5 * %crit.b%
set crit.a=CRITICAL:%crit.d%
goto attcrit2

:att.c2
set crit.a=HEALTH-20
set/a crit.d=20


:attcrit2
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
echo.                     
echo.   
echo.   +                   (-
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
echo.   
echo.   +            (       -
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
echo.   
echo.   + (                  -
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
echo.   \
echo.   +                    -
echo.   /
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
echo. %crit.a%                    
echo. 
echo.   +                    -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
set/a p1.damage=%crit.d%
goto selection1

::HEAL

:healmin2
if %p2.energy% LSS 10 goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.                     ENERGY -10
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
echo.                        [ ] 
echo.   +                     -
echo.                        [ ]
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
echo.   +                    [-]
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
echo.                      HEALTH +15
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
set/a p2.energy-=10
set/a p2.health+=15
goto selection1

:healmin1
if %p1.energy% LSS 10 goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -10
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
echo.  [ ]
echo.   +                     -
echo.  [ ]
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
echo.  [+]                    -
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
echo.  HEALTH + 15
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
set/a p1.health+=15
set/a p1.energy-=10
goto selection2

:healmax2
if %p2.energy% LSS 60 goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.                     ENERGY -60
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
echo.                        [ ] 
echo.   +                     -
echo.                        [ ]
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
echo.   +                    [-]
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
echo.                      HEALTH +60
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
set/a p2.energy-=60
set/a p2.health+=60
goto selection1

:healmax1
if %p1.energy% LSS 60 goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -60
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
echo.  [ ]
echo.   +                     -
echo.  [ ]
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
echo.  [+]                    -
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
echo.  HEALTH + 60
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
set/a p1.health+=60
set/a p1.energy-=60
goto selection2

:healmid2
if %p2.energy% LSS 20 goto no.energy2
set/a hlvar=(5 * %random%) / 32768 + 3
set/a hl.p=%hlvar% * 5
cls
echo.
echo.
echo.
echo.
echo.                     ENERGY -20
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
echo.                        [ ] 
echo.   +                     -
echo.                        [ ]
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
echo.   +                    [-]
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
echo.                      HEALTH +%hl.p%
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
set/a p2.energy-=20
set/a p2.health+=%hl.p%
goto selection1

:healmid1
if %p1.energy% LSS 20 goto no.energy1
set/a hlvar=(5 * %random%) / 32768 + 3
set/a hl.p=%hlvar% * 5
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -20
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
echo.  [ ]
echo.   +                     -
echo.  [ ]
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
echo.  [+]                    -
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
echo.  HEALTH +%hl.p%
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
set/a p1.health+=%hl.p%
set/a p1.energy-=20
goto selection2

::===================================================--------------------------------------==LOCKED SKILLS

::Getsuga Tenshou - Locked move

:getsuga2
if %p2.get.cl%==0 goto getsuga2.k
echo. You have to regain your focus, wait %p2.get.ct% turns.
timeout 2 >nul
goto 2abl.pass

:getsuga2.k
if %p2.get.a%==1 goto getsuga2.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:getsuga2.c
set/a gets.c=(8 * %random%) / 32768 + 1
set/a gets.a=160 + (gets.c * 10)
if %p2.energy% LSS 260 goto no.energy2
cls
cls
echo.
echo.
echo.
echo.
echo.                      ENERGY-260
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
echo.                      ENERGY-260
echo.
echo.   +                  -- -
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
echo.                  GETSUGA TENSHOU!
echo.
echo.
echo.                   //
echo.   +               --    -
echo.                   \\
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
echo.                  GETSUGA TENSHOU!
echo.
echo.
echo.                //
echo.   +            --       -
echo.                \\
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
echo.                  GETSUGA TENSHOU!
echo.
echo.
echo.            //
echo.   +        --           -
echo.            \\
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
echo.        //
echo.   +    --               -
echo.        \\
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
echo.    \ /    
echo.   + =                   -
echo.    / \     
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
echo.   \\ //    
echo.   + =                   -
echo.   // \\     
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
echo.  \     /    
echo.   + =                   -
echo.  /     \     
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
echo. HEALTH -%gets.a%
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
set/a p1.damage=%gets.a%
set/a p2.energy-=260
set/a p2.ability.cl=1
set/a p2.get.cl=1
set/a p2.get.ct=3
goto selection1


:getsuga1
if %p1.get.cl%==0 goto getsuga1.k
echo. You have to regain your focus, wait %p1.get.ct% turns.
timeout 2 >nul
goto 1abl.pass

:getsuga1.k
if %p1.get.a%==1 goto getsuga1.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:getsuga1.c
set/a gets.c=(8 * %random%) / 32768 + 1
set/a gets.a=160 + (gets.c * 10)
if %p1.energy% LSS 260 goto no.energy1
cls
echo.
echo.
echo.
echo.
echo. ENERGY-260
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
echo. ENERGY-260
echo.
echo.   + --                  -
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
echo.    GETSUGA TENSHOU!
echo.
echo.       \\
echo.   +   --                -
echo.       //
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
echo.    GETSUGA TENSHOU!
echo.
echo.             \\
echo.  +          --          -
echo.             //
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
echo.    GETSUGA TENSHOU!
echo.
echo.                    \\
echo.  +                 --   -
echo.                    //
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
echo.                    \ /
echo.  +                  =     -
echo.                    / \
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
echo.                  \\   //
echo.  +                  =     -
echo.                  //   \\
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
echo.                 \       /
echo.  +                  =     -
echo.                 /       \
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
echo.                      HEALTH -%gets.a%
echo.                        
echo.  +                        -
echo.                       
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
set/a p2.damage=%gets.a%
set/a p1.energy-=260
set/a p1.ability.cl=1
set/a p1.get.cl=1
set/a p1.get.ct=3
goto selection2


::====--Locked Skill: Hado 33, Sokatsui.

:sokat1
if %p1.sok.cl%==0 goto sokat1.k
echo. You have to regain your focus, wait %p1.sok.ct% turns.
timeout 2 >nul
goto 1abl.pass
:sokat1.k
if %p1.sok.a%==1 goto sokat1.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:sokat1.c
set/a sok.dc=(6 * %random%) / 32768 + 1
set/a sok.d= (%sok.dc% * 5) + 30
set/a sok.e= (%sok.dc% * 5) + 40
if %p1.energy% lss %sok.e% goto no.energy1
set sok.vis=HEALTH
set/a sok.cr=(2 * %random%) / 32768 + 1
if %sok.cr%==1 goto sokat
set/a sok.fd=0
set/a sok.fr=(4 * %random%) / 32768 + 1
set/a sok.fd=%sok.fr% * 5
set sok.vis=FLARE! -%sok.fd% HEALTH

:sokat
cls
echo.
echo.
echo.
echo.
echo. ENERGY -%sok.e%
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
echo. Hado 33!
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
echo. Hado 33!
echo.   \
echo.   +                     -
echo.   /
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
echo. SOKATSUI!
echo.    \
echo.   +=                    -
echo.    /
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
echo.     \-/
echo.   +  =                  -
echo.     /-\
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
echo.            /-//
echo.   +        =            -
echo.            \-\\
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
echo.                    /--/
echo.                    /-/-//
echo.   +                  == -
echo.                    \-\-\\
echo.                    \--\
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
echo.                     \\-\-//-///-/
echo.   +                 - - 0 - -
echo.                     //-/-\\-\\\-\
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
echo.                    \  \  -  /  /
echo.                       \   -  /
echo.   +                     -
echo.                       /   -  \
echo.                    /  /  -  \  \
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
echo.                      \    
echo.                          /
echo.   +                     -
echo.                          \
echo.                      /      
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
echo.               %sok.vis% -%sok.d% 
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p2.damage=%sok.d%
set/a p1.energy-=%sok.e%
set/a p1.ability.cl=1
set/a p1.sok.cl=1
set/a p1.sok.ct=2
if %sok.cr%==1 goto selection2
set/a p1.health-=%sok.fd%
set/a p2.health-=%sok.fd%
goto selection2

::p2 Sokatsui

:sokat2
if %p2.sok.cl%==0 goto sokat2.k
echo. You have to regain your focus, wait %p2.sok.ct% turns.
timeout 2 >nul
goto 2abl.pass
:sokat2.k
if %p2.sok.a%==1 goto sokat2.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:sokat2.c
set/a sok.dc=(6 * %random%) / 32768 + 1
set/a sok.d= (%sok.dc% * 5) + 30
set/a sok.e= (%sok.dc% * 5) + 40
if %p2.energy% lss %sok.e% goto no.energy2
set sok.vis=HEALTH
set/a sok.cr=(2 * %random%) / 32768 + 1
if %sok.cr%==1 goto sokat
set/a sok.fd=0
set/a sok.fr=(4 * %random%) / 32768 + 1
set/a sok.fd=%sok.fr% * 5
set sok.vis=FLARE! -%sok.fd% HEALTH

:sokat
cls
echo.
echo.
echo.
echo. 
echo.                   ENERGY -%sok.e%
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
echo.                     Hado 33!
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
echo.                      Hado 33!
echo.                         /
echo.   +                     -
echo.                         \
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
echo.                     SOKATSUI!
echo.                        /
echo.   +                    =-
echo.                        \
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
echo.                     \-/
echo.   +                  =  -
echo.                     /-\
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
echo.              \\-\
echo.   +            =        -
echo.              //-/
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
echo.   \--\
echo.  \\-\-\
echo.   + ==                  -
echo.  //-/-/
echo.   /--/
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
echo.\\-\-//-///-/
echo.-  0   -                -
echo.//-/-\\-\\\-\
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
echo.\  \  -  /  /
echo.  \   -  /
echo.   +                     -
echo.  /   -  \
echo./  /  -  \  \
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
echo.  \    
echo.     /
echo.   +                     -
echo.    \
echo. /      
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
echo.%sok.vis% -%sok.d% 
echo.
echo.   +                     -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p1.damage=%sok.d%
set/a p2.energy-=%sok.e%
set/a p2.ability.cl=1
set/a p2.sok.cl=1
set/a p2.sok.ct=2
if %sok.cr%==1 goto selection1
set/a p2.health-=%sok.fd%
set/a p1.health-=%sok.fd%
goto selection1


::==Light of the Sky, Lightning
::p1

:light1
if %p1.lig.a%==1 goto p1.light.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.light.c
set/a lig.dc=(20 * %random%) / 32768 + 1
set/a lig.d= (%lig.dc% * 5) + 40
set/a lig.e= (%lig.dc% * 5) + 60
if %p1.energy% lss %lig.e% goto no.energy1
set lig.vis=HEALTH
set/a lig.cr=(2 * %random%) / 32768 + 1
if %lig.cr%==2 goto light1.c
set/a lig.fd=0
set/a lig.fr=(8 * %random%) / 32768 + 1
set/a lig.fd=%lig.fr% * 5
set lig.vis=SHOCK! -%lig.fd% HEALTH

:light1.c
cls
echo.
echo.
echo.
echo.
echo. ENERGY -%lig.e%
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
echo.  \ /
echo.   +                     -
echo.  / \
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
echo.   \/
echo.   /
echo.   +-                    -
echo.   \
echo.   /\
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
echo.   /  
echo.   \  \
echo.   /  /\--\
echo.   +   -                 -
echo.   \  \/--/
echo.   /  /
echo.   \   
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  \/  
echo.   \/  
echo.   /             -\
echo.   +              -)     -
echo.   \             -/
echo.   /\  
echo.  /\   
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  /  
echo.                         \/\
echo.                         /
echo.   +                     -
echo.                         \
echo.                         /\/
echo.  \   
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
echo.                  %lig.vis% -%lig.d%
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
set/a p2.damage=%lig.d%
set/a p1.energy-=%lig.e%
if %lig.cr%==2 goto selection2
set/a p1.health-=%lig.fd%
set/a p2.health-=%lig.fd%
goto selection2

::==========-----------------------------==p2.lightning

:light2
if %p2.lig.a%==1 goto p2.light.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.light.c
set/a lig.dc=(20 * %random%) / 32768 + 1
set/a lig.d= (%lig.dc% * 5) + 40
set/a lig.e= (%lig.dc% * 5) + 60
if %p2.energy% lss %lig.e% goto no.energy2
set lig.vis=HEALTH
set/a lig.cr=(2 * %random%) / 32768 + 1
if %lig.cr%==2 goto light1.c
set/a lig.fd=0
set/a lig.fr=(8 * %random%) / 32768 + 1
set/a lig.fd=%lig.fr% * 5
set lig.vis=SHOCK! -%lig.fd% HEALTH

:light1.c
cls
echo.
echo.
echo.
echo.
echo.                 ENERGY -%lig.e%
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
echo.                        \ /
echo.   +                     -
echo.                        / \
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
echo.                        \/
echo.                         \
echo.   +                    --
echo.                         /
echo.                        /\
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
echo.                         /
echo.                      /  \
echo.                  /--/\  /
echo.   +   -             -   -
echo.                  \--\/  \
echo.                      \  /
echo.                         \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                         \/  
echo.                        \/
echo.          /-             \
echo.   +     (-              -
echo.          \-             /
echo.                        /\  
echo.                         /\   
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
echo.  /\/                      
echo.    \                    
echo.   +                     -
echo.    /                  
echo.  \/\                    
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
echo.    
echo.  %lig.vis% -%lig.d%
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
set/a p1.damage=%lig.d%
set/a p2.energy-=%lig.e%
if %lig.cr%==2 goto selection1
set/a p2.health-=%lig.fd%
set/a p1.health-=%lig.fd%
goto selection1

::Health Drain

:hdrain1
if %p1.hdr.cl%==0 goto hdrain1.k
echo. You have to regain your focus, wait %p1.hdr.ct% turns.
timeout 2 >nul
goto 1abl.pass
:hdrain1.k
if %p1.hdr.a%==1 goto p1.hdr.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.hdr.c
set /a hd=(5 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.r=10 * %hd% - 10
set/a hd.e=10 * %hd% +20
if %hd% lss 4 goto hdrain1f
set/a hd.e+=10
:hdrain1f
if %p1.energy% LSS 40 goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -%hd.e%                
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.
echo.
echo.
echo.
echo.                  
echo.   /  
echo.   +                   -
echo.   \
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
echo.               /  
echo.   +(                  -
echo.               \
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
echo.                      /  
echo.   +(                  -
echo.                      \
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
echo.                      / \ 
echo.   +(                  -
echo.                      \ /
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
echo.                      
echo.   +(            H     -
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
echo.                      
echo.   +(    H             -
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
echo.                  Health -%hd.a%
echo.                      
echo.   +                   -
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
echo.Health +%hd.r%
echo.                      
echo.   +                   -
echo.                      
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
set/a p1.energy-=%hd.e%
set/a p2.health-=%hd.a%
set/a p1.health+=%hd.r%
set/a p1.ability.cl=1
set/a p1.hdr.cl=1
set/a p1.hdr.ct=2
goto selection2

:hdrain2
if %p2.hdr.cl%==0 goto hdrain2.k
echo. You have to regain your focus, wait %p2.hdr.ct% turns.
timeout 2 >nul
goto 2abl.pass
:hdrain2.k
if %p2.hdr.a%==1 goto p2.hdr.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.hdr.c
set /a hd=(5 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.r=10 * %hd% - 10
set/a hd.e=10 * %hd% +20
if %hd% lss 4 goto hdrain2f
set/a hd.e+=10
:hdrain2f
if %p2.energy% LSS 40 goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.               ENERGY -%hd.e%                
echo.     
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.
echo.
echo.
echo.
echo.                  
echo.                       \  
echo.   +                   -
echo.                       /
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
echo.               \  
echo.   +                  )-
echo.               /
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
echo.    \                   
echo.   +                  )-
echo.    /                  
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
echo.  / \                    
echo.   +                  )-
echo.  \ /                    
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
echo.                      
echo.   +   H              )-
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
echo.                      
echo.   +              H   )-
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
echo. Health -%hd.a%
echo.                      
echo.   +                   -
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
echo.               Health +%hd.r%
echo.                      
echo.   +                   -
echo.                      
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
set/a p2.energy-=%hd.e%
set/a p1.health-=%hd.a%
set/a p2.health+=%hd.r%
set/a p2.ability.cl=1
set/a p2.hdr.cl=1
set/a p2.hdr.ct=2
goto selection1


::=================---------------------------------------------------========================= SKILLSET SKILLS

::=====-----Ice Spear

:icespear1
if %p1.ews.a%==1 goto p1.ice.c
echo You do not have the ability to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.ice.c
set /a ie=(4 * %random%) / 32768 + 2
set/a ie.a=10 * %ie% + 30
set/a ie.e=10 * %ie% + 10
if %p1.energy% LSS %ie.e% goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -%ie.e%                
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
cls
echo.
echo.
echo.
echo.
echo.                 
echo.    ==
echo.   +                     -
echo.    ==
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
echo.   -==--
echo.   + ==--                -
echo.   -==--
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
echo.   -==--\-=\
echo.   +  --=====---         -
echo.   -==--/-=/
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
echo.  /=-/--==-
echo.   +      --=====---     -
echo.  \=-\--==-
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
echo.   /              
echo. /=-/                /=//
echo.   +              --=====-
echo. \=-\                \=\\
echo.   \
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
echo.                           //-----/
echo.   /                     /===--//
echo.   +                     -
echo.   \                     \===--\\
echo.                           \\-----\
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
echo.                           /--/
echo.                       
echo.   +                     -
echo.                       
echo.                           \--\
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
echo.                    HEALTH-%ie.a%
echo.                      
echo.   +                     -
echo.                      
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p1.energy-=%ie.e%
set/a p2.damage=%ie.a%
goto selection2


:icespear2
if %p2.ews.a%==1 goto p2.ice.c
echo You do not have the ability to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.ice.c
set /a ie=(4 * %random%) / 32768 + 2
set/a ie.a=10 * %ie% + 30
set/a ie.e=10 * %ie% + 10
if %p2.energy% LSS %ie.e% goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.                  ENERGY -%ie.e%                
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
cls
echo.
echo.
echo.
echo.
echo.                 
echo.                       ==
echo.   +                    -
echo.                       ==
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
echo.                    --==-
echo.   +               --==  -
echo.                    --==-
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
echo.                 /=-/--==-
echo.   +          ---=====-- -
echo.                 \=-\--==-
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
echo.                  -==--/-=/
echo.   +  ---=====--         -
echo.                  -==--\-=\
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
echo.  \              
echo. \==\                   \-=\
echo.-=====--                  -
echo. /==/                   /-=/
echo.  /
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
echo.\\-----\
echo.  \\--===\              \
echo.   ===--                 -
echo.  //--===/              /
echo.//-----/
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
echo.  \\
echo.  \--\
echo.                       
echo.   +                     -
echo.                       
echo.  /--/
echo.  //
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
echo. HEALTH-%ie.a%
echo.                      
echo.   +                     -
echo.                      
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p2.energy-=%ie.e%
set/a p1.damage=%ie.a%
goto selection1

::====================-------------------==EWECA HEAL

:eheal2
if %p2.energy% LSS 40 goto no.energy2
set/a hlvar=(5 * %random%) / 32768 + 3
set/a hl.p=%hlvar% * 10
cls
echo.
echo.
echo.
echo.
echo.                     ENERGY -40
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
echo.                        [ ] 
echo.   +                     -
echo.                        [ ]
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
echo.   +                    [-]
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
echo.                      HEALTH +%hl.p%
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
set/a p2.energy-=40
set/a p2.health+=%hl.p%
goto selection1

:eheal1
if %p1.energy% LSS 40 goto no.energy1
set/a hlvar=(5 * %random%) / 32768 + 3
set/a hl.p=%hlvar% * 10
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -40
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
echo.  [ ]
echo.   +                     -
echo.  [ ]
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
echo.  [+]                    -
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
echo.  HEALTH +%hl.p%
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
set/a p1.health+=%hl.p%
set/a p1.energy-=40
goto selection2

:: Mana Shield


:p1.emsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 4
if %p1.energy% LSS %me.e% goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -%me.e%                
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
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo.   \            
echo.   /\  
echo.   +                     -
echo.   \/
echo.   /
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
echo.    \            
echo.   /\\  
echo.   +                     -
echo.   \//
echo.    /
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
echo.    \            
echo.     \  
echo.   +                     -
echo.     /
echo.    /
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
echo.   \ 
echo.   +                     -
echo.   /
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
echo.  DEFENCE +%me.a%             
echo.    
echo.   +                     -
echo.   
echo.    
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p1.energy-=%me.e%
set/a p1.def+=%me.a%
goto selection2


:p2.emsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 4
if %p2.energy% LSS %me.e% goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.                  ENERGY -%me.e%                
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
cls
echo.
echo.
echo.
echo.
echo.                
echo.                         \
echo.   +                     -     
echo.                         /
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
echo.                         /            
echo.                        /\  
echo.   +                     -
echo.                        \/
echo.                         \
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
echo.                        /            
echo.                       //\  
echo.   +                     -
echo.                       \\/
echo.                        \
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
echo.                        /            
echo.                       /  
echo.   +                     -
echo.                       \
echo.                        \
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
echo.                         /
echo.   +                     -
echo.                         \
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
echo.                DEFENCE +%me.a%             
echo.    
echo.   +                     -
echo.   
echo.    
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
set/a p2.energy-=%me.e%
set/a p2.def+=%me.a%
goto selection1

::Eweca Holy Arrow

:p1.hly
if %p1.hly.cl%==0 goto p1.hly.k
echo. You have to regain your focus, wait %p1.hly.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.hly.k
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.1=10 * %ha% + 40
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.2=10 * %ha% + 40
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.3=10 * %ha% + 40

set/a ha.e=%ha.1% + %ha.2% + %ha.3% + 20
set/a ha.h=%ha.1% + %ha.2% + %ha.3%
if %p1.energy% LSS %ha.e% goto no.energy1
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -%ha.e%                
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
cls
echo.
echo.
echo.
echo.
echo.                  
echo.     
echo.   +  =                  -
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
echo.     =\
echo.   +  =                  -
echo.     =/
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
echo.    \-            
echo.     =\
echo.   +  =                  -
echo.     =/
echo.    /-
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
echo.  \\-
echo.    \-            
echo.     =\
echo.   +  =                  -
echo.     =/
echo.    /-
echo.  //-
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo. \/\
echo.  \\-
echo.    \-            
echo.     =\
echo.   +  =--                -
echo.     =/
echo.    /-
echo.  //-
echo. /\/
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.  \/\
echo.   \\-
echo.    \-            
echo.     =\
echo.   +  =  =---            -
echo.     =/
echo.    /-
echo.   //-
echo.  /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo. \/\
echo.  \\-
echo.    \-            
echo.     =\
echo.   +  =--          =---  -
echo.     =/
echo.    /-
echo.  //-
echo. /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.  \/\
echo.   \\-
echo.    \-            
echo.     =\              HEALTH -%ha.1%
echo.   +  =  =---            -
echo.     =/
echo.    /-
echo.   //-
echo.  /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo. \/\
echo.  \\-
echo.    \-               HEALTH -%ha.1%
echo.     =\          HEALTH -%ha.2%
echo.   +  =--          =---  -
echo.     =/
echo.    /-
echo.  //-
echo. /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.  \/\
echo.   \\-                   HEALTH -%ha.1%
echo.    \-               HEALTH -%ha.2%    
echo.     =\          HEALTH -%ha.3%
echo.   +  =                  -
echo.     =/
echo.    /-
echo.   //-
echo.  /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.  \/\
echo.   \\-                   HEALTH -%ha.1%
echo.    \-               HEALTH -%ha.2%    
echo.     =\          HEALTH -%ha.3%
echo.   +  =                  -
echo.     =/
echo.    /-
echo.   //-
echo.  /\/
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.  
echo.   \\                    HEALTH -%ha.1%
echo.    \-               HEALTH -%ha.2%    
echo.     =\          
echo.   +  =                  -
echo.     =/
echo.    /-
echo.   //
echo.  
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.  
echo.                         HEALTH -%ha.1%
echo.    \                HEALTH -%ha.2%    
echo.     =\          
echo.   +  =                  -
echo.     =/
echo.    /
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
echo.                         HEALTH -%ha.1%
echo.                       
echo.               
echo.   +  =                  -
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
set/a p2.damage = %ha.h%
set/a p1.energy-= %ha.e%
set/a p1.ability.cl=1
set/a p1.hly.cl=1
set/a p1.hly.ct=4
goto selection2


::Eweca Holy Arrow2

:p2.hly
if %p2.hly.cl%==0 goto p2.hly.k
echo. You have to regain your focus, wait %p2.hly.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.hly.k
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.1=10 * %ha% + 40
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.2=10 * %ha% + 40
set/a ha=(3 * %random%) / 32768 + 1
set/a ha.3=10 * %ha% + 40

set/a ha.e=%ha.1% + %ha.2% + %ha.3% + 20
set/a ha.h=%ha.1% + %ha.2% + %ha.3%
if %p2.energy% LSS %ha.e% goto no.energy2
cls
echo.
echo.
echo.
echo.
echo.                  ENERGY -%ha.e%                
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
cls
echo.
echo.
echo.
echo.
echo.                  
echo.     
echo.   +                 =   -
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
echo.                     /=
echo.   +                 =   -
echo.                     \= 
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
echo.                         /
echo.                      -/
echo.                     /=
echo.   +                 =   -
echo.                     \= 
echo.                      -\
echo.                         \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                       -//
echo.                      -/
echo.                     /=
echo.   +                 =   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        /\/
echo.                       -//
echo.                      -/
echo.                     /=
echo.   +               --=   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                       /\/
echo.                      -//
echo.                      -/
echo.                     /=
echo.   +           ---=  =   -
echo.                     \= 
echo.                      -\
echo.                      -\\
echo.                       \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        /\/
echo.                       -//
echo.                      -/
echo.                     /=
echo.   +   ---=        --=   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                       /\/
echo.                      -//
echo.                      -/
echo.HEALTH -%ha.1%           /=
echo.   +           ---=  =   -
echo.                     \= 
echo.                      -\
echo.                      -\\
echo.                       \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        /\/
echo.                       -//
echo.                      -/
echo.HEALTH -%ha.1%           /=
echo.   +   ---=        --=   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                       /\/
echo.                      -//
echo.  HEALTH -%ha.2%          -/
echo.HEALTH -%ha.1%           /=
echo.   +           ---=  =   -
echo.                     \= 
echo.                      -\
echo.                      -\\
echo.                       \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        /\/
echo.                       -//
echo.  HEALTH -%ha.2%          -/
echo.HEALTH -%ha.1%           /=
echo.   +   ---=          =   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        /\/
echo.     HEALTH -%ha.3%        -//
echo.  HEALTH -%ha.2%          -/
echo.HEALTH -%ha.1%           /=
echo.   +                 =   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        \/\
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        
echo.     HEALTH -%ha.3%        -//
echo.  HEALTH -%ha.2%          -/
echo.                     /=
echo.   +                 =   -
echo.                     \= 
echo.                      -\
echo.                       -\\
echo.                        
echo.                        
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        
echo.     HEALTH -%ha.3%    
echo.                      -/
echo.                     /=
echo.   +                 =   -
echo.                     \= 
echo.                      -\
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
echo.                     
echo.   +                 =   -
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
set/a p1.damage = %ha.h%
set/a p2.energy-= %ha.e%
set/a p2.ability.cl=1
set/a p2.hly.cl=1
set/a p2.hly.ct=4
goto selection1

::===============================------------------------------------==Eweca Genesis

:p1.gen
if %p1.gen.cl%==0 goto p1.gen.k
echo. You have to regain your focus, wait %p1.gen.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.gen.k

if %p1.energy% lss 150 goto no.energy1
set/a ge.e=%p1.energy%
set/a ge.h=%p1.health% - 40
set/a ge=(3 * %random%) / 32768 + 1
set/a ge.v=(10 * %random%) / 32768 + 1
set/a ge.a=(50 * %ge%) + (%ge.v% * 10) + (%ge.h%/2) + (%ge.e%/2)

set/a p2.damage = %ge.a%
set/a p1.energy-= %ge.e%
set/a p1.health-= %ge.h%
set/a p1.ability.cl=1
set/a p1.gen.cl=1
set/a p1.gen.ct=6

cls
echo.
echo.
echo.
echo.
echo. ENERGY -%ge.e%                
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
echo. ENERGY -%ge.e%                
echo.     
echo.   +                     -
echo.
echo. HEALTH -%ge.h%
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
echo. Through the ultimate
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
echo. Through the ultimate
echo.             power of Eweca...         
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
echo. The world shall bow down
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
echo. The world shall bow down
echo.             Upon creation itself...         
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
echo.        EWECA:            
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
echo.        EWECA:GENESIS            
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
echo.        EWECA:GENESIS 1:1            
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
echo.       GENESIS CHAPTER 1            
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
echo.  =+=                    -
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
echo. -===-
echo.
echo. 
echo.               
echo.     
echo. -=+=-                   -
echo.
echo. 
echo.
echo.
echo. -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo. -===-
echo.  -=-
echo.  \
echo.  /\            
echo.   /\ 
echo. -=+=-                   -
echo.   \/
echo.  \/
echo.  /
echo.  -=-
echo. -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo. -=     -===-
echo.  -=-     
echo.  \      
echo.              
echo.   \ 
echo. -=+=-                   -
echo.   /
echo.  
echo.  /      
echo.  -=-     
echo. -=     -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo. -=     -===-
echo.  -=-     =
echo.  \      
echo.              
echo.   \ 
echo. -=+=-                   -
echo.   /
echo.  
echo.  /      
echo.  -=-     =
echo. -=     -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo. -=     -===-
echo.  -=-     =
echo.  \      -=-
echo.          =   
echo.   \      =
echo. -=+=-    =              -
echo.   /      =
echo.          =
echo.  /      -=-
echo.  -=-     =
echo. -=     -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.      -===-
echo.       =-
echo.  \      -=-  
echo.          =-   
echo.   \      =-
echo. -=+=-    =              -
echo.   /      =-
echo.          =-
echo.  /      -=-
echo.       =-
echo.      -===-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.      -===-
echo.       =-
echo.        -=-  
echo.          =-   
echo.   \      =-
echo. -=+=- -====--            -
echo.   /      =-
echo.          =-
echo.        -=-
echo.       =-
echo.      -===-
echo. 
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.          -===--
echo.              -===--
echo.                -===--  
echo.                -===--  
echo.   \          -====--
echo. -=+=- -====--            -
echo.   /          -====--
echo.               -===--
echo.                -===--
echo.               -===--
echo.            -===--
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.               -===--
echo.                  -===--
echo.                    -===--  
echo.                  -===--  
echo.   \                -====--
echo. -=+=- -====--            -
echo.   /                -====--
echo.                  -===--
echo.                    -===--
echo.                   -===--
echo.                -===--
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                                     -===--
echo.                                 -===--
echo.                              -===--  
echo.                           -===--  
echo.           \           -====--
echo.         -==+==----       -
echo.           /           -====--
echo.                           -===--
echo.                              -===--
echo.                                 -===--
echo.                                     -===--
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                                     -===--
echo.                                 -===--
echo.                              -===--  
echo.                           -===--  
echo.                            \       
echo.                         -==+==----
echo.                            /           
echo.                           -===--
echo.                              -===--
echo.                                 -===--
echo.                                     -===--
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                                     //-===--//
echo.                                 //-===--//
echo.                              //-===--// 
echo.                           //-===--//
echo.                            /--//
echo.                         -=====----
echo.                            \--\\
echo.                           \\-===--\\
echo.                              \\-===--\\
echo.                                 \\-===--\\
echo.                                     \\-===--\\
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                                     //-===--//
echo.                                 //-===--//
echo.                              //-=//--// 
echo.                           //-=\=--//
echo.                            /--//
echo.                         -=====----
echo.                            \--\\
echo.                           \\-=/=--\\
echo.                              \\-===--\\
echo.                                 \\-=\\--\\
echo.                                     \\-===--\\
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-///--//
echo.                                   //-===--//
echo.                                //-///--// 
echo.                           //-///--//
echo.                            /--//---/
echo.                         -=====----
echo.                            \--\\---\
echo.                           \\-\\\--\\
echo.                                \\-\\\--\\
echo.                                   \\-===--\\
echo.                                       \\-\\\--\\
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-///--//
echo.                                   //-===--//
echo.                                //-///--// 
echo.                           //-///--//
echo.     -                      /--//---/
echo.                         -=====----
echo.                            \--\\---\
echo.   -                       \\-\\\--\\
echo.                                \\-\\\--\\
echo.                                   \\-===--\\
echo.                                       \\-\\\--\\
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-///--//
echo.                                   //-===--//
echo.                                //-///--// 
echo. -                        //-///--//
echo.                            /--//---/
echo.                         -=====----
echo.                            \--\\---\
echo.      -                    \\-\\\--\\
echo.                                \\-\\\--\\
echo.                                   \\-===--\\
echo.                                       \\-\\\--\\
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-///-
echo.                                   //-  --//
echo.                                //-///--// 
echo.                           //-///  //
echo.                            /--//---/
echo.   +                     -    ----
echo.                            \--\\---\
echo.                           \\-\\\  \\
echo.                                \\-\\\--\\
echo.                                   \\-  --\\
echo.                                       \\-\\\-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-///- 
echo.                                   //-  -- //
echo.                                //-// // 
echo.                           //-//   //
echo.                            /--//-/
echo.   +                     -    ----
echo.                            \-\- --\
echo.                           \\-\\\  \\
echo.                                \\-\--\\
echo.                                   \ \ -  --\\
echo.                                       \\-\\\-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       //-
echo.                                   //-  
echo.                                // 
echo.                             //
echo.                            /--//---/
echo.   +                     -    ----
echo.                            \--\\---\
echo.                             \\
echo.                                \\
echo.                                   \\-  
echo.                                       \\-
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       
echo.                                   //-  
echo.                                // 
echo.                             //
echo.                            /--//-
echo.   +                     -    
echo.                            \--\\-
echo.                             \\
echo.                                \\
echo.                                   \\-  
echo.                                       
echo. 
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.                                       
echo.                                    
echo.                               
echo.                             //
echo.                            /--
echo.   +                     -    
echo.                            \-
echo.                             \\
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
echo.                      HEALTH -%ge.a%       
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
goto selection2

::==================--------------------------------------------------========================= DEATHS





:die1
if %p2.health% LSS 1 goto draw
timeout 0 >nul
cls
echo.
echo.
echo.
echo.    
echo.                         
echo.  /   \                    
echo.   ] [                     -
echo.  \   /                      
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
echo. _______
echo./       \
echo.\_______/                         
echo.  \   /                
echo. _/___\_                    -
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
echo. \ /                      
echo.                           -
echo. / \                    
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
echo.                           -
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
echo.    %name2% WINS!
echo.                         
echo.                       
echo.                           -
echo.                     
echo.    %name2% +200
echo.    %name1% +50
echo.
echo.
echo.
echo.-----------------------------------
set/a score2+=200
set/a score1+=50
timeout 10 >nul
goto store

:die2
if %p1.health% LSS 1 goto draw
cls
echo.
echo.
echo.
echo.    
echo.                         
echo.                          /   \                    
echo.    +                      ] [                     
echo.                          \   /                      
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
echo.                         _______
echo.                        /       \
echo.                        \_______/                         
echo.                          \   /                
echo.    +                    _/___\_
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
echo.                          \ /
echo.  +                        
echo.                          / \
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
echo.  +
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
echo.    %name1% WINS!                     
echo.                          
echo.  +                        
echo.                          
echo.    %name1% +200
echo.    %name2%+50
echo.
echo.
echo.
echo.-----------------------------------
set/a score1+=200
set/a score2+=50
timeout 10 >nul
goto store

:draw
cls
echo.
echo.
echo.    %name1% and %name2% Draws!
echo.    
echo.                         
echo.                        
echo.  +                        -
echo.                       
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.
echo.
echo.         
echo.      
echo.            DRAW        
echo.        %name1% +100 Mesos
echo.        %name2% +100 Mesos
echo.        Well Played.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.
echo.
echo.         
echo.      
echo.            DRAW        
echo.        %name1% +100 Mesos
echo.        %name2% +100 Mesos
echo.        
echo.        [Press any key]
echo.
echo.
echo.
echo.
echo.-----------------------------------
pause >nul
set/a score1+=100
set/a score2+=100
goto store


::Storefiles


::==========--------------------==PlayerStats

:stat11
cls
echo.-----------------------------------
echo._____
echo.     ] PLAYERNAME: %NAME1%
echo.  +  ] MESOS:      %SCORE1%
echo._____] CLASS:      %p1.sta.vis%
echo.
echo.   Skills: 
echo.   %p1.sta.sk1%
echo.   %p1.sta.sk2%
echo.   %p1.sta.sk3%
echo.   %p1.sta.sk4%
echo.   %p1.sta.sk5%
echo.
echo.-----------------------------------
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.-----------------------------------
echo. %p1.skd.sk1%
echo. %p1.skd.sk2%
echo. %p1.skd.sk3%
echo. %p1.skd.sk4%
echo. %p1.skd.sk5%
echo. %p1.skd.sk6%
echo. %p1.skd.sk7%
echo.-----------------------------------
pause >nul
goto 1abl.pass

:stat12
cls
echo.-----------------------------------
echo._____
echo.     ] PLAYERNAME: %NAME2%
echo.  -  ] MESOS:      %SCORE2%
echo._____] CLASS:      %p2.sta.vis%
echo.
echo.   Skills: 
echo.   %p2.sta.sk1%
echo.   %p2.sta.sk2%
echo.   %p2.sta.sk3%
echo.   %p2.sta.sk4%
echo.   %p2.sta.sk5%
echo.
echo.-----------------------------------
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.-----------------------------------
echo. %p2.skd.sk1%
echo. %p2.skd.sk2%
echo. %p2.skd.sk3%
echo. %p2.skd.sk4%
echo. %p2.skd.sk5%
echo. %p2.skd.sk6%
echo. %p2.skd.sk7%
echo.-----------------------------------
pause >nul
goto 1abl.pass

:stat21
cls
echo.-----------------------------------
echo._____
echo.     ] PLAYERNAME: %NAME1%
echo.  +  ] MESOS:      %SCORE1%
echo._____] CLASS:      %p1.sta.vis%
echo.
echo.   Skills: 
echo.   %p1.sta.sk1%
echo.   %p1.sta.sk2%
echo.   %p1.sta.sk3%
echo.   %p1.sta.sk4%
echo.   %p1.sta.sk5%
echo.
echo.-----------------------------------
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.-----------------------------------
echo. %p1.skd.sk1%
echo. %p1.skd.sk2%
echo. %p1.skd.sk3%
echo. %p1.skd.sk4%
echo. %p1.skd.sk5%
echo. %p1.skd.sk6%
echo. %p1.skd.sk7%
echo.-----------------------------------
pause >nul
goto 2abl.pass

:stat22
cls
echo.-----------------------------------
echo._____
echo.     ] PLAYERNAME: %NAME2%
echo.  -  ] MESOS:      %SCORE2%
echo._____] CLASS:      %p2.sta.vis%
echo.
echo.   Skills: 
echo.   %p2.sta.sk1%
echo.   %p2.sta.sk2%
echo.   %p2.sta.sk3%
echo.   %p2.sta.sk4%
echo.   %p2.sta.sk5%
echo.
echo.-----------------------------------
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.-----------------------------------
echo. %p2.skd.sk1%
echo. %p2.skd.sk2%
echo. %p2.skd.sk3%
echo. %p2.skd.sk4%
echo. %p2.skd.sk5%
echo. %p2.skd.sk6%
echo. %p2.skd.sk7%
echo.-----------------------------------
pause >nul
goto 2abl.pass

::=======================================================-------------------------==STORES
:store
cls
echo. PLAYER 1
echo.             Store
echo.     %name1%'s Mesos (%score1%) 
echo.     Exchange PTS for bonuses.  
echo.                       (MESO) (INP)
echo. +10 Starting Health:   100     h 
echo. +10 Starting Energy:   100     e 
echo. +5 Defence:            100     d 
echo.       
echo. Classes                       cls
echo. 
echo. Skills                        ski
echo.
echo. H+%p1sh% E+%e1sh% D+%d1sh%
echo.-----------------------------------
set/p store1=

if %store1%==h goto sh1
if %store1%==e goto se1
if %store1%==d goto sd1
if %store1%==cls goto store1.skl
if %store1%==ski goto store1.ski
if %store1%==next goto store2

goto store

:sh1
if %score1% lss 100 goto store
set/a score1-=100
set/a p1sh+=10
if %p1sh% lss %p1.hllimit% goto store
set/a p1sh=%p1.hllimit%
set/a score1+=100
goto store

:se1
if %score1% lss 100 goto store
set/a score1-=100
set/a e1sh+=10
if %e1sh% lss %p1.enlimit% goto store
set/a e1sh=%p1.enlimit%
set/a score1+=100
goto store

:sd1
if %score1% lss 100 goto store
set/a score1-=100
set/a d1sh+=5
if %d1sh% lss %p1.deflimit% goto store
set/a d1sh=%p1.deflimit%
set/a score1+=100
goto store


:store1.skl
cls
echo. PLAYER 1
echo.             Store
echo.     %name1%'s Mesos (%score1%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Eweca Skillset         400    e 
echo.  %p1.ews.vis%       
echo. 
echo. Laceda Skillset        400    l
echo.  %p1.las.vis%
echo. 
echo. Fallias Skillset       400    f
echo.  %p1.fas.vis%
echo.
echo.-----------------------------------
set/p store1.skl=

if %store1.skl%==e goto p1.ews
if %store1.skl%==l goto p1.las
if %store1.skl%==f goto p1.fas
if %store1.skl%==lmc goto p1.lmc
if %store1.skl%==back goto store
goto store1.skl

:p1.ews
if %p1.ews.a%==1 goto store1.skl
if %score1% lss 400 goto store1.skl
if %p1.las.a%==1 store1.skl
if %p1.fas.a%==1 store1.skl
set/a score1-=400
set/a p1.ews.a=1
set/a p1.set.hl=150
set/a p1.set.en=300
set/a p1.set.df=5
set/a p1.defrate=10
set/a p1.defpen=4
set/a p1.deflimit=30
set/a p1.hllimit=250
set/a p1.enlimit=600
set p1.sta.vis=Eweca
set p1.sta.sk1=Ice Spear   (ice)
set p1.sta.sk2=Eweca Heal  (heal)
set p1.sta.sk3=Mana Sheild (msh)
set p1.sta.sk4=Holy Arrow  (Holy)
set p1.sta.sk5=Genesis     (genesis)
set p1.skd.sk1=[Energy Class]
set p1.skd.sk2=Blessed with the energy of Eweca, you now have mythical magic abilities,
set p1.skd.sk3=Overwhelming anyone who gets in your way, you are a descendant of Eweca.
set p1.skd.sk4=[Difference] The difference between Eweca and other classes is their power to keep going.
set p1.skd.sk5=- They are able to keep going and keep on throwing huge attacks at no stop.
set p1.skd.sk6=[Technical] Eweca attacks cost a lot less energy than the damage, unlike all the other classes.
set p1.skd.sk7=- this gives the eweca class to be able to hugely damage anything with little effort
set p1.ews.vis=Active
set p1.fas.vis=Locked
set p1.las.vis=Locked
echo Blessed with the energy of Eweca, you now have mythical magic abilities,
timeout 1 >nul
echo Overwhelming anyone who gets in your way, you are a descendant of Eweca.
timeout 4 >nul
goto store1.skl

:p1.las
if %p1.las.a%==1 goto store1.skl
if %score1% lss 400 goto store1.skl
if %p1.ews.a%==1 store1.skl
if %p1.fas.a%==1 store1.skl
set/a score1-=400
set/a p1.las.a=1
set/a p1.set.hl=200
set/a p1.set.en=50
set/a p1.set.df=5
set/a p1.defrate=20
set/a p1.defpen=4
set/a p1.deflimit=20
set/a p1.hllimit=300
set/a p1.enlimit=200
set p1.sta.sk1=Mana Infusion  (mfusion)
set p1.sta.sk2=Lunar Brandish (lunar)
set p1.sta.sk3=Mana Sheild    (msh)
set p1.sta.sk4=Laceda Blossom (lbloss)
set p1.sta.sk5=Laceda Blade   (lblade)
set p1.skd.sk1=[Attack Class]
set p1.skd.sk2=Given the strength of Laceda, you now have outstanding attack power.
set p1.skd.sk3=Destroying anything that tries to get in the way, you have the birthright to Laceda.
set p1.skd.sk4=[Difference] The difference between Laceda and other classes is Laceda's alility to stay constant.
set p1.skd.sk5=- this means that laceda will do almost constant damage, constant huge damage.
set p1.skd.sk6=[Technical] Though Laceda drains little energy compared to other classes, the energy recharge rate for laceda is slow
set p1.skd.sk7=- this means that this class is the opposite of eweca and must used co-ordinated attacks.
set p1.sta.vis=Laceda
set p1.ews.vis=Locked
set p1.fas.vis=Locked
set p1.las.vis=Active
echo Given the strength of Laceda, you now have outstanding attack power.
timeout 1 >nul
echo Destroying anything that tries to get in the way, you have the birthright to Laceda.
timeout 4 >nul
goto store1.skl

:p1.fas
if %p1.fas.a%==1 goto store1.skl
if %score1% lss 400 goto store1.skl
if %p1.ews.a%==1 store1.skl
if %p1.las.a%==1 store1.skl
set/a score1-=400
set/a p1.fas.a=1
set/a p1.set.hl=300
set/a p1.set.en=100
set/a p1.set.df=5
set/a p1.defrate=30
set/a p1.defpen=2
set/a p1.deflimit=40
set/a p1.hllimit=500
set/a p1.enlimit=200
set p1.sta.sk1=Smash          (smash)
set p1.sta.sk2=Falias Heal    (fheal)
set p1.sta.sk3=Falias Sheild  (msh)
set p1.sta.sk4=Light Brandish (lightb)
set p1.sta.sk5=Falias' Wrath  (falias)
set p1.skd.sk1[Defence Class]
set p1.skd.sk2Bestowed with the force of Falias, you know have superior defence capabilities.
set p1.skd.sk3Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
set p1.skd.sk4[Difference] Huge defence, huge health, low attack, this means that Falias is the ultimate survivor
set p1.skd.sk5[Technical] Huge defrate, minimal def peneratration, not just anyone can beat a failias.
set p1.skd.sk6=.
set p1.skd.sk7=.
set p1.sta.vis=Falias
set p1.ews.vis=Locked
set p1.fas.vis=Active
set p1.las.vis=Locked
echo Bestowed with the force of Falias, you know have superior defence capabilities.
timeout 1 >nul
echo Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
timeout 4 >nul
goto store1.skl

::Admn Skillset
:p1.lmc
if exist "G:\lmc.admnlock\key.lmc" goto p1.lmckey
goto store1.skl
:p1.lmckey
if %p1.lmc.a%==1 goto store1.skl
if %score1% lss 400 goto store1.skl
if %p1.ews.a%==1 store1.skl
if %p1.las.a%==1 store1.skl
if %p1.fas.a%==1 store1.skl
set/a score1-=400
set/a p1.lmc.a=1
set/a p1.set.hl=180
set/a p1.set.en=200
set/a p1.set.df=8
set/a p1.defrate=20
set/a p1.defpen=10
set/a p1.deflimit=30
set/a p1.hllimit=350
set/a p1.enlimit=800
set p1.sta.sk1=Byakurai        (byaku)
set p1.sta.sk2=Black Light     (blight)
set p1.sta.sk3=Luminous Sheild (lsh)
set p1.sta.sk4=Dark Flame      (dflame)
set p1.sta.sk5=Luminous Arc    (luminous)
set p1.sta.sk1=[Attack Class]
set p1.sta.sk2=Through the hidden power of the Goddess' Morringhan and Neamhein, nothing is impossible.
set p1.sta.sk3=Letting the wrath of the deities into the world, you are a true diety yourself.
set p1.sta.sk4=[Difference] The difference between the Luminous and the Other classes is that the luminous
set p1.sta.sk5=- has the strongest atack of all the classes, but the attacks are not stable like Laceda.
set p1.sta.sk6=[Technical] The Luminous also has the strongest defpen rate of of all the classes.
set p1.sta.sk7=- Low health and huge energy. Simple as that.
set p1.sta.vis=Luminous
set p1.ews.vis=Locked
set p1.fas.vis=Locked
set p1.las.vis=Locked
echo Through the hidden power of the Goddess' Morringhan and Neamhein, nothing is impossible.
timeout 1 >nul
echo Letting the wrath of the deities into the world, you are a true diety yourself.
timeout 2 >nul
goto store1.skl

:store1.ski
cls
echo. PLAYER 1
echo.             Store
echo.     %name1%'s Mesos (%score1%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Sokatsui               150    s
echo.  %p1.sok.vis%       
echo. 
echo. Lightning              450    l
echo.  %p1.lig.vis%
echo. 
echo. Getsuga Tenshou        600    g
echo.  %p1.get.vis%
echo. 
echo.-----------------------------------
echo. Page 1 (use 'pd' for page down)
set/p store1.ski=

if %store1.ski%==g goto ski1.get
if %store1.ski%==s goto ski1.sok
if %store1.ski%==l goto ski1.lig
if %store1.ski%==pd goto store1.ski2
if %store1.ski%==back goto store

echo %store1.ski% is an unknown item
timeout 1 >nul
goto store1.ski

:store1.ski2
cls
echo. PLAYER 1
echo.             Store
echo.     %name1%'s Mesos (%score1%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Hdrain                 200    h
echo.  %p1.hdr.vis%       
echo.
echo. [Empty slot]            --    -
echo.  %p1..vis%
echo. 
echo. [Empty slot]            --    -
echo.  %p1..vis%
echo. 
echo.-----------------------------------
echo. Page 2 (use 'pu' for page up)
set/p store1.ski2=

if %store1.ski2%==h goto ski1.hdr
if %store1.ski2%==s goto ski1.sok
if %store1.ski2%==l goto ski1.lig
if %store1.ski2%==pu goto store1.ski
if %store1.ski2%==back goto store

echo %store1.ski%2 is an unknown item
timeout 1 >nul
goto store1.ski


:store1.ski.hav
echo You already obtained the skill!
timeout 1 >nul
goto store1.ski

:store1.ski.nom
echo Not enough mesos, sorry.
timeout 1 >nul
goto store1.ski

:ski1.get
if %p1.get.a%==1 goto store1.ski.hav
if %score1% lss 600 goto store1.ski.nom
set/a p1.get.a=1
set p1.get.vis=Obtained
set/a score1-=600
echo You have inherited the Legendary
echo         GETSUGA TENSHOU!
timeout 2 >nul
echo The input for this skill is "getsuga"
timeout 3 >nul
goto store1.ski

:ski1.sok
if %p1.sok.a%==1 goto store1.ski.hav
if %score1% lss 150 goto store1.ski.nom
set/a p1.sok.a=1
set p1.sok.vis=Obtained
set/a score1-=150
echo You have inherited Hado 33
echo         SOKATSUI
timeout 2 >nul
echo The input for this skill is "sokatsui"
timeout 3 >nul
goto store1.ski

:ski1.lig
if %p1.lig.a%==1 goto store1.ski.hav
if %score1% lss 450 goto store1.ski.nom
set/a p1.lig.a=1
set p1.lig.vis=Obtained
set/a score1-=450
echo You have inherited the Light of the sky,
echo              LIGHTNING
timeout 2 >nul
echo The input for this skill is "light"
timeout 3 >nul
goto store1.ski

:ski1.hdr
if %p1.hdr.a%==1 goto store1.ski.hav
if %score1% lss 200 goto store1.ski.nom
set/a p1.hdr.a=1
set p1.hdr.vis=Obtained
set/a score1-=200
echo You have inherited the skill of a vampire,
echo              HEALTH DRAIN
timeout 2 >nul
echo The input for this skill is "hdrain"
timeout 3 >nul
goto store1.ski


::=========================================--------------------==Player Store2



:store2
cls
echo. PLAYER 2
echo.             Store
echo.     %name2%'s Mesos (%score2%)
echo.     Exchange PTS for bonuses.  
echo.                       (MESO) (INP)
echo. +10 Starting Health:   100     h 
echo. +10 Starting Energy:   100     e 
echo. +5 Defence:            100     d 
echo.       
echo. Classes                       cls
echo. 
echo. Skills                        ski
echo.
echo. H+%p2sh% E+%e2sh% D+%d2sh%
echo.-----------------------------------
set/p store2=

if %store2%==h goto sh2
if %store2%==e goto se2
if %store2%==d goto sd2
if %store2%==cls goto store2.skl
if %store2%==ski goto store2.ski
if %store2%==next goto starti
goto store2


:sh2
if %score2% lss 100 goto store2
set/a score2-=100
set/a p2sh+=10
if %p2sh% lss %p2.hllimit% goto store2
set/a p2sh=%p2.hllimit%
set/a score2+=100
goto store2

:se2
if %score2% lss 100 goto store2
set/a score2-=100
set/a e2sh+=10
if %e2sh% lss %p2.enlimit% goto store2
set/a p2sh=%p2.enlimit%
set/a score2+=100
goto store2

:sd2
if %score2% lss 100 goto store2
set/a score2-=100
set/a d2sh+=5
if %d2sh% lss %p2.deflimit% goto store2
set/a d2sh=%p2.deflimit%
set/a score2+=100
goto store2

:store2.skl
cls
echo. PLAYER 2
echo.             Store
echo.     %name2%'s Mesos (%score2%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Eweca Skillset         400    e 
echo.  %p2.ews.vis%       
echo. 
echo. Laceda Skillset        400    l
echo.  %p2.las.vis%
echo. 
echo. Fallias Skillset       400    f
echo.  %p2.fas.vis%
echo.
echo.-----------------------------------
set/p store2.skl=

if %store2.skl%==e goto p2.ews
if %store2.skl%==l goto p2.las
if %store2.skl%==f goto p2.fas
if %store2.skl%==back goto store2
goto store1.skl

:p2.ews
if %p2.ews.a%==1 goto store2.skl
if %score2% lss 400 goto store2.skl
if %p2.las.a%==1 store2.skl
if %p2.fas.a%==1 store2.skl
set/a score2-=400
set/a p2.ews.a=1
set/a p2.set.hl=150
set/a p2.set.en=300
set/a p2.set.df=5
set/a p2.defrate=10
set/a p2.defpen=4
set/a p2.deflimit=30
set p2.sta.vis=Eweca
set p2.sta.sk1=Ice Spear   (ice)
set p2.sta.sk2=Eweca Heal  (heal)
set p2.sta.sk3=Mana Sheild (msh)
set p2.sta.sk4=Holy Arrow  (holy)
set p2.sta.sk5=Genesis     (genesis)
set p2.skd.sk1=[Energy Class]
set p2.skd.sk2=Blessed with the energy of Eweca, you now have mythical magic abilities,
set p2.skd.sk3=Overwhelming anyone who gets in your way, you are a descendant of Eweca.
set p2.skd.sk4=[Difference] The difference between Eweca and other classes is their power to keep going.
set p2.skd.sk5=- They are able to keep going and keep on throwing huge attacks at no stop.
set p2.skd.sk6=[Technical] Eweca attacks cost a lot less energy than the damage, unlike all the other classes.
set p2.skd.sk7=- this gives the eweca class to be able to hugely damage anything with little effort
set p2.ews.vis=Active
set p2.fas.vis=Locked
set p2.las.vis=Locked
echo Blessed with the energy of Eweca, you now have mythical magic abilities,
timeout 1 >nul
echo Overwhelming anyone who gets in your way, you are a descendant of Eweca.
timeout 4 >nul
goto store2.skl

:p2.las
if %p2.las.a%==1 goto store2.skl
if %score2% lss 400 goto store2.skl
if %p2.ews.a%==1 store2.skl
if %p2.fas.a%==1 store2.skl
set/a score2-=400
set/a p2.las.a=1
set/a p2.set.hl=200
set/a p2.set.en=50
set/a p2.set.df=5
set/a p2.defrate=20
set/a p2.defpen=4
set/a p2.deflimit=40
set p2.sta.vis=Laceda
set p2.sta.sk1=Mana Infusion  (mfusion)
set p2.sta.sk2=Lunar Brandish (lunar)
set p2.sta.sk3=Mana Sheild    (msh)
set p2.sta.sk4=Laceda Blossom (lbloss)
set p2.sta.sk5=Laceda Blade   (lblade)
set p2.skd.sk1=[Attack Class]
set p2.skd.sk2=Given the strength of Laceda, you now have outstanding attack power.
set p2.skd.sk3=Destroying anything that tries to get in the way, you have the birthright to Laceda.
set p2.skd.sk4=[Difference] The difference between Laceda and other classes is Laceda's alility to stay constant.
set p2.skd.sk5=- this means that laceda will do almost constant damage, constant huge damage.
set p2.skd.sk6=[Technical] Though Laceda drains little energy compared to other classes, the energy recharge rate for laceda is slow
set p2.skd.sk7=- this means that this class is the opposite of eweca and must used co-ordinated attacks.
set p2.ews.vis=Locked
set p2.fas.vis=Locked
set p2.las.vis=Active
echo Given the strength of Laceda, you now have outstanding attack power.
timeout 1 >nul
echo Destroying anything that tries to get in the way, you have the birthright to Laceda.
timeout 4 >nul
goto store2.skl

:p2.fas
if %p2.fas.a%==2 goto store2.skl
if %score2% lss 400 goto store.skl
if %p2.ews.a%==1 store2.skl
if %p2.las.a%==1 store2.skl
set/a score2-=400
set/a p2.fas.a=1
set/a p2.set.hl=300
set/a p2.set.en=100
set/a p2.set.df=5
set/a p2.defrate=30
set/a p2.defpen=2
set/a p2.deflimit=50
set p2.sta.vis=Falias
set p2.sta.sk1=Smash          (smash)
set p2.sta.sk2=Falias Heal    (fheal)
set p2.sta.sk3=Falias Sheild  (msh)
set p2.sta.sk4=Light Brandish (lightb)
set p2.sta.sk5=Falias' Wrath  (falias)
set p2.skd.sk1[Defence Class]
set p2.skd.sk2Bestowed with the force of Falias, you know have superior defence capabilities.
set p2.skd.sk3Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
set p2.skd.sk4[Difference] Huge defence, huge health, low attack, this means that Falias is the ultimate survivor
set p2.skd.sk5[Technical] Huge defrate, minimal def peneratration, not just anyone can beat a failias.
set p2.skd.sk6=.
set p2.skd.sk7=.
set p2.ews.vis=Locked
set p2.fas.vis=Active
set p2.las.vis=Locked
echo Bestowed with the force of Falias, you know have superior defence capabilities.
timeout 1 >nul
echo Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
timeout 4 >nul
goto store2.skl

:store2.ski
cls
echo. PLAYER 2
echo.             Store
echo.     %name2%'s Mesos (%score2%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Sokatsui               150    s
echo.  %p2.sok.vis%       
echo. 
echo. Lightning              450    l
echo.  %p2.lig.vis%
echo. 
echo. Getsuga Tenshou        600    g
echo.  %p2.get.vis%
echo.
echo.-----------------------------------
echo. Page 1 (use 'pd' for page down)
set/p store2.ski=

if %store2.ski%==g goto ski2.get
if %store2.ski%==s goto ski2.sok
if %store2.ski%==l goto ski2.lig
if %store2.ski%==pd goto store2.ski2
if %store2.ski%==back goto store2

echo %store2.ski% is an unknown item
timeout 1 >nul
goto store2.ski

:store2.ski2
cls
echo. PLAYER 2
echo.             Store
echo.     %name2%'s Mesos (%score2%) 
echo.     Input 'back' to go back
echo.                       (MESO)(INP)
echo. Hdrain                 200    h
echo.  %p2.hdr.vis%       
echo.
echo. [Empty slot]            --    -
echo.  %p2..vis%
echo. 
echo. [Empty slot]            --    -
echo.  %p2..vis%
echo. 
echo.-----------------------------------
echo. Page 2 (use 'pu' for page up)
set/p store2.ski2=

if %store2.ski2%==h goto ski2.hdr
if %store2.ski2%==pu goto store2.ski
if %store2.ski2%==back goto store

echo %store2.ski%2 is an unknown item
timeout 1 >nul
goto store1.ski


:store2.ski.hav
echo You already obtained the skill!
timeout 1 >nul
goto store2.ski

:store2.ski.nom
echo Not enough mesos, sorry.
timeout 1 >nul
goto store2.ski

:ski2.get
if %p2.get.a%==1 goto store2.ski.hav
if %score2% lss 600 goto store2.ski.nom
set/a p2.get.a=1
set p2.get.vis=Obtained
set/a score2-=600
echo You have inherited the Legendary
echo         GETSUGA TENSHOU!
timeout 1 >nul
echo The input for this skill is "getsuga"
timeout 2 >nul
goto store2.ski

:ski2.sok
if %p2.sok.a%==1 goto store2.ski.hav
if %score2% lss 150 goto store2.ski.nom
set/a p2.sok.a=1
set p2.sok.vis=Obtained
set/a score2-=150
echo You have inherited Hado 33
echo         SOKATSUI
timeout 2 >nul
echo The input for this skill is "sokatsui"
timeout 3 >nul
goto store2.ski

:ski2.lig
if %p2.lig.a%==1 goto store2.ski.hav
if %score2% lss 450 goto store2.ski.nom
set/a p2.lig.a=1
set p2.lig.vis=Obtained
set/a score2-=450
echo You have inherited the Light of the sky,
echo              LIGHTNING
timeout 2 >nul
echo The input for this skill is "light"
timeout 3 >nul
goto store2.ski

:ski2.hdr
if %p2.hdr.a%==1 goto store2.ski.hav
if %score2% lss 200 goto store2.ski.nom
set/a p2.hdr.a=1
set p2.hdr.vis=Obtained
set/a score2-=200
echo You have inherited the skill of a vampire,
echo              HEALTH DRAIN
timeout 2 >nul
echo The input for this skill is "hdrain"
timeout 3 >nul
goto store2.ski
