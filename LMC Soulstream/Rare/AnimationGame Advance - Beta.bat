@echo off
color 0F
title Animation Battle (2P)
set/a player1.health=100
set/a player2.health=100
set/a player1.energy=100
set/a player2.energy=100
set/a player1.def=0
set/a player2.def=0
set/a player1.damage=0
set/a player2.damage=0
set/a p1sh=0
set/a p2sh=0
set/a e1sh=0
set/a e2sh=0
set/a d1sh=0
set/a d2sh=0
set/a damage.nul=0
goto setnormal

:setnormal
echo Welcome to LuminousityMC, Prozwolf's Animation Battle!
echo Please input Player1's Name?
echo Player 1 Will be the Cross (Plus)
set/p name1=
echo Please input Player2's Name?
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
set/a player1.health=100 + %p1sh%
set/a player2.health=100 + %p2sh%
set/a player1.energy=100 + %e1sh%
set/a player2.energy=100 + %e2sh%
set/a player1.def=0 + %d1sh%
set/a player2.def=0 + %d2sh%
set/a player1.damage=0
set/a player2.damage=0

cls
:selection1
set/a damage.nul=0
if %player1.def% gtr %player1.damage% goto sel.1grid
set/a player1.health-=(%player1.damage% - %player1.def%)
set/a player1.damage=0

if %player1.health% lss 1 goto die1
if %player2.health% lss 1 goto die2
:sel.1grid
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
echo. %name1%: %player1.health% Health %player1.energy% Energy %player1.def% Defence
echo. %name2%: %player2.health% Health %player2.energy% Energy %player2.def% Defence
echo.
echo. What skill would you like to use?
echo. %name1%'s turn
set/p mainselect1=

if %mainselect1%==getsuga goto getsuga1
if %mainselect1%==healmin goto healmin1
if %mainselect1%==attack goto att1
if %mainselect1%==rest goto res1
if %mainselect1%==healmax goto healmax1
if %mainselect1%==healmid goto healmid1
if %mainselect1%==endrain goto endrain1
if %mainselect1%==fusion goto fusion1
if %mainselect1%==hdrain goto hdrain1
if %mainselect1%==ebless goto ebless1
if %mainselect1%==ebolt goto ebolt1

echo. %mainselect1% is invalid.
goto selection1


:selection2
set/a damage.nul=0
if %player2.def% gtr %player2.damage% goto sel.2grid
set/a player2.tdamage=(%player2.damage% - %player2.def%)
set/a player2.health-=%player2.tdamage%
set/a player2.damage=0

if %player2.health% lss 1 goto die2
if %player1.health% lss 1 goto die1
:sel.2grid
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
echo. %name1%: %player1.health% Health %player1.energy% Energy %player1.def% Defence
echo. %name2%: %player2.health% Health %player2.energy% Energy %player2.def% Defence
echo.
echo. What skill would you like to use?
echo. %name2%'s turn
set/p mainselect2=

if %mainselect2%==getsuga goto getsuga2
if %mainselect2%==healmin goto healmin2
if %mainselect2%==attack goto att2
if %mainselect2%==rest goto res2
if %mainselect2%==healmax goto healmax2
if %mainselect2%==healmid goto healmid2
if %mainselect2%==endrain goto endrain2
if %mainselect2%==fusion goto fusion2
if %mainselect2%==hdrain goto hdrain2
if %mainselect2%==ebless goto ebless2
if %mainselect2%==ebolt goto ebolt2


echo. %mainselect2% is invalid.

goto selection2

:no.energy1
echo Not enough energy, sorry.
pause >nul
goto selection1

:no.energy2
echo Not enough energy, sorry.
pause >nul
goto selection2

::Energy Orb


:ebolt1
if %player1.energy% LSS 40 goto selection1
set/a damage.nul=30 - %d1sh%

cls
echo.
echo.
echo.
echo.
echo.  %name1%: Energy Bolt!              
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
echo.  -30 Energy             
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
echo.   +=                  -
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
echo.   +         =         -
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
echo.   +                 = -
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
echo.                       /
echo.   +                   -
echo.                       \
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
echo.                  -%damage.nul% Health
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
set/a damage.nul=0
set/a player1.energy-=30
set/a player2.damage=30
goto selection2

:ebolt2
if %player2.energy% LSS 40 goto no.energy2
set/a damage.nul=30 - %d2sh%
cls
echo.
echo.
echo.
echo.
echo.               %name2%: Energy Bolt!              
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
echo.                 -40 Energy             
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
echo.   +                  =-
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
echo.   +         =         -
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
echo.   + =                -
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
echo.   +                   -
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
echo. -%damage.nul% Health           
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
set/a damage.nul=0
set/a player2.energy-=30
set/a player1.damage=30
goto selection1

::Eweca Blessing

:ebless1
set /a hd=(6 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% - 10
set/a hd.h=%player1.health% - %hd.e%
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
set/a player1.health-=%hd.e%
set/a player1.energy+=%hd.a%
goto selection2


:ebless2
set /a hd=(6 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% - 10
set/a hd.h=%player2.health% - %hd.e%
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
set/a player2.health-=%hd.e%
set/a player2.energy+=%hd.a%
goto selection1

::Health Drain

:hdrain1
set /a hd=(5 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% + 30
if %player1.energy% LSS 30 goto no.energy1
if %player1.energy% LSS %hd.e% goto hdrain1
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
echo.Health +%hd.a%
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
set/a player1.energy-=%hd.e%
set/a player2.health-=%hd.a%
set/a player1.health+=%hd.a%
goto selection2

:hdrain2
set /a hd=(5 * %random%) / 32768 + 1
set/a hd.a=10 * %hd%
set/a hd.e=10 * %hd% + 30
if %player2.energy% LSS 20 goto no.energy2
if %player2.energy% LSS %hd.e% goto hdrain2
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
echo.               Health +%hd.a%
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
set/a player2.energy-=%hd.e%
set/a player1.health-=%hd.a%
set/a player2.health+=%hd.a%
goto selection1

::Fusion

:fusion1
set /a hd=(6 * %random%) / 32768 + 1
if %hd%==0 goto fusion1
if %hd%==1 goto fusion1
set/a hd.a=10 * %hd%
set/a hd.e=2 * %hd.a% - 30
set/a damage.nul=%hd.e% - %d1sh%
if %player1.energy% LSS 20 goto no.energy1
if %player1.energy% LSS %hd.a% goto fusion1
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
set/a player1.health-=%hd.a%
set/a player1.energy-=%hd.a%
set/a player2.damage=%hd.e%
goto selection2

:fusion2
set /a hd=(6 * %random%) / 32768 + 1
if %hd%==0 goto fusion2
if %hd%==1 goto fusion2
set/a hd.a=10 * %hd%
set/a hd.e=2 * %hd.a% - 30
set/a damage.nul=%hd.e% - %di2h%
if %player2.energy% LSS 20 goto no.energy2
if %player2.energy% LSS %hd.a% goto fusion2
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
set/a player2.health-=%hd.a%
set/a player2.energy-=%hd.a%
set/a player1.damage=%hd.e%
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
set/a player1.health-=30
set/a player1.energy+=40
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
set/a player2.health-=30
set/a player2.energy+=40
goto selection1

:: REST

:res1
cls
echo.
echo.
echo.
echo.
echo. ENERGY + 20                  
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
set/a player1.energy+=20
goto selection2

:res2
cls
echo.
echo.
echo.
echo.
echo.                   ENERGY + 20                  
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
set/a player2.energy+=20
goto selection1

:: Normal ATTACK

:att1
set /a crit.c=(3 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c1
:att.c.1
set /a crit.b=(8 * %random%) / 32768 + 1
if %crit.b%==1 goto att.c.1
if %crit.b%==2 goto att.c.1
set /a crit.d=5 * %crit.b%
set crit.a=CRITICAL:%crit.d%
goto attcrit1

:att.c1
set crit.a=HEALTH-10
set/a crit.d=10

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
set/a player2.damage=%crit.d%
goto selection2

:att2
set /a crit.c=(8 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c2
:att.c.2
set /a crit.b=(6 * %random%) / 32768 + 1
if %crit.b%==1 goto att.c.2
if %crit.b%==2 goto att.c.2
set /a crit.d=5 * %crit.b%
set crit.a=CRITICAL:%crit.d%
goto attcrit2

:att.c2
set crit.a=HEALTH-10
set/a crit.d=10


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
set/a player1.damage=%crit.d%
goto selection1

::HEAL

:healmin2
if %player2.energy% LSS 10 goto no.energy2
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
set/a player2.energy-=10
set/a player2.health+=15
goto selection1

:healmin1
if %player1.energy% LSS 10 goto no.energy1
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
set/a player1.health+=15
set/a player1.energy-=10
goto selection2

:healmax2
if %player2.energy% LSS 60 goto no.energy2
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
set/a player2.energy-=60
set/a player2.health+=60
goto selection1

:healmax1
if %player1.energy% LSS 60 goto no.energy1
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
set/a player1.health+=60
set/a player1.energy-=60
goto selection2

:healmid2
if %player2.energy% LSS 25 goto no.energy2
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
echo.                      HEALTH +30
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
set/a player2.energy-=20
set/a player2.health+=30
goto selection1

:healmid1
if %player1.energy% LSS 25 goto no.energy1
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
echo.  HEALTH + 30
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
set/a player1.health+=30
set/a player1.energy-=20
goto selection2

::GETSUGA TENSHOU

:getsuga2
if %player2.energy% LSS 160 goto no.energy2
cls
cls
echo.
echo.
echo.
echo.
echo.                      ENERGY-160
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
echo.                      ENERGY-160
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
echo.  -200
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
set/a player1.damage=240
set/a player2.energy-=160
goto selection1
:getsuga1
if %player1.energy% LSS 160 goto no.energy1
cls
echo.
echo.
echo.
echo.
echo. ENERGY-160
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
echo. ENERGY-160
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
echo.                         -200
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
set/a player2.damage=200
set/a player1.energy-=160
goto selection2


:die1
if %player2.health% LSS 1 goto draw
cls
echo.
echo.
echo.
echo.    
echo.                         
echo.                        
echo.  o                        -
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
echo.  o                        -
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
echo.    %name2% +15
echo.
echo.
echo.
echo.
echo.-----------------------------------
set/a score2+=15
timeout 10 >nul
goto store

:die2
if %player1.health% LSS 1 goto draw
cls
echo.
echo.
echo.
echo.    
echo.                         
echo.                        
echo.  +                        o
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
echo.  +                        o
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
echo.    %name1% +15
echo.
echo.
echo.
echo.
echo.-----------------------------------
set/a score1+=15
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
timeout 1 >nul
cls
echo.
echo.
echo.    %name1% and %name2% Draws!
echo.    
echo.                         
echo.                        
echo.  o                        o
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
echo.        \           /    
echo.       --o          o--
echo.        /           \   
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
echo.           /   \
echo.            ] [
echo.           \   / 
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
echo.         _________
echo.        /         \
echo.        \_________/               
echo.           \   /
echo.          _/___\_
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
echo.            DRAW        
echo.          %name1% +5pts
echo.          %name2% +5pts
echo.            
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 10 >nul
set/a score1+=5
set/a score2+=5
goto store



:store
cls
echo. PLAYER 1
echo.             Store
echo.     %name1%'s Points (%score1%) 
echo.     Exchange PTS for bonuses.  
echo.                       (PTS)(INP)
echo. +20 Starting Health:  ( 10 )( h )
echo. +20 Starting Energy:  ( 10 )( e )
echo. +5 Defence:           ( 10 )( d )
echo.       
echo. 
echo.
echo.
echo.
echo.
echo.-----------------------------------
set/p store1=

if %store1%==h goto sh1
if %store1%==e goto se1
if %store1%==d goto sd1
if %store1%==lb goto lb1
if %store1%==next goto store2

goto store

:sh1
if %score1% lss 10 goto store
set/a score1-=10
set/a p1sh+=20
goto store

:se1
if %score1% lss 10 goto store
set/a score1-=10
set/a e1sh+=20
goto store

:sd1
if %score1% lss 10 goto store
set/a score1-=10
set/a d1sh+=5
goto store

:lb1
if %lb1%==1 goto store
if %score1% lss 20 goto store
set/a score1-=20
set/a lb1=1
goto store

:store2
cls
echo. PLAYER 2
echo.             Store
echo.     %name2%'s Points (%score2%)
echo.     Exchange PTS for bonuses.  
echo.                       (PTS)(INP)
echo. +20 Starting Health:  ( 10 )( h )
echo. +20 Starting Energy:  ( 10)( e )
echo. +5 Defence:           ( 10 )( d )
echo.       
echo. 
echo.
echo.
echo.
echo.
echo.-----------------------------------
set/p store2=

if %store2%==h goto sh2
if %store2%==e goto se2
if %store2%==d goto sd2
if %store2%==lb goto lb2
if %store2%==next goto starti
goto store2


:sh2
if %score2% lss 10 goto store2
set/a score2-=10
set/a p2sh+=20
goto store2

:se2
if %score2% lss 10 goto store2
set/a score2-=10
set/a e2sh+=20
goto store2

:sd2
if %score2% lss 10 goto store2
set/a score2-=10
set/a d2sh+=5
goto store2

:lb2
if %lb2%==1 goto store2
if %score2% lss 20 goto store2
set/a score2-=20
set/a lb2=1
goto store2