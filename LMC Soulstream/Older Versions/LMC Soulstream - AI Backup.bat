@echo off
color 0F
title LMC Soulstream Version 0.3

set name1=User1
set name2=User2
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
set/a p1.exp=0
set/a p2.exp=0
set/a p1.dxp=0
set/a p2.dxp=0
set/a p1.dtotal=0
set/a p2.dtotal=0
set/a p1.defrate=20
set/a p2.defrate=20
set/a p1.defpen=5
set/a p2.defpen=5
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

set/a p1.defcost=100
set/a p2.defcost=100

set/a ai.dif=0
set ai.dif.v=None
set/a ai.a=0
set ai.choice=f
set/a saves.var=0
set/a ai.nochoice
set/a ai.chance

set/a p1.lmc.a=0
set/a p2.lmc.a=0

set/a p1.test.a=0
set/a p2.test.a=0

set/a p1.ews.a=0
set/a p2.ews.a=0
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

set menu=start

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

set store1.skr=Default

set/a p1.sok.ct=0
set/a p2.sok.ct=0
set/a p1.hdr.ct=0
set/a p2.hdr.ct=0
set/a p1.hly.ct=0
set/a p2.hly.ct=0
set/a p1.get.ct=0
set/a p2.get.ct=0
set/a p1.gen.ct=0
set/a p2.gen.ct=0
set/a p1.llb.ct=0
set/a p2.llb.ct=0
set/a p1.lbl.ct=0
set/a p2.lbl.ct=0
set/a p1.bla.ct=0
set/a p2.bla.ct=0
set/a p1.fhl.ct=0
set/a p2.fhl.ct=0
set/a p1.fbr.ct=0
set/a p2.fbr.ct=0
set/a p1.fal.ct=0
set/a p2.fal.ct=0
set/a p1.blk.ct=0
set/a p2.blk.ct=0
set/a p1.wrg.ct=0
set/a p2.wrg.ct=0
set/a p1.arc.ct=0
set/a p2.arc.ct=0

set mainselect1=attack
set mainselect2=attack
set mainans=n
set store1=next
set store2=next
set p1.ews.vis=Available
set p1.las.vis=Available
set p1.fas.vis=Available
set p2.ews.vis=Available
set p2.las.vis=Available
set p2.fas.vis=Available
set p1.get.vis=Available
set p2.get.vis=Avaliable
set p1.sok.vis=Available
set p2.sok.vis=Available
set p1.lig.vis=Available
set p2.lig.vis=Available
set p1.hdr.vis=Available
set p2.hdr.vis=Available

::Skill value (.sv) (10Float)
::Skill ranks (.sr)
::Skill multiplier (.sm) (10Float)
::Skill declaration (.sd) (string)

set/a p1.att.sv=5
set/a p1.att.sr=4
set/a p2.att.sv=5
set/a p2.att.sr=4
set/a p1.fus.sv=4
set/a p1.fus.sr=2
set/a p2.fus.sv=4
set/a p2.fus.sr=2
set/a p1.hla.sv=3
set/a p1.hla.sr=4
set/a p2.hla.sv=3
set/a p2.hla.sr=4
set/a p1.res.sv=5
set/a p1.res.sr=7
set/a p2.res.sv=5
set/a p2.res.sr=7

set/a p1.sok.sv=7
set/a p1.sok.sr=0
set/a p2.sok.sv=7
set/a p2.sok.sr=0
set/a p1.lig.sv=10
set/a p1.lig.sr=0
set/a p2.lig.sv=10
set/a p2.lig.sr=0
set/a p1.hdr.sv=10
set/a p1.hdr.sr=0
set/a p2.hdr.sv=10
set/a p2.hdr.sr=0
set/a p1.get.sv=20
set/a p1.get.sr=0
set/a p2.get.sv=20
set/a p2.get.sr=0

set/a p1.ice.sv=10
set/a p1.ice.sr=1
set/a p2.ice.sv=10
set/a p2.ice.sr=1
set/a p1.msh.sv=10
set/a p1.msh.sr=0
set/a p2.msh.sv=10
set/a p2.msh.sr=0
set/a p1.hly.sv=20
set/a p1.hly.sr=0
set/a p2.hly.sv=20
set/a p2.hly.sr=0
set/a p1.gen.sv=30
set/a p1.gen.sr=0
set/a p2.gen.sv=30
set/a p2.gen.sr=0

set/a p1.llc.sv=10
set/a p1.llc.sr=1
set/a p2.llc.sv=10
set/a p2.llc.sr=1
set/a p1.lbr.sv=15
set/a p1.lbr.sr=0
set/a p2.lbr.sv=15
set/a p2.lbr.sr=0
set/a p1.llb.sv=20
set/a p1.llb.sr=0
set/a p2.llb.sv=20
set/a p2.llb.sr=0
set/a p1.lbl.sv=30
set/a p1.lbl.sr=0
set/a p2.lbl.sv=30
set/a p2.lbl.sr=0

set/a p1.smh.sv=10
set/a p1.smh.sr=1
set/a p2.smh.sv=10
set/a p2.smh.sr=1
set/a p1.fsh.sv=15
set/a p1.fsh.sr=0
set/a p2.fsh.sv=15
set/a p2.fsh.sr=0
set/a p1.fbr.sv=20
set/a p1.fbr.sr=0
set/a p2.fbr.sv=20
set/a p2.fbr.sr=0
set/a p1.fsl.sv=30
set/a p1.fsl.sr=0
set/a p2.fsl.sv=30
set/a p2.fsl.sr=0

set/a p1.wwt.sv=10
set/a p1.wwt.sr=0
set/a p2.wwt.sv=10
set/a p2.wwt.sr=0
set/a p1.blk.sv=15
set/a p1.blk.sr=0
set/a p2.blk.sv=15
set/a p2.blk.sr=0
set/a p1.lsh.sv=15
set/a p1.lsh.sr=0
set/a p2.lsh.sv=15
set/a p2.lsh.sr=0
set/a p1.wrg.sv=20
set/a p1.wrg.sr=0
set/a p2.wrg.sv=20
set/a p2.wrg.sr=0
set/a p1.arc.sv=30
set/a p1.arc.sr=0
set/a p2.arc.sv=30
set/a p2.arc.sr=0

set/a ai.totalprob=0
set/a ai.choice=0

set/a ai.att.p=0
set/a ai.res.p=0
set/a ai.fus.p=0
set/a ai.hla.p=0

set/a ai.ice.p=0
set/a ai.msh.p=0
set/a ai.hly.p=0
set/a ai.gen.p=0

set/a ai.llc.p=0
set/a ai.lbr.p=0
set/a ai.llb.p=0
set/a ai.lbl.p=0

set/a ai.smh.p=0
set/a ai.fbr.p=0
set/a ai.fsl.p=0


if exist "saves.bat" ren save.bat save.lmc
if not exist "saves.lmc" (
echo. > saves.bat
ren saves.bat saves.lmc
)



goto splashstart

::-----------Splashstart
:splashstart
set/a splashn=(16 * %random%) / 32768 + 1
set/a splashn=(16 * %random%) / 32768 + 1

goto splash%splashn%

goto splashstart

:splash1
set splash=     Originally 2765 lines.
goto intro

:splash2
set splash=        non negotiable
goto intro

:splash3
set splash=     made of anti-anti matter,
goto intro

:splash4
set splash=       not reasonable
goto intro

:splash5
set splash=     if not ready goto...
goto intro

:splash6
set splash=       somehow not fair
goto intro

:splash7
set splash=      This won't work well.
goto intro

:splash8
set splash=      26061 Lines of CODE!
goto intro

:splash9
set splash=    An epic 5 digits of code!
goto intro    

:splash10
set splash=    if not dead goto heaven
goto intro

:splash11   
set splash= ...darkha selim meder dau sabi!
goto intro

:splash12
set splash=   About 491,151 Characters!
goto intro 

:splash13
set splash=     arithmetic operations!
goto intro

:splash14
set splash=         seems legit
goto intro

:splash15
set splash=     not actually loading.
goto intro

:splash16
set splash=    written in cmd by cmd!
goto intro

:intro
::Intro
cls
set/a sel=(15 * %random%) / 32768 + 1
set/a sel=(15 * %random%) / 32768 + 1
if %sel% lss 10 (
color 0%sel%
)

if %sel%==10 color 0A
if %sel%==11 color 0B
if %sel%==12 color 0C
if %sel%==13 color 0D
if %sel%==14 color 0E
if %sel%==15 color 0F


echo.
echo.
echo.
echo.
echo.
echo.
echo.                   _  _     __   __         __    __        _  _    __
echo.         /   /  \ / \/ \ \ /  \ /  \ /  \  /_  /  /  \_/   / \/ \  /
echo.         \__ \__/ \    / / \  / \__/ \__/ __/  \  \   /    \    /  \__
echo.
echo.                          LuminousityMC Studios
echo.                   
echo.                    %splash%
timeout 1 >nul
cls
set/a sel=(15 * %random%) / 32768 + 1
set/a sel=(15 * %random%) / 32768 + 1
if %sel% lss 10 (
color 0%sel%
)

if %sel%==10 color 0A
if %sel%==11 color 0B
if %sel%==12 color 0C
if %sel%==13 color 0D
if %sel%==14 color 0E
if %sel%==15 color 0F
echo.
echo.
echo.
echo.
echo.
echo.
echo.                   _  _     __   __         __    __        _  _    __
echo.         /   /  \ / \/ \ \ /  \ /  \ /  \  /_  /  /  \_/   / \/ \  /
echo.         \__ \__/ \    / / \  / \__/ \__/ __/  \  \   /    \    /  \__
echo.
echo.                          LuminousityMC Studios
echo.                   
echo.                    %splash%
timeout 1 >nul
color 0F
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                   EPILEPSY WARNING!
echo.
echo.                      MAY CONTAIN FLASHING LIGHTS
echo.
echo.                         PROCEED AT YOUR OWN RISK
echo.
echo.
echo.
timeout 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                   Soulstream is currently in an 'alpha' stage,
echo.
echo.                      there are still a lot of bugs.
echo.
echo.                    Soulstream may crash unexpectedly,
echo.
echo.                       please be mindful of that.
echo.
echo.                               Thanks.
timeout 2 >nul
goto menu


:menu
cls
echo.
echo. LMC Soulstream 0.3
echo.
echo.
echo.
echo. 1.New Game
echo.
echo. 2.Load Autosave
echo.
echo. 3.About
echo. 
echo. 4.Exit
echo.
echo.
echo. LuminousityMC Soulstream (C) LuminousityMC Studios 2012 - 2013
echo. LMC Soulstream Written and Designed by Wolfe T Lumi of LuminousityMC
echo.
set/p menu=
if %menu%==1 goto menu.start
if %menu%==2 goto menu.autosave
if %menu%==3 goto menu.about
if %menu%==4 goto menu.exit 
if %menu%==start goto menu.start
if %menu%==autosave goto menu.autosave
if %menu%==about goto menu.about
if %menu%==exit goto menu.exit 
echo. Input not recognised.
timeout 2 >nul
goto menu

:menu.start
goto setnormal

:menu.about
goto lmc.about

:menu.exit
exit

:lmc.about
cls
echo.
echo.                  LuminousityMC Studios - About
echo.
echo.
echo.
echo.                   Hey, this is the about page!
echo.                 pretty sure you already know that.
echo.
echo.         Please note that LuminousityMC Studios is unnofficial
echo.               And anything under the name LuminousityMC
echo.              Is copyrighted by Wolfe T Lumi / Jimmy Trac
echo.
echo.                LuminousityMC Studios is unnofical NOW
echo.                  But won't be in the future :P
echo.
echo.
echo.                        [Press any key]
pause >nul
cls
echo.
echo.                  LuminousityMC Studios - About
echo.
echo.
echo.
echo.                      LuminousityMC or LMC
echo.   It was suppose to stand for Luminousity Mnemonic (Computing, Core etc?)
echo.                 But I'm not totally sure about it.
echo.
echo.                     any suggestions anyone?
echo.             email me at prozwolf2012@hotmail.com
echo.
echo.                        [Press any key]
pause >nul
cls
echo.
echo.                  LuminousityMC Studios - About
echo.
echo.
echo.                            Anyways,       
echo.              Special Thanks to the following people
echo.
echo.                        Prozwolf/Wolfe T Lumi
echo.                 Lead Developer / Graphic Designer
echo.                          Founder of LMC
echo.
echo.                      Darktempist/David N
echo.              BetaTester / Helped with original version
echo.
echo.      Andrew T, David D, Jimmy N, Daniel W, Eric T, Jason L
echo.                     Beta Testers / Being Awesome
echo.
echo.                            Austin V
echo.               Promoting Soulstream / Also Awesome
echo.
echo.                    Am i forgetting anyone?
echo.
echo.                        [Press any key]
pause >nul
cls
echo.
echo.                  LuminousityMC Studios - About
echo.
echo.
echo.                         Info on Soulstream     
echo.
echo.                       Name : LMC Soulstream
echo.                         Why "SoulStream"?
echo.        It represents the minute mythology behind the game.
echo.                    That would be Irish Mythology
echo.
echo.                  Though the ideas are just minute,
echo.                      I might change the names
echo.                   But for now, i'm happy with it now.
echo.
echo.     The original idea was an animation between to characters fighting,
echo.                      But after some improvision,
echo.               AnimationBattle was made with only 6 skills,
echo.      It layed the original groundwork for Soulstream and Resonance.
echo.                       It was about 1.6k Lines.
echo.                  DarkTempist helped code this part.
echo.             This was made when i was year 8, so bear with me.
echo.
echo.   Then came the rename to Resonance, with New battle calculations!
echo.      Defence was added, health and energy gained more purpose,
echo.         The shop was revamped, making winning more worth it.
echo.       The breaking point between Soulstream and AnimationBattle
echo.                 Is here. The changes were not recorded.
echo.                    It was about 3 - 3.6k lines
echo.
echo.                Then came the rename to SoulStream.
echo         Even more Damage calculations! Defence Penetration! Defence rates!
echo.           Classes! Skills! Skillranks! Skill randomisation!
echo.             Locked Skills! Saving! and soo much more!
echo.           From a simple classroom project, to much more!
echo.          Clocked in at ~22k Lines! that is over 6 times the code!
echo.           The changelog was worked on, and is huge by itself.
echo.               The new Skillranking system is nearly done!
echo.                  I can't wait until it has finished!
echo.
echo.        Started Term 2 Yr 8 (Animation Battle) - Term 4 Yr 8 (Resonance)
echo.                     to Term 2 Year 9 (SoulStream)
echo.               A lot of time and effort has been put into this.
echo.
echo.           I am the only Coder and Graphic designer, so bear with me.
echo.                     But everything is going great!
echo.         This gives me so much to do and do much to look forward to
echo.                     This is going on my resume :)
echo.
echo.                     Well, have fun. Cya for now.
echo.
echo.                           [Press any key]
pause >nul
cls
echo.
echo.                  LuminousityMC Studios - About
echo.
echo.                  Also, if you encounter any bugs
echo.               Or grammatical errors, please email me.
echo.                 I will do my best to fix things up
echo.
echo.                      prozwolf2012@hotmail.com
echo.
echo.                          [Press any key]
pause >nul
goto menu




:setnormal
cls
set ai.choice=a
echo.
echo. Would you like to play with a ai or a friend?
echo.
set/p ai.choice=[a/f]=
if %ai.choice%==a goto set.ai
if not %ai.choice%==f (
echo %ai.choice% is not recognised
timeout 2 >nul
goto setnormal
)

echo.
echo. Input Player1's Name
set/p name1=
echo.
echo. Input Player2's Name
set/p name2=
:test.flag
echo.
echo. Would you like to run Soulstream on test mode?
set/p mainans=[y/n]=
if %mainans%==y goto testmode
goto starti


:set.ai
cls
set/a ai.a=1
echo.
echo. What is your name?
set/p name1=
set/a ai.namechoice=(17 * %random%) / 32768 + 1
if %ai.namechoice%==1 (set name2=AI
set/a ai.dif=1
set ai.dif.v=Easy )
if %ai.namechoice%==2 (set name2=Byebye25
set/a ai.dif=1
set ai.dif.v=Easy )
if %ai.namechoice%==3 (set name2=%name1%-2.0
set/a ai.dif=1
set ai.dif.v=Useless )
if %ai.namechoice%==4 (set name2=Darktempist
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==5 (set name2=Darkward98
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==6 (set name2=MrAnzjzn
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==7 (set name2=Shadowmage7
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==8 (set name2=Wdragpns
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==9 (set name2=Sonnyuhs
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==10 (set name2=P3RNU5
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==11 (set name2=Qwertopia
set/a ai.dif=2
set ai.dif.v=Normal )
if %ai.namechoice%==12 (set name2=Drgbishop
set/a ai.dif=3
set ai.dif.v=Hard )
if %ai.namechoice%==13 (set name2=Wolfe
set/a ai.dif=3
set ai.dif.v=Hard )
if %ai.namechoice%==14 (set name2=Prozwolf
set/a ai.dif=3
set ai.dif.v=Hard )
if %ai.namechoice%==15 (set name2=God
set/a ai.dif=1
set ai.dif.v=Easy )
if %ai.namechoice%==16 (set name2=Faptopia
set/a ai.dif=1
set ai.dif.v=Easy )
if %ai.namechoice%==17 (set name2=Daykin
set/a ai.dif=3
set ai.dif.v=Hard )
echo. 
echo. Your Enemy's name is %name2%
echo. The difficulty level is %ai.dif.v%
timeout 4 >nul
goto starti

:testmode
cls
set/a p.testh=500
set/a p.teste=500
set/a p.testd=15
set p1.test=t
set p2.test=t
set/a p1.tesd=10
set/a p2.tesd=10
set/a p1.tesr=20
set/a p2.tesr=20
set/a p.tests=10000
set/a p.testx=10000
set/a p1.dlim=10000
set/a p2.dlim=10000
set/a p1.hlim=10000
set/a p2.hlim=10000
set/a p1.elim=10000
set/a p2.elim=10000
set testfor=y

title LMC Soulsteam Test Mode
echo.
echo. Would you like to load presets?
echo. [testpresets.txt] file.
set/p testfor=[y/n]=
if %testfor%==y goto testpreset
if %testfor%==n goto testplayer
goto testmode

:testpreset
if not exist "testpresets.txt" (
echo testpresets file not found
timeout 2 >nul
goto testpresetsgen
) else (
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                            Loading Presets
echo.
echo.                             
ren testpresets.txt testpresets.bat
call testpresets.bat
ren testpresets.bat testpresets.txt
timeout 1 >nul
goto starti
)

:testpresetsgen
echo. Would you like to generate a testpresets file?
set/p testp=[y/n]=
if %testp%==y goto testgen else goto testplayer

:testgen
cls
echo.
echo. Generating Testpresets.txt...

if exist testpresets.txt goto testmode

echo ::Edit for test mode. > testpresets.txt
echo :: leave the "set/a"s please. >> testpresets.txt
echo :: Do not touch if you do not know what it does >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.health = 100 >> testpresets.txt
echo set/a p1.set.hl = 100 >> testpresets.txt
echo set/a p2.health = 100 >> testpresets.txt
echo set/a p2.set.hl = 100 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.energy = 100 >> testpresets.txt
echo set/a p1.set.en = 100 >> testpresets.txt
echo set/a p2.energy = 100 >> testpresets.txt
echo set/a p2.set.en = 100 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.def =    15 >> testpresets.txt
echo set/a p1.set.df = 15 >> testpresets.txt
echo set/a p2.def =    15 >> testpresets.txt
echo set/a p2.set.df = 15 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.exp=100000 >> testpresets.txt
echo set/a p2.exp=100000 >> testpresets.txt
echo. >> testpresets.txt
echo set/a score1=100000 >> testpresets.txt
echo set/a score2=100000 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.deflimit = 15 >> testpresets.txt
echo set/a p2.deflimit = 15 >> testpresets.txt
echo set/a p1.hllimit = 1000 >> testpresets.txt
echo set/a p2.hllimit = 1000 >> testpresets.txt
echo set/a p1.enlimit = 1000 >> testpresets.txt
echo set/a p2.enlimit = 1000 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.defpen = 5 >> testpresets.txt
echo set/a p2.defpen = 5 >> testpresets.txt
echo set/a p1.defrate = 20 >> testpresets.txt
echo set/a p2.defrate = 20 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.lmc.a=0 >> testpresets.txt
echo set/a p2.lmc.a=0 >> testpresets.txt
echo set/a p1.ews.a=0 >> testpresets.txt
echo set/a p2.ews.a=0 >> testpresets.txt
echo set/a p1.las.a=0 >> testpresets.txt
echo set/a p2.las.a=0 >> testpresets.txt
echo set/a p1.fas.a=0 >> testpresets.txt
echo set/a p2.fas.a=0 >> testpresets.txt
echo set/a p1.test.a=0 >> testpresets.txt
echo set/a p2.test.a=0 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.att.sv=5 >> testpresets.txt
echo set/a p1.att.sr=17 >> testpresets.txt
echo set/a p2.att.sv=5 >> testpresets.txt
echo set/a p2.att.sr=17 >> testpresets.txt
echo set/a p1.fus.sv=4 >> testpresets.txt
echo set/a p1.fus.sr=17 >> testpresets.txt
echo set/a p2.fus.sv=4 >> testpresets.txt
echo set/a p2.fus.sr=17 >> testpresets.txt
echo set/a p1.hla.sv=3 >> testpresets.txt
echo set/a p1.hla.sr=17 >> testpresets.txt
echo set/a p2.hla.sv=3 >> testpresets.txt
echo set/a p2.hla.sr=17 >> testpresets.txt
echo set/a p1.res.sv=5 >> testpresets.txt
echo set/a p1.res.sr=17 >> testpresets.txt
echo set/a p2.res.sv=5 >> testpresets.txt
echo set/a p2.res.sr=17 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.sok.sv=7 >> testpresets.txt
echo set/a p1.sok.sr=17 >> testpresets.txt
echo set/a p2.sok.sv=7 >> testpresets.txt
echo set/a p2.sok.sr=17 >> testpresets.txt
echo set/a p1.lig.sv=10 >> testpresets.txt
echo set/a p1.lig.sr=17 >> testpresets.txt
echo set/a p2.lig.sv=10 >> testpresets.txt
echo set/a p2.lig.sr=17 >> testpresets.txt
echo set/a p1.hdr.sv=10 >> testpresets.txt
echo set/a p1.hdr.sr=17 >> testpresets.txt
echo set/a p2.hdr.sv=10 >> testpresets.txt
echo set/a p2.hdr.sr=17 >> testpresets.txt
echo set/a p1.get.sv=20 >> testpresets.txt
echo set/a p1.get.sr=17 >> testpresets.txt
echo set/a p2.get.sv=20 >> testpresets.txt
echo set/a p2.get.sr=17 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.ice.sv=10 >> testpresets.txt
echo set/a p1.ice.sr=17 >> testpresets.txt
echo set/a p2.ice.sv=10 >> testpresets.txt
echo set/a p2.ice.sr=17 >> testpresets.txt
echo set/a p1.msh.sv=10 >> testpresets.txt
echo set/a p1.msh.sr=17 >> testpresets.txt
echo set/a p2.msh.sv=10 >> testpresets.txt
echo set/a p2.msh.sr=17 >> testpresets.txt
echo set/a p1.hly.sv=20 >> testpresets.txt
echo set/a p1.hly.sr=17 >> testpresets.txt
echo set/a p2.hly.sv=20 >> testpresets.txt
echo set/a p2.hly.sr=17 >> testpresets.txt
echo set/a p1.gen.sv=30 >> testpresets.txt
echo set/a p1.gen.sr=17 >> testpresets.txt
echo set/a p2.gen.sv=30 >> testpresets.txt
echo set/a p2.gen.sr=17 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.llc.sv=10 >> testpresets.txt
echo set/a p1.llc.sr=17 >> testpresets.txt
echo set/a p2.llc.sv=10 >> testpresets.txt
echo set/a p2.llc.sr=17 >> testpresets.txt
echo set/a p1.lbr.sv=15 >> testpresets.txt
echo set/a p1.lbr.sr=17 >> testpresets.txt
echo set/a p2.lbr.sv=15 >> testpresets.txt
echo set/a p2.lbr.sr=17 >> testpresets.txt
echo set/a p1.llb.sv=20 >> testpresets.txt
echo set/a p1.llb.sr=17 >> testpresets.txt
echo set/a p2.llb.sv=20 >> testpresets.txt
echo set/a p2.llb.sr=17 >> testpresets.txt
echo set/a p1.lbl.sv=30 >> testpresets.txt
echo set/a p1.lbl.sr=17 >> testpresets.txt
echo set/a p2.lbl.sv=30 >> testpresets.txt
echo set/a p2.lbl.sr=17 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.smh.sv=10 >> testpresets.txt
echo set/a p1.smh.sr=17 >> testpresets.txt
echo set/a p2.smh.sv=10 >> testpresets.txt
echo set/a p2.smh.sr=17 >> testpresets.txt
echo set/a p1.fsh.sv=15 >> testpresets.txt
echo set/a p1.fsh.sr=17 >> testpresets.txt
echo set/a p2.fsh.sv=15 >> testpresets.txt
echo set/a p2.fsh.sr=17 >> testpresets.txt
echo set/a p1.fbr.sv=20 >> testpresets.txt
echo set/a p1.fbr.sr=17 >> testpresets.txt
echo set/a p2.fbr.sv=20 >> testpresets.txt
echo set/a p2.fbr.sr=17 >> testpresets.txt
echo set/a p1.fsl.sv=30 >> testpresets.txt
echo set/a p1.fsl.sr=17 >> testpresets.txt
echo set/a p2.fsl.sv=30 >> testpresets.txt
echo set/a p2.fsl.sr=17 >> testpresets.txt
echo. >> testpresets.txt
echo set/a p1.wwt.sv=10 >> testpresets.txt
echo set/a p1.wwt.sr=17 >> testpresets.txt
echo set/a p2.wwt.sv=10 >> testpresets.txt
echo set/a p2.wwt.sr=17 >> testpresets.txt
echo set/a p1.blk.sv=15 >> testpresets.txt
echo set/a p1.blk.sr=17 >> testpresets.txt
echo set/a p2.blk.sv=15 >> testpresets.txt
echo set/a p2.blk.sr=17 >> testpresets.txt
echo set/a p1.lsh.sv=15 >> testpresets.txt
echo set/a p1.lsh.sr=17 >> testpresets.txt
echo set/a p2.lsh.sv=15 >> testpresets.txt
echo set/a p2.lsh.sr=17 >> testpresets.txt
echo set/a p1.wrg.sv=20 >> testpresets.txt
echo set/a p1.wrg.sr=17 >> testpresets.txt
echo set/a p2.wrg.sv=20 >> testpresets.txt
echo set/a p2.wrg.sr=17 >> testpresets.txt
echo set/a p1.arc.sv=30 >> testpresets.txt
echo set/a p1.arc.sr=17 >> testpresets.txt
echo set/a p2.arc.sv=30 >> testpresets.txt
echo set/a p2.arc.sr=17 >> testpresets.txt
goto testmode
:testplayer
cls
echo Please enter an arithmetic (numerical) value.
set/p p.testh=[Player.Health]=
echo. =-- %p.testh%
set/p p.teste=[Player.Energy]=
echo. =-- %p.teste%
set/p p.testd=[PlayerDefence]=
echo. =-- %p.testd%
set/p p.tests=[Player12.Gold]=
echo. =-- %p.tests%
set/p p.testx=[PlayerExp/Dxp]=
echo. =-- %p.testx%
set/p p1.test=[Player1.Class]=
echo. =-- %p1.test%
set/p p2.test=[Player2.Class]=
echo. =-- %p2.test%
set/p p1.tesd=[Player1.Defpn]=
echo. =-- %p1.tesd%
set/p p2.tesd=[Player2.Defpn]=
echo. =-- %p2.tesd%
set/p p1.tesr=[Player1.Defrt]=
echo. =-- %p1.tesr%
set/p p2.tesr=[Player2.Defrt]=
echo. =-- %p2.tesr%

set/a p1.health=%p.testh%
set/a p1.set.hl=%p.testh%
set/a p2.health=%p.testh%
set/a p2.set.hl=%p.testh%

set/a p1.exp=%p.testx%
set/a p2.exp=%p.testx%

set/a p1.energy=%p.teste%
set/a p1.set.en=%p.teste%
set/a p2.energy=%p.teste%
set/a p2.set.en=%p.teste%

set/a p1.def=%p.testd%
set/a p1.set.df=%p.testd%
set/a p2.def=%p.testd%
set/a p2.set.df=%p.testd%

set/a p1.defpen = %p1.tesd%
set/a p2.defpen = %p2.tesd%
set/a p1.defrate = %p1.tesr%
set/a p2.defrate = %p2.tesr%

set/a score1=%p.tests%
set/a score2=%p.tests%

if %p1.test%==e set/a p1.ews.a=1
if %p2.test%==e set/a p2.ews.a=1
if %p1.test%==l set/a p1.las.a=1
if %p2.test%==l set/a p2.las.a=1
if %p1.test%==f set/a p1.fas.a=1
if %p2.test%==f set/a p2.fas.a=1
if %p1.test%==t set/a p1.test.a=1
if %p2.test%==t set/a p2.test.a=1
goto starti

:menu.autosave
ren saves.lmc saves.bat
call saves.bat
ren saves.bat saves.lmc
set/a saves.var=1
goto starti

:randc
cls
set/a sel=(100 * %random%) / 32768 + 1
set/a sel=(100 * %random%) / 32768 + 1
set/a sel=(100 * %random%) / 32768 + 1
if %sel% LSS 51 goto 2abl.pass

goto 1abl.pass

:starti
cls
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                              Loading...
echo.
echo.                             
set/a p1.health=%p1.set.hl% + %p1sh%
set/a p2.health=%p2.set.hl% + %p2sh%
set/a p1.energy=%p1.set.en% + %e1sh%
set/a p2.energy=%p2.set.en% + %e2sh%
set/a p1.def=%p1.set.df% + %d1sh%
set/a p2.def=%p2.set.df% + %d2sh%
set/a p1.damage=0
set/a p2.damage=0
set/a p1.dxp=0
set/a p2.dxp=0
set/a p1.dtotal=0
set/a p2.dtotal=0

set/a p1.sok.ct=2
set/a p2.sok.ct=2
set/a p1.hdr.ct=2
set/a p2.hdr.ct=2
set/a p1.hly.ct=4
set/a p2.hly.ct=4
set/a p1.get.ct=6
set/a p2.get.ct=6
set/a p1.gen.ct=6
set/a p2.gen.ct=6
set/a p1.llb.ct=3
set/a p2.llb.ct=3
set/a p1.lbl.ct=4
set/a p2.lbl.ct=4
set/a p1.bla.ct=5
set/a p2.bla.ct=5
set/a p1.fhl.ct=2
set/a p2.fhl.ct=2
set/a p1.fbr.ct=3
set/a p2.fbr.ct=3
set/a p1.fal.ct=5
set/a p2.fal.ct=5

::p1.attack
if %p1.att.sr%==0 set/a p1.att.sm=0
if %p1.att.sr%==0 set/a p1.att.sc=0
if %p1.att.sr%==0 set/a p1.att.se=0
if %p1.att.sr%==0   set p1.att.sd=Not Learnt
if %p1.att.sr%==1 set/a p1.att.sm=4
if %p1.att.sr%==1 set/a p1.att.sc=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==1 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==1   set p1.att.sd=Novice
if %p1.att.sr%==2 set/a p1.att.sm=5
if %p1.att.sr%==2 set/a p1.att.sc=(%p1.att.sv% * 30) / 10
if %p1.att.sr%==2 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==2   set p1.att.sd=F
if %p1.att.sr%==3 set/a p1.att.sm=6
if %p1.att.sr%==3 set/a p1.att.sc=(%p1.att.sv% * 40) / 10
if %p1.att.sr%==3 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==3   set p1.att.sd=E
if %p1.att.sr%==4 set/a p1.att.sm=7
if %p1.att.sr%==4 set/a p1.att.sc=(%p1.att.sv% * 50) / 10
if %p1.att.sr%==4 set/a p1.att.se=(%p1.att.sv% * 40) / 10
if %p1.att.sr%==4   set p1.att.sd=D
if %p1.att.sr%==5 set/a p1.att.sm=8
if %p1.att.sr%==5 set/a p1.att.sc=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==5 set/a p1.att.se=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==5   set p1.att.sd=C
if %p1.att.sr%==6 set/a p1.att.sm=9
if %p1.att.sr%==6 set/a p1.att.sc=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==6 set/a p1.att.se=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==6   set p1.att.sd=B
if %p1.att.sr%==7 set/a p1.att.sm=10
if %p1.att.sr%==7 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==7 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==7   set p1.att.sd=A
if %p1.att.sr%==8 set/a p1.att.sm=11
if %p1.att.sr%==8 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==8 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==8   set p1.att.sd=9
if %p1.att.sr%==9 set/a p1.att.sm=12
if %p1.att.sr%==9 set/a p1.att.sc=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==9 set/a p1.att.se=(%p1.att.sv% * 140) / 10
if %p1.att.sr%==9   set p1.att.sd=8
if %p1.att.sr%==10 set/a p1.att.sm=14
if %p1.att.sr%==10 set/a p1.att.sc=(%p1.att.sv% * 120) / 10
if %p1.att.sr%==10 set/a p1.att.se=(%p1.att.sv% * 180) / 10
if %p1.att.sr%==10   set p1.att.sd=7
if %p1.att.sr%==11 set/a p1.att.sm=16
if %p1.att.sr%==11 set/a p1.att.sc=(%p1.att.sv% * 140) / 10
if %p1.att.sr%==11 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==11   set p1.att.sd=6
if %p1.att.sr%==12 set/a p1.att.sm=18
if %p1.att.sr%==12 set/a p1.att.sc=(%p1.att.sv% * 160) / 10
if %p1.att.sr%==12 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==12   set p1.att.sd=5
if %p1.att.sr%==13 set/a p1.att.sm=20
if %p1.att.sr%==13 set/a p1.att.sc=(%p1.att.sv% * 240) / 10
if %p1.att.sr%==13 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==13   set p1.att.sd=4
if %p1.att.sr%==14 set/a p1.att.sm=24
if %p1.att.sr%==14 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==14 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==14   set p1.att.sd=3
if %p1.att.sr%==15 set/a p1.att.sm=28
if %p1.att.sr%==15 set/a p1.att.sc=(%p1.att.sv% * 360) / 10
if %p1.att.sr%==15 set/a p1.att.se=(%p1.att.sv% * 300) / 10
if %p1.att.sr%==15  set p1.att.sd=2
if %p1.att.sr%==16 set/a p1.att.sm=34
if %p1.att.sr%==16 set/a p1.att.sc=(%p1.att.sv% * 480) / 10
if %p1.att.sr%==16 set/a p1.att.se=(%p1.att.sv% * 400) / 10
if %p1.att.sr%==16   set p1.att.sd=1
if %p1.att.sr%==17 set/a p1.att.sm=40
if %p1.att.sr%==17 set/a p1.att.sc=0
if %p1.att.sr%==17 set/a p1.att.se=0
if %p1.att.sr%==17   set p1.att.sd=0


::p2 attack
if %p2.att.sr%==0 set/a p2.att.sm=0
if %p2.att.sr%==0 set/a p2.att.sc=0
if %p2.att.sr%==0 set/a p2.att.se=0
if %p2.att.sr%==0   set p2.att.sd=Not Learnt
if %p2.att.sr%==1 set/a p2.att.sm=4
if %p2.att.sr%==1 set/a p2.att.sc=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==1 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==1   set p2.att.sd=Novice
if %p2.att.sr%==2 set/a p2.att.sm=5
if %p2.att.sr%==2 set/a p2.att.sc=(%p2.att.sv% * 30) / 10
if %p2.att.sr%==2 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==2   set p2.att.sd=F
if %p2.att.sr%==3 set/a p2.att.sm=6
if %p2.att.sr%==3 set/a p2.att.sc=(%p2.att.sv% * 40) / 10
if %p2.att.sr%==3 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==3   set p2.att.sd=E
if %p2.att.sr%==4 set/a p2.att.sm=7
if %p2.att.sr%==4 set/a p2.att.sc=(%p2.att.sv% * 50) / 10
if %p2.att.sr%==4 set/a p2.att.se=(%p2.att.sv% * 40) / 10
if %p2.att.sr%==4   set p2.att.sd=D
if %p2.att.sr%==5 set/a p2.att.sm=8
if %p2.att.sr%==5 set/a p2.att.sc=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==5 set/a p2.att.se=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==5   set p2.att.sd=C
if %p2.att.sr%==6 set/a p2.att.sm=9
if %p2.att.sr%==6 set/a p2.att.sc=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==6 set/a p2.att.se=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==6   set p2.att.sd=B
if %p2.att.sr%==7 set/a p2.att.sm=10
if %p2.att.sr%==7 set/a p2.att.sc=(%p1.att.sv% * 80) / 10
if %p2.att.sr%==7 set/a p2.att.se=(%p1.att.sv% * 100) / 10
if %p2.att.sr%==7   set p2.att.sd=A
if %p2.att.sr%==8 set/a p2.att.sm=11
if %p2.att.sr%==8 set/a p2.att.sc=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==8 set/a p2.att.se=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==8   set p2.att.sd=9
if %p2.att.sr%==9 set/a p2.att.sm=12
if %p2.att.sr%==9 set/a p2.att.sc=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==9 set/a p2.att.se=(%p2.att.sv% * 140) / 10
if %p2.att.sr%==9   set p2.att.sd=8
if %p2.att.sr%==10 set/a p2.att.sm=14
if %p2.att.sr%==10 set/a p2.att.sc=(%p2.att.sv% * 120) / 10
if %p2.att.sr%==10 set/a p2.att.se=(%p2.att.sv% * 180) / 10
if %p2.att.sr%==10   set p2.att.sd=7
if %p2.att.sr%==11 set/a p2.att.sm=16
if %p2.att.sr%==11 set/a p2.att.sc=(%p2.att.sv% * 140) / 10
if %p2.att.sr%==11 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==11   set p2.att.sd=6
if %p2.att.sr%==12 set/a p2.att.sm=18
if %p2.att.sr%==12 set/a p2.att.sc=(%p2.att.sv% * 160) / 10
if %p2.att.sr%==12 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==12   set p2.att.sd=5
if %p2.att.sr%==13 set/a p2.att.sm=20
if %p2.att.sr%==13 set/a p2.att.sc=(%p2.att.sv% * 240) / 10
if %p2.att.sr%==13 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==13   set p2.att.sd=4
if %p2.att.sr%==14 set/a p2.att.sm=24
if %p2.att.sr%==14 set/a p2.att.sc=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==14 set/a p2.att.se=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==14   set p2.att.sd=3
if %p2.att.sr%==15 set/a p2.att.sm=28
if %p2.att.sr%==15 set/a p2.att.sc=(%p2.att.sv% * 360) / 10
if %p2.att.sr%==15 set/a p2.att.se=(%p2.att.sv% * 300) / 10
if %p2.att.sr%==15   set p2.att.sd=2
if %p2.att.sr%==16 set/a p2.att.sm=34
if %p2.att.sr%==16 set/a p2.att.sc=(%p2.att.sv% * 480) / 10
if %p2.att.sr%==16 set/a p2.att.se=(%p2.att.sv% * 400) / 10
if %p2.att.sr%==16   set p2.att.sd=1
if %p2.att.sr%==17 set/a p2.att.sm=40
if %p2.att.sr%==17 set/a p2.att.sc=0
if %p2.att.sr%==17 set/a p2.att.se=0
if %p2.att.sr%==17   set p2.att.sd=0


::fusion

if %p1.fus.sr%==0 set/a p1.fus.sm=0
if %p1.fus.sr%==0 set/a p1.fus.sc=0
if %p1.fus.sr%==0 set/a p1.fus.se=0
if %p1.fus.sr%==0   set p1.fus.sd=Not Learnt
if %p1.fus.sr%==1 set/a p1.fus.sm=4
if %p1.fus.sr%==1 set/a p1.fus.sc=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==1 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==1   set p1.fus.sd=Novice
if %p1.fus.sr%==2 set/a p1.fus.sm=5
if %p1.fus.sr%==2 set/a p1.fus.sc=(%p1.fus.sv% * 30) / 10
if %p1.fus.sr%==2 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==2   set p1.fus.sd=F
if %p1.fus.sr%==3 set/a p1.fus.sm=6
if %p1.fus.sr%==3 set/a p1.fus.sc=(%p1.fus.sv% * 40) / 10
if %p1.fus.sr%==3 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==3   set p1.fus.sd=E
if %p1.fus.sr%==4 set/a p1.fus.sm=7
if %p1.fus.sr%==4 set/a p1.fus.sc=(%p1.fus.sv% * 50) / 10
if %p1.fus.sr%==4 set/a p1.fus.se=(%p1.fus.sv% * 40) / 10
if %p1.fus.sr%==4   set p1.fus.sd=D
if %p1.fus.sr%==5 set/a p1.fus.sm=8
if %p1.fus.sr%==5 set/a p1.fus.sc=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==5 set/a p1.fus.se=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==5   set p1.fus.sd=C
if %p1.fus.sr%==6 set/a p1.fus.sm=9
if %p1.fus.sr%==6 set/a p1.fus.sc=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==6 set/a p1.fus.se=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==6   set p1.fus.sd=B
if %p1.fus.sr%==7 set/a p1.fus.sm=10
if %p1.fus.sr%==7 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==7 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==7   set p1.fus.sd=A
if %p1.fus.sr%==8 set/a p1.fus.sm=11
if %p1.fus.sr%==8 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==8 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==8   set p1.fus.sd=9
if %p1.fus.sr%==9 set/a p1.fus.sm=12
if %p1.fus.sr%==9 set/a p1.fus.sc=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==9 set/a p1.fus.se=(%p1.fus.sv% * 140) / 10
if %p1.fus.sr%==9   set p1.fus.sd=8
if %p1.fus.sr%==10 set/a p1.fus.sm=14
if %p1.fus.sr%==10 set/a p1.fus.sc=(%p1.fus.sv% * 120) / 10
if %p1.fus.sr%==10 set/a p1.fus.se=(%p1.fus.sv% * 180) / 10
if %p1.fus.sr%==10   set p1.fus.sd=7
if %p1.fus.sr%==11 set/a p1.fus.sm=16
if %p1.fus.sr%==11 set/a p1.fus.sc=(%p1.fus.sv% * 140) / 10
if %p1.fus.sr%==11 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==11   set p1.fus.sd=6
if %p1.fus.sr%==12 set/a p1.fus.sm=18
if %p1.fus.sr%==12 set/a p1.fus.sc=(%p1.fus.sv% * 160) / 10
if %p1.fus.sr%==12 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==12   set p1.fus.sd=5
if %p1.fus.sr%==13 set/a p1.fus.sm=20
if %p1.fus.sr%==13 set/a p1.fus.sc=(%p1.fus.sv% * 240) / 10
if %p1.fus.sr%==13 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==13   set p1.fus.sd=4
if %p1.fus.sr%==14 set/a p1.fus.sm=24
if %p1.fus.sr%==14 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==14 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==14   set p1.fus.sd=3
if %p1.fus.sr%==15 set/a p1.fus.sm=28
if %p1.fus.sr%==15 set/a p1.fus.sc=(%p1.att.sv% * 360) / 10
if %p1.fus.sr%==15 set/a p1.fus.se=(%p1.att.sv% * 300) / 10
if %p1.fus.sr%==15   set p1.fus.sd=2
if %p1.fus.sr%==16 set/a p1.fus.sm=34
if %p1.fus.sr%==16 set/a p1.fus.sc=(%p1.fus.sv% * 480) / 10
if %p1.fus.sr%==16 set/a p1.fus.se=(%p1.fus.sv% * 400) / 10
if %p1.fus.sr%==16   set p1.fus.sd=1
if %p1.fus.sr%==17 set/a p1.fus.sm=40
if %p1.fus.sr%==17 set/a p1.fus.sc=0
if %p1.fus.sr%==17 set/a p1.fus.se=0
if %p1.fus.sr%==17   set p1.fus.sd=0




::p2

if %p2.fus.sr%==0 set/a p2.fus.sm=0
if %p2.fus.sr%==0 set/a p2.fus.sc=0
if %p2.fus.sr%==0 set/a p2.fus.se=0
if %p2.fus.sr%==0   set p2.fus.sd=Not Learnt
if %p2.fus.sr%==1 set/a p2.fus.sm=4
if %p2.fus.sr%==1 set/a p2.fus.sc=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==1 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==1   set p2.fus.sd=Novice
if %p2.fus.sr%==2 set/a p2.fus.sm=5
if %p2.fus.sr%==2 set/a p2.fus.sc=(%p2.fus.sv% * 30) / 10
if %p2.fus.sr%==2 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==2   set p2.fus.sd=F
if %p2.fus.sr%==3 set/a p2.fus.sm=6
if %p2.fus.sr%==3 set/a p2.fus.sc=(%p2.fus.sv% * 40) / 10
if %p2.fus.sr%==3 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==3   set p2.fus.sd=E
if %p2.fus.sr%==4 set/a p2.fus.sm=7
if %p2.fus.sr%==4 set/a p2.fus.sc=(%p2.fus.sv% * 50) / 10
if %p2.fus.sr%==4 set/a p2.fus.se=(%p2.fus.sv% * 40) / 10
if %p2.fus.sr%==4   set p2.fus.sd=D
if %p2.fus.sr%==5 set/a p2.fus.sm=8
if %p2.fus.sr%==5 set/a p2.fus.sc=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==5 set/a p2.fus.se=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==5   set p2.fus.sd=C
if %p2.fus.sr%==6 set/a p2.fus.sm=9
if %p2.fus.sr%==6 set/a p2.fus.sc=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==6 set/a p2.fus.se=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==6   set p2.fus.sd=B
if %p2.fus.sr%==7 set/a p2.fus.sm=10
if %p2.fus.sr%==7 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==7 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==7   set p2.fus.sd=A
if %p2.fus.sr%==8 set/a p2.fus.sm=11
if %p2.fus.sr%==8 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==8 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==8   set p2.fus.sd=9
if %p2.fus.sr%==9 set/a p2.fus.sm=12
if %p2.fus.sr%==9 set/a p2.fus.sc=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==9 set/a p2.fus.se=(%p2.fus.sv% * 140) / 10
if %p2.fus.sr%==9   set p2.fus.sd=8
if %p2.fus.sr%==10 set/a p2.fus.sm=14
if %p2.fus.sr%==10 set/a p2.fus.sc=(%p2.fus.sv% * 120) / 10
if %p2.fus.sr%==10 set/a p2.fus.se=(%p2.fus.sv% * 180) / 10
if %p2.fus.sr%==10   set p2.fus.sd=7
if %p2.fus.sr%==11 set/a p2.fus.sm=16
if %p2.fus.sr%==11 set/a p2.fus.sc=(%p2.fus.sv% * 140) / 10
if %p2.fus.sr%==11 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==11   set p2.fus.sd=6
if %p2.fus.sr%==12 set/a p2.fus.sm=18
if %p2.fus.sr%==12 set/a p2.fus.sc=(%p2.fus.sv% * 160) / 10
if %p2.fus.sr%==12 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==12   set p2.fus.sd=5
if %p2.fus.sr%==13 set/a p2.fus.sm=20
if %p2.fus.sr%==13 set/a p2.fus.sc=(%p2.fus.sv% * 240) / 10
if %p2.fus.sr%==13 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==13   set p2.fus.sd=4
if %p2.fus.sr%==14 set/a p2.fus.sm=24
if %p2.fus.sr%==14 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==14 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==14   set p2.fus.sd=3
if %p2.fus.sr%==15 set/a p2.fus.sm=28
if %p2.fus.sr%==15 set/a p2.fus.sc=(%p2.att.sv% * 360) / 10
if %p2.fus.sr%==15 set/a p2.fus.se=(%p2.att.sv% * 300) / 10
if %p2.fus.sr%==15   set p2.fus.sd=2
if %p2.fus.sr%==16 set/a p2.fus.sm=34
if %p2.fus.sr%==16 set/a p2.fus.sc=(%p2.fus.sv% * 480) / 10
if %p2.fus.sr%==16 set/a p2.fus.se=(%p2.fus.sv% * 400) / 10
if %p2.fus.sr%==16   set p2.fus.sd=1
if %p2.fus.sr%==17 set/a p2.fus.sm=40
if %p2.fus.sr%==17 set/a p2.fus.sc=0
if %p2.fus.sr%==17 set/a p2.fus.se=0
if %p2.fus.sr%==17   set p2.fus.sd=0

 


::heal

if %p1.hla.sr%==0 set/a p1.hla.sm=0
if %p1.hla.sr%==0 set/a p1.hla.sc=0
if %p1.hla.sr%==0 set/a p1.hla.se=0
if %p1.hla.sr%==0   set p1.hla.sd=Not Learnt
if %p1.hla.sr%==1 set/a p1.hla.sm=4
if %p1.hla.sr%==1 set/a p1.hla.sc=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==1 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==1   set p1.hla.sd=Novice
if %p1.hla.sr%==2 set/a p1.hla.sm=5
if %p1.hla.sr%==2 set/a p1.hla.sc=(%p1.hla.sv% * 30) / 10
if %p1.hla.sr%==2 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==2   set p1.hla.sd=F
if %p1.hla.sr%==3 set/a p1.hla.sm=6
if %p1.hla.sr%==3 set/a p1.hla.sc=(%p1.hla.sv% * 40) / 10
if %p1.hla.sr%==3 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==3   set p1.hla.sd=E
if %p1.hla.sr%==4 set/a p1.hla.sm=7
if %p1.hla.sr%==4 set/a p1.hla.sc=(%p1.hla.sv% * 50) / 10
if %p1.hla.sr%==4 set/a p1.hla.se=(%p1.hla.sv% * 40) / 10
if %p1.hla.sr%==4   set p1.hla.sd=D
if %p1.hla.sr%==5 set/a p1.hla.sm=8
if %p1.hla.sr%==5 set/a p1.hla.sc=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==5 set/a p1.hla.se=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==5   set p1.hla.sd=C
if %p1.hla.sr%==6 set/a p1.hla.sm=9
if %p1.hla.sr%==6 set/a p1.hla.sc=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==6 set/a p1.hla.se=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==6   set p1.hla.sd=B
if %p1.hla.sr%==7 set/a p1.hla.sm=10
if %p1.hla.sr%==7 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==7 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==7   set p1.hla.sd=A
if %p1.hla.sr%==8 set/a p1.hla.sm=11
if %p1.hla.sr%==8 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==8 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==8   set p1.hla.sd=9
if %p1.hla.sr%==9 set/a p1.hla.sm=12
if %p1.hla.sr%==9 set/a p1.hla.sc=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==9 set/a p1.hla.se=(%p1.hla.sv% * 140) / 10
if %p1.hla.sr%==9   set p1.hla.sd=8
if %p1.hla.sr%==10 set/a p1.hla.sm=14
if %p1.hla.sr%==10 set/a p1.hla.sc=(%p1.hla.sv% * 120) / 10
if %p1.hla.sr%==10 set/a p1.hla.se=(%p1.hla.sv% * 180) / 10
if %p1.hla.sr%==10   set p1.hla.sd=7
if %p1.hla.sr%==11 set/a p1.hla.sm=16
if %p1.hla.sr%==11 set/a p1.hla.sc=(%p1.hla.sv% * 140) / 10
if %p1.hla.sr%==11 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==11   set p1.hla.sd=6
if %p1.hla.sr%==12 set/a p1.hla.sm=18
if %p1.hla.sr%==12 set/a p1.hla.sc=(%p1.hla.sv% * 160) / 10
if %p1.hla.sr%==12 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==12   set p1.hla.sd=5
if %p1.hla.sr%==13 set/a p1.hla.sm=20
if %p1.hla.sr%==13 set/a p1.hla.sc=(%p1.hla.sv% * 240) / 10
if %p1.hla.sr%==13 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==13   set p1.hla.sd=4
if %p1.hla.sr%==14 set/a p1.hla.sm=24
if %p1.hla.sr%==14 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==14 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==14   set p1.hla.sd=3
if %p1.hla.sr%==15 set/a p1.hla.sm=28
if %p1.hla.sr%==15 set/a p1.hla.sc=(%p1.hla.sv% * 360) / 10
if %p1.hla.sr%==15 set/a p1.hla.se=(%p1.hla.sv% * 300) / 10
if %p1.hla.sr%==15   set p1.hla.sd=2
if %p1.hla.sr%==16 set/a p1.hla.sm=34
if %p1.hla.sr%==16 set/a p1.hla.sc=(%p1.hla.sv% * 480) / 10
if %p1.hla.sr%==16 set/a p1.hla.se=(%p1.hla.sv% * 400) / 10
if %p1.hla.sr%==16   set p1.hla.sd=1
if %p1.hla.sr%==17 set/a p1.hla.sm=40
if %p1.hla.sr%==17 set/a p1.hla.sc=0
if %p1.hla.sr%==17 set/a p1.hla.se=0
if %p1.hla.sr%==17   set p1.hla.sd=0


::p2

if %p2.hla.sr%==0 set/a p1.hla.sm=0
if %p2.hla.sr%==0 set/a p2.hla.sc=0
if %p2.hla.sr%==0 set/a p1.hla.se=0
if %p2.hla.sr%==0   set p1.hla.sd=Not Learnt
if %p2.hla.sr%==1 set/a p2.hla.sm=4
if %p2.hla.sr%==1 set/a p2.hla.sc=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==1 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==1   set p2.hla.sd=Novice
if %p2.hla.sr%==2 set/a p2.hla.sm=5
if %p2.hla.sr%==2 set/a p2.hla.sc=(%p2.hla.sv% * 30) / 10
if %p2.hla.sr%==2 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==2   set p2.hla.sd=F
if %p2.hla.sr%==3 set/a p2.hla.sm=6
if %p2.hla.sr%==3 set/a p2.hla.sc=(%p2.hla.sv% * 40) / 10
if %p2.hla.sr%==3 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==3   set p2.hla.sd=E
if %p2.hla.sr%==4 set/a p2.hla.sm=7
if %p2.hla.sr%==4 set/a p2.hla.sc=(%p2.hla.sv% * 50) / 10
if %p2.hla.sr%==4 set/a p2.hla.se=(%p2.hla.sv% * 40) / 10
if %p2.hla.sr%==4   set p2.hla.sd=D
if %p2.hla.sr%==5 set/a p2.hla.sm=8
if %p2.hla.sr%==5 set/a p2.hla.sc=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==5 set/a p2.hla.se=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==5   set p2.hla.sd=C
if %p2.hla.sr%==6 set/a p2.hla.sm=9
if %p2.hla.sr%==6 set/a p2.hla.sc=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==6 set/a p2.hla.se=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==6   set p2.hla.sd=B
if %p2.hla.sr%==7 set/a p2.hla.sm=10
if %p2.hla.sr%==7 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==7 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==7   set p2.hla.sd=A
if %p2.hla.sr%==8 set/a p2.hla.sm=11
if %p2.hla.sr%==8 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==8 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==8   set p2.hla.sd=9
if %p2.hla.sr%==9 set/a p2.hla.sm=12
if %p2.hla.sr%==9 set/a p2.hla.sc=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==9 set/a p2.hla.se=(%p2.hla.sv% * 140) / 10
if %p2.hla.sr%==9   set p2.hla.sd=8
if %p2.hla.sr%==10 set/a p2.hla.sm=14
if %p2.hla.sr%==10 set/a p2.hla.sc=(%p2.hla.sv% * 120) / 10
if %p2.hla.sr%==10 set/a p2.hla.se=(%p2.hla.sv% * 180) / 10
if %p2.hla.sr%==10   set p2.hla.sd=7
if %p2.hla.sr%==11 set/a p2.hla.sm=16
if %p2.hla.sr%==11 set/a p2.hla.sc=(%p2.hla.sv% * 140) / 10
if %p2.hla.sr%==11 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==11   set p2.hla.sd=6
if %p2.hla.sr%==12 set/a p2.hla.sm=18
if %p2.hla.sr%==12 set/a p2.hla.sc=(%p2.hla.sv% * 160) / 10
if %p2.hla.sr%==12 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==12   set p2.hla.sd=5
if %p2.hla.sr%==13 set/a p2.hla.sm=20
if %p2.hla.sr%==13 set/a p2.hla.sc=(%p2.hla.sv% * 240) / 10
if %p2.hla.sr%==13 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==13   set p2.hla.sd=4
if %p2.hla.sr%==14 set/a p2.hla.sm=24
if %p2.hla.sr%==14 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==14 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==14   set p2.hla.sd=3
if %p2.hla.sr%==15 set/a p2.hla.sm=28
if %p2.hla.sr%==15 set/a p2.hla.sc=(%p2.hla.sv% * 360) / 10
if %p2.hla.sr%==15 set/a p2.hla.se=(%p2.hla.sv% * 300) / 10
if %p2.hla.sr%==15   set p2.hla.sd=2
if %p2.hla.sr%==16 set/a p2hla.sm=34
if %p2.hla.sr%==16 set/a p2.hla.sc=(%p2.hla.sv% * 480) / 10
if %p2.hla.sr%==16 set/a p2.hla.se=(%p2.hla.sv% * 400) / 10
if %p2.hla.sr%==16   set p2.hla.sd=1
if %p2.hla.sr%==17 set/a p2.hla.sm=40
if %p2.hla.sr%==17 set/a p2.hla.sc=0
if %p2.hla.sr%==17 set/a p2.hla.se=0
if %p2.hla.sr%==17   set p2.hla.sd=0



::rest

if %p1.res.sr%==0 set/a p1.res.sm=0
if %p1.res.sr%==0 set/a p1.res.sc=0
if %p1.res.sr%==0 set/a p1.res.se=0
if %p1.res.sr%==0   set p1.res.sd=Not Learnt
if %p1.res.sr%==1 set/a p1.res.sm=4
if %p1.res.sr%==1 set/a p1.res.sc=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==1 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==1   set p1.res.sd=Novice
if %p1.res.sr%==2 set/a p1.res.sm=5
if %p1.res.sr%==2 set/a p1.res.sc=(%p1.res.sv% * 30) / 10
if %p1.res.sr%==2 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==2   set p1.res.sd=F
if %p1.res.sr%==3 set/a p1.res.sm=6
if %p1.res.sr%==3 set/a p1.res.sc=(%p1.res.sv% * 40) / 10
if %p1.res.sr%==3 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==3   set p1.res.sd=E
if %p1.res.sr%==4 set/a p1.res.sm=7
if %p1.res.sr%==4 set/a p1.res.sc=(%p1.res.sv% * 50) / 10
if %p1.res.sr%==4 set/a p1.res.se=(%p1.res.sv% * 40) / 10
if %p1.res.sr%==4   set p1.res.sd=D
if %p1.res.sr%==5 set/a p1.res.sm=8
if %p1.res.sr%==5 set/a p1.res.sc=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==5 set/a p1.res.se=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==5   set p1.res.sd=C
if %p1.res.sr%==6 set/a p1.res.sm=9
if %p1.res.sr%==6 set/a p1.res.sc=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==6 set/a p1.res.se=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==6   set p1.res.sd=B
if %p1.res.sr%==7 set/a p1.res.sm=10
if %p1.res.sr%==7 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==7 set/a p1.res.se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==7   set p1.res.sd=A
if %p1.res.sr%==8 set/a p1.res.sm=11
if %p1.res.sr%==8 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==8 set/a p1res..se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==8   set p1.res.sd=9
if %p1.res.sr%==9 set/a p1.res.sm=12
if %p1.res.sr%==9 set/a p1.res.sc=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==9 set/a p1.res.se=(%p1.res.sv% * 140) / 10
if %p1.res.sr%==9   set p1.res.sd=8
if %p1.res.sr%==10 set/a p1.res.sm=14
if %p1.res.sr%==10 set/a p1.res.sc=(%p1.res.sv% * 120) / 10
if %p1.res.sr%==10 set/a p1.res.se=(%p1.res.sv% * 180) / 10
if %p1.res.sr%==10   set p1.res.sd=7
if %p1.res.sr%==11 set/a p1.res.sm=16
if %p1.res.sr%==11 set/a p1.res.sc=(%p1.res.sv% * 140) / 10
if %p1.res.sr%==11 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==11   set p1.res.sd=6
if %p1.res.sr%==12 set/a p1.res.sm=18
if %p1.res.sr%==12 set/a p1.res.sc=(%p1.res.sv% * 160) / 10
if %p1.res.sr%==12 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==12   set p1.res.sd=5
if %p1.res.sr%==13 set/a p1.res.sm=20
if %p1.res.sr%==13 set/a p1.res.sc=(%p1.res.sv% * 240) / 10
if %p1.res.sr%==13 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==13   set p1.res.sd=4
if %p1.res.sr%==14 set/a p1.res.sm=24
if %p1.res.sr%==14 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==14 set/a p1.res.se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==14   set p1.res.sd=3
if %p1.res.sr%==15 set/a p1.res.sm=28
if %p1.res.sr%==15 set/a p1.res.sc=(%p1.res.sv% * 360) / 10
if %p1.res.sr%==15 set/a p1.res.se=(%p1.res.sv% * 300) / 10
if %p1.res.sr%==15   set p1.res.sd=2
if %p1.res.sr%==16 set/a p1.res.sm=34
if %p1.res.sr%==16 set/a p1.res.sc=(%p1.res.sv% * 480) / 10
if %p1.res.sr%==16 set/a p1.res.se=(%p1..sv% * 400) / 10
if %p1.res.sr%==16   set p1.res.sd=1
if %p1.res.sr%==17 set/a p1.res.sm=40
if %p1.res.sr%==17 set/a p1.res.sc=0
if %p1.res.sr%==17 set/a p1.res.se=0
if %p1.res.sr%==17   set p1.res.sd=0



:p2

if %p2.res.sr%==0 set/a p2.res.sm=0
if %p2.res.sr%==0 set/a p2.res.sc=0
if %p2.res.sr%==0 set/a p2.res.se=0
if %p2.res.sr%==0   set p2.res.sd=Not Learnt
if %p2.res.sr%==1 set/a p2.res.sm=4
if %p2.res.sr%==1 set/a p2.res.sc=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==1 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==1   set p2.res.sd=Novice
if %p2.res.sr%==2 set/a p2.res.sm=5
if %p2.res.sr%==2 set/a p2.res.sc=(%p2.res.sv% * 30) / 10
if %p2.res.sr%==2 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==2   set p2.res.sd=F
if %p2.res.sr%==3 set/a p2.res.sm=6
if %p2.res.sr%==3 set/a p2.res.sc=(%p2.res.sv% * 40) / 10
if %p2.res.sr%==3 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==3   set p2.res.sd=E
if %p2.res.sr%==4 set/a p2.res.sm=7
if %p2.res.sr%==4 set/a p2.res.sc=(%p2.res.sv% * 50) / 10
if %p2.res.sr%==4 set/a p2.res.se=(%p2.res.sv% * 40) / 10
if %p2.res.sr%==4   set p2.res.sd=D
if %p2.res.sr%==5 set/a p2.res.sm=8
if %p2.res.sr%==5 set/a p2.res.sc=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==5 set/a p2.res.se=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==5   set p2.res.sd=C
if %p2.res.sr%==6 set/a p2.res.sm=9
if %p2.res.sr%==6 set/a p2.res.sc=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==6 set/a p2.res.se=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==6   set p2.res.sd=B
if %p2.res.sr%==7 set/a p2.res.sm=10
if %p2.res.sr%==7 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==7 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==7   set p2.res.sd=A
if %p2.res.sr%==8 set/a p2.res.sm=11
if %p2.res.sr%==8 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==8 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==8   set p2.res.sd=9
if %p2.res.sr%==9 set/a p2.res.sm=12
if %p2.res.sr%==9 set/a p2.res.sc=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==9 set/a p2.res.se=(%p2.res.sv% * 140) / 10
if %p2.res.sr%==9   set p2.res.sd=8
if %p2.res.sr%==10 set/a p2.res.sm=14
if %p2.res.sr%==10 set/a p2.res.sc=(%p2.res.sv% * 120) / 10
if %p2.res.sr%==10 set/a p2.res.se=(%p2.res.sv% * 180) / 10
if %p2.res.sr%==10   set p2.res.sd=7
if %p2.res.sr%==11 set/a p2.res.sm=16
if %p2.res.sr%==11 set/a p2.res.sc=(%p2.res.sv% * 140) / 10
if %p2.res.sr%==11 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==11   set p2.res.sd=6
if %p2.res.sr%==12 set/a p2.res.sm=18
if %p2.res.sr%==12 set/a p2.res.sc=(%p2.res.sv% * 160) / 10
if %p2.res.sr%==12 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==12   set p2.res.sd=5
if %p2.res.sr%==13 set/a p2.res.sm=20
if %p2.res.sr%==13 set/a p2.res.sc=(%p2.res.sv% * 240) / 10
if %p2.res.sr%==13 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==13   set p2.res.sd=4
if %p2.res.sr%==14 set/a p2.res.sm=24
if %p2.res.sr%==14 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==14 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==14   set p2.res.sd=3
if %p2.res.sr%==15 set/a p2.res.sm=28
if %p2.res.sr%==15 set/a p2.res.sc=(%p2.res.sv% * 360) / 10
if %p2.res.sr%==15 set/a p2.res.se=(%p2.res.sv% * 300) / 10
if %p2.res.sr%==15   set p2.res.sd=2
if %p2.res.sr%==16 set/a p2.res.sm=34
if %p2.res.sr%==16 set/a p2.res.sc=(%p2.res.sv% * 480) / 10
if %p2.res.sr%==16 set/a p2.res.se=(%p2.res.sv% * 400) / 10
if %p2.res.sr%==16   set p2.res.sd=1
if %p2.res.sr%==17 set/a p2.res.sm=40
if %p2.res.sr%==17 set/a p2.res.sc=0
if %p2.res.sr%==17 set/a p2.res.se=0
if %p2.res.sr%==17   set p2.res.sd=0


::sokatsui

if %p1.sok.sr%==0 set/a p1.sok.sm=0
if %p1.sok.sr%==0 set/a p1.sok.sc=150
if %p1.sok.sr%==0 set/a p1.sok.se=0
if %p1.sok.sr%==0   set p1.sok.sd=Not Learnt
if %p1.sok.sr%==1 set/a p1.sok.sm=4
if %p1.sok.sr%==1 set/a p1.sok.sc=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==1 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==1   set p1.sok.sd=Novice
if %p1.sok.sr%==2 set/a p1.sok.sm=5
if %p1.sok.sr%==2 set/a p1.sok.sc=(%p1.sok.sv% * 30) / 10
if %p1.sok.sr%==2 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==2   set p1.sok.sd=F
if %p1.sok.sr%==3 set/a p1.sok.sm=6
if %p1.sok.sr%==3 set/a p1.sok.sc=(%p1.sok.sv% * 40) / 10
if %p1.sok.sr%==3 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==3   set p1.sok.sd=E
if %p1.sok.sr%==4 set/a p1.sok.sm=7
if %p1.sok.sr%==4 set/a p1.sok.sc=(%p1.sok.sv% * 50) / 10
if %p1.sok.sr%==4 set/a p1.sok.se=(%p1.sok.sv% * 40) / 10
if %p1.sok.sr%==4   set p1.sok.sd=D
if %p1.sok.sr%==5 set/a p1.sok.sm=8
if %p1.sok.sr%==5 set/a p1.sok.sc=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==5 set/a p1.sok.se=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==5   set p1.sok.sd=C
if %p1.sok.sr%==6 set/a p1.sok.sm=9
if %p1.sok.sr%==6 set/a p1.sok.sc=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==6 set/a p1.sok.se=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==6   set p1.sok.sd=B
if %p1.sok.sr%==7 set/a p1.sok.sm=10
if %p1.sok.sr%==7 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==7 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==7   set p1.sok.sd=A
if %p1.sok.sr%==8 set/a p1.sok.sm=11
if %p1.sok.sr%==8 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==8 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==8   set p1.sok.sd=9
if %p1.sok.sr%==9 set/a p1.sok.sm=12
if %p1.sok.sr%==9 set/a p1.sok.sc=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==9 set/a p1.sok.se=(%p1.sok.sv% * 140) / 10
if %p1.sok.sr%==9   set p1.sok.sd=8
if %p1.sok.sr%==10 set/a p1.sok.sm=14
if %p1.sok.sr%==10 set/a p1.sok.sc=(%p1.sok.sv% * 120) / 10
if %p1.sok.sr%==10 set/a p1.sok.se=(%p1.sok.sv% * 180) / 10
if %p1.sok.sr%==10   set p1.sok.sd=7
if %p1.sok.sr%==11 set/a p1.sok.sm=16
if %p1.sok.sr%==11 set/a p1.sok.sc=(%p1.sok.sv% * 140) / 10
if %p1.sok.sr%==11 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==11   set p1.sok.sd=6
if %p1.sok.sr%==12 set/a p1.sok.sm=18
if %p1.sok.sr%==12 set/a p1.sok.sc=(%p1.sok.sv% * 160) / 10
if %p1.sok.sr%==12 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==12   set p1.sok.sd=5
if %p1.sok.sr%==13 set/a p1.sok.sm=20
if %p1.sok.sr%==13 set/a p1.sok.sc=(%p1.sok.sv% * 240) / 10
if %p1.sok.sr%==13 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==13   set p1.sok.sd=4
if %p1.sok.sr%==14 set/a p1.sok.sm=24
if %p1.sok.sr%==14 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==14 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==14   set p1.sok.sd=3
if %p1.sok.sr%==15 set/a p1.sok.sm=28
if %p1.sok.sr%==15 set/a p1.sok.sc=(%p1.sok.sv% * 360) / 10
if %p1.sok.sr%==15 set/a p1.sok.se=(%p1.sok.sv% * 300) / 10
if %p1.sok.sr%==15   set p1.sok.sd=2
if %p1.sok.sr%==16 set/a p1.sok.sm=34
if %p1.sok.sr%==16 set/a p1.sok.sc=(%p1.sok.sv% * 480) / 10
if %p1.sok.sr%==16 set/a p1.sok.se=(%p1.sok.sv% * 400) / 10
if %p1.sok.sr%==16   set p1.sok.sd=1
if %p1.sok.sr%==17 set/a p1.sok.sm=40
if %p1.sok.sr%==17 set/a p1.sok.sc=0
if %p1.sok.sr%==17 set/a p1.sok.se=0
if %p1.sok.sr%==17   set p1.sok.sd=0



::p2
if %p2.sok.sr%==0 set/a p2.sok.sm=0
if %p2.sok.sr%==0 set/a p2.sok.sc=150
if %p2.sok.sr%==0 set/a p2.sok.se=0
if %p2.sok.sr%==0   set p2.sok.sd=Not Learnt
if %p2.sok.sr%==1 set/a p2.sok.sm=4
if %p2.sok.sr%==1 set/a p2.sok.sc=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==1 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==1   set p2.sok.sd=Novice
if %p2.sok.sr%==2 set/a p2.sok.sm=5
if %p2.sok.sr%==2 set/a p2.sok.sc=(%p2.sok.sv% * 30) / 10
if %p2.sok.sr%==2 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==2   set p2.sok.sd=F
if %p2.sok.sr%==3 set/a p2.sok.sm=6
if %p2.sok.sr%==3 set/a p2.sok.sc=(%p2.sok.sv% * 40) / 10
if %p2.sok.sr%==3 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==3   set p2.sok.sd=E
if %p2.sok.sr%==4 set/a p2.sok.sm=7
if %p2.sok.sr%==4 set/a p2.sok.sc=(%p2.sok.sv% * 50) / 10
if %p2.sok.sr%==4 set/a p2.sok.se=(%p2.sok.sv% * 40) / 10
if %p2.sok.sr%==4   set p2.sok.sd=D
if %p2.sok.sr%==5 set/a p2.sok.sm=8
if %p2.sok.sr%==5 set/a p2.sok.sc=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==5 set/a p2.sok.se=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==5   set p2.sok.sd=C
if %p2.sok.sr%==6 set/a p2.sok.sm=9
if %p2.sok.sr%==6 set/a p2.sok.sc=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==6 set/a p2.sok.se=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==6   set p2.sok.sd=B
if %p2.sok.sr%==7 set/a p2.sok.sm=10
if %p2.sok.sr%==7 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==7 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==7   set p2.sok.sd=A
if %p2.sok.sr%==8 set/a p2.sok.sm=11
if %p2.sok.sr%==8 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==8 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==8   set p2.sok.sd=9
if %p2.sok.sr%==9 set/a p2.sok.sm=12
if %p2.sok.sr%==9 set/a p2.sok.sc=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==9 set/a p2.sok.se=(%p2.sok.sv% * 140) / 10
if %p2.sok.sr%==9   set p2.sok.sd=8
if %p2.sok.sr%==10 set/a p2.sok.sm=14
if %p2.sok.sr%==10 set/a p2.sok.sc=(%p2.sok.sv% * 120) / 10
if %p2.sok.sr%==10 set/a p2.sok.se=(%p2.sok.sv% * 180) / 10
if %p2.sok.sr%==10   set p2.sok.sd=7
if %p2.sok.sr%==11 set/a p2.sok.sm=16
if %p2.sok.sr%==11 set/a p2.sok.sc=(%p2.sok.sv% * 140) / 10
if %p2.sok.sr%==11 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==11   set p2.sok.sd=6
if %p2.sok.sr%==12 set/a p2.sok.sm=18
if %p2.sok.sr%==12 set/a p2.sok.sc=(%p2.sok.sv% * 160) / 10
if %p2.sok.sr%==12 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==12   set p2.sok.sd=5
if %p2.sok.sr%==13 set/a p2.sok.sm=20
if %p2.sok.sr%==13 set/a p2.sok.sc=(%p2.sok.sv% * 240) / 10
if %p2.sok.sr%==13 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==13   set p2.sok.sd=4
if %p2.sok.sr%==14 set/a p2.sok.sm=24
if %p2.sok.sr%==14 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==14 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==14   set p2.sok.sd=3
if %p2.sok.sr%==15 set/a p2.sok.sm=28
if %p2.sok.sr%==15 set/a p2.sok.sc=(%p2.sok.sv% * 360) / 10
if %p2.sok.sr%==15 set/a p2.sok.se=(%p2.sok.sv% * 300) / 10
if %p2.sok.sr%==15   set p2.sok.sd=2
if %p2.sok.sr%==16 set/a p2.sok.sm=34
if %p2.sok.sr%==16 set/a p2.sok.sc=(%p2.sok.sv% * 480) / 10
if %p2.sok.sr%==16 set/a p2.sok.se=(%p2.sok.sv% * 400) / 10
if %p2.sok.sr%==16   set p2.sok.sd=1
if %p2.sok.sr%==17 set/a p2.sok.sm=40
if %p2.sok.sr%==17 set/a p2.sok.sc=0
if %p2.sok.sr%==17 set/a p2.sok.se=0
if %p2.sok.sr%==17   set p2.sok.sd=0


::lightning
if %p1.lig.sr%==0 set/a p1.lig.sm=0
if %p1.lig.sr%==0 set/a p1.lig.sc=450
if %p1.lig.sr%==0 set/a p1.lig.se=0
if %p1.lig.sr%==0   set p1.lig.sd=Not Learnt
if %p1.lig.sr%==1 set/a p1.lig.sm=4
if %p1.lig.sr%==1 set/a p1.lig.sc=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==1 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==1   set p1.lig.sd=Novice
if %p1.lig.sr%==2 set/a p1.lig.sm=5
if %p1.lig.sr%==2 set/a p1.lig.sc=(%p1.lig.sv% * 30) / 10
if %p1.lig.sr%==2 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==2   set p1.lig.sd=F
if %p1.lig.sr%==3 set/a p1.lig.sm=6
if %p1.lig.sr%==3 set/a p1.lig.sc=(%p1.lig.sv% * 40) / 10
if %p1.lig.sr%==3 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==3   set p1.lig.sd=E
if %p1.lig.sr%==4 set/a p1.lig.sm=7
if %p1.lig.sr%==4 set/a p1.lig.sc=(%p1.lig.sv% * 50) / 10
if %p1.lig.sr%==4 set/a p1.lig.se=(%p1.lig.sv% * 40) / 10
if %p1.lig.sr%==4   set p1.lig.sd=D
if %p1.lig.sr%==5 set/a p1.lig.sm=8
if %p1.lig.sr%==5 set/a p1.lig.sc=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==5 set/a p1.lig.se=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==5   set p1.lig.sd=C
if %p1.lig.sr%==6 set/a p1.lig.sm=9
if %p1.lig.sr%==6 set/a p1.lig.sc=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==6 set/a p1.lig.se=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==6   set p1.lig.sd=B
if %p1.lig.sr%==7 set/a p1.lig.sm=10
if %p1.lig.sr%==7 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==7 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==7   set p1.lig.sd=A
if %p1.lig.sr%==8 set/a p1.lig.sm=11
if %p1.lig.sr%==8 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==8 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==8   set p1.lig.sd=9
if %p1.lig.sr%==9 set/a p1.lig.sm=12
if %p1.lig.sr%==9 set/a p1.lig.sc=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==9 set/a p1.lig.se=(%p1.lig.sv% * 140) / 10
if %p1.lig.sr%==9   set p1.lig.sd=8
if %p1.lig.sr%==10 set/a p1.lig.sm=14
if %p1.lig.sr%==10 set/a p1.lig.sc=(%p1.lig.sv% * 120) / 10
if %p1.lig.sr%==10 set/a p1.lig.se=(%p1.lig.sv% * 180) / 10
if %p1.lig.sr%==10   set p1.lig.sd=7
if %p1.lig.sr%==11 set/a p1.lig.sm=16
if %p1.lig.sr%==11 set/a p1.lig.sc=(%p1.lig.sv% * 140) / 10
if %p1.lig.sr%==11 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==11   set p1.lig.sd=6
if %p1.lig.sr%==12 set/a p1.lig.sm=18
if %p1.lig.sr%==12 set/a p1.lig.sc=(%p1.lig.sv% * 160) / 10
if %p1.lig.sr%==12 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==12   set p1.lig.sd=5
if %p1.lig.sr%==13 set/a p1.lig.sm=20
if %p1.lig.sr%==13 set/a p1.lig.sc=(%p1.lig.sv% * 240) / 10
if %p1.lig.sr%==13 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==13   set p1.lig.sd=4
if %p1.lig.sr%==14 set/a p1.lig.sm=24
if %p1.lig.sr%==14 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==14 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==14   set p1.lig.sd=3
if %p1.lig.sr%==15 set/a p1.lig.sm=28
if %p1.lig.sr%==15 set/a p1.lig.sc=(%p1.lig.sv% * 360) / 10
if %p1.lig.sr%==15 set/a p1.lig.se=(%p1.lig.sv% * 300) / 10
if %p1.lig.sr%==15   set p1.lig.sd=2
if %p1.lig.sr%==16 set/a p1.lig.sm=34
if %p1.lig.sr%==16 set/a p1.lig.sc=(%p1.lig.sv% * 480) / 10
if %p1.lig.sr%==16 set/a p1.lig.se=(%p1.lig.sv% * 400) / 10
if %p1.lig.sr%==16   set p1.lig.sd=1
if %p1.lig.sr%==17 set/a p1.lig.sm=40
if %p1.lig.sr%==17 set/a p1.lig.sc=0
if %p1.lig.sr%==17 set/a p1.lig.se=0
if %p1.lig.sr%==17   set p1.lig.sd=0

::p2
if %p2.lig.sr%==0 set/a p2.lig.sm=0
if %p2.lig.sr%==0 set/a p2.lig.sc=450
if %p2.lig.sr%==0 set/a p2.lig.se=0
if %p2.lig.sr%==0   set p2.lig.sd=Not Learnt
if %p2.lig.sr%==1 set/a p2.lig.sm=4
if %p2.lig.sr%==1 set/a p2.lig.sc=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==1 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==1   set p2.lig.sd=Novice
if %p2.lig.sr%==2 set/a p2.lig.sm=5
if %p2.lig.sr%==2 set/a p2.lig.sc=(%p2.lig.sv% * 30) / 10
if %p2.lig.sr%==2 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==2   set p2.lig.sd=F
if %p2.lig.sr%==3 set/a p2.lig.sm=6
if %p2.lig.sr%==3 set/a p2.lig.sc=(%p2.lig.sv% * 40) / 10
if %p2.lig.sr%==3 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==3   set p2.lig.sd=E
if %p2.lig.sr%==4 set/a p2.lig.sm=7
if %p2.lig.sr%==4 set/a p2.lig.sc=(%p2.lig.sv% * 50) / 10
if %p2.lig.sr%==4 set/a p2.lig.se=(%p2.lig.sv% * 40) / 10
if %p2.lig.sr%==4   set p2.lig.sd=D
if %p2.lig.sr%==5 set/a p2.lig.sm=8
if %p2.lig.sr%==5 set/a p2.lig.sc=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==5 set/a p2.lig.se=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==5   set p2.lig.sd=C
if %p2.lig.sr%==6 set/a p2.lig.sm=9
if %p2.lig.sr%==6 set/a p2.lig.sc=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==6 set/a p2.lig.se=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==6   set p2.lig.sd=B
if %p2.lig.sr%==7 set/a p2.lig.sm=10
if %p2.lig.sr%==7 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==7 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==7   set p2.lig.sd=A
if %p2.lig.sr%==8 set/a p2.lig.sm=11
if %p2.lig.sr%==8 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==8 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==8   set p2.lig.sd=9
if %p2.lig.sr%==9 set/a p2.lig.sm=12
if %p2.lig.sr%==9 set/a p2.lig.sc=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==9 set/a p2.lig.se=(%p2.lig.sv% * 140) / 10
if %p2.lig.sr%==9   set p2.lig.sd=8
if %p2.lig.sr%==10 set/a p2.lig.sm=14
if %p2.lig.sr%==10 set/a p2.lig.sc=(%p2.lig.sv% * 120) / 10
if %p2.lig.sr%==10 set/a p2.lig.se=(%p2.lig.sv% * 180) / 10
if %p2.lig.sr%==10   set p2.lig.sd=7
if %p2.lig.sr%==11 set/a p2.lig.sm=16
if %p2.lig.sr%==11 set/a p2.lig.sc=(%p2.lig.sv% * 140) / 10
if %p2.lig.sr%==11 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==11   set p2.lig.sd=6
if %p2.lig.sr%==12 set/a p2.lig.sm=18
if %p2.lig.sr%==12 set/a p2.lig.sc=(%p2.lig.sv% * 160) / 10
if %p2.lig.sr%==12 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==12   set p2.lig.sd=5
if %p2.lig.sr%==13 set/a p2.lig.sm=20
if %p2.lig.sr%==13 set/a p2.lig.sc=(%p2.lig.sv% * 240) / 10
if %p2.lig.sr%==13 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==13   set p2.lig.sd=4
if %p2.lig.sr%==14 set/a p2.lig.sm=24
if %p2.lig.sr%==14 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==14 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==14   set p2.lig.sd=3
if %p2.lig.sr%==15 set/a p2.lig.sm=28
if %p2.lig.sr%==15 set/a p2.lig.sc=(%p2.lig.sv% * 360) / 10
if %p2.lig.sr%==15 set/a p2.lig.se=(%p2.lig.sv% * 300) / 10
if %p2.lig.sr%==15   set p2.lig.sd=2
if %p2.lig.sr%==16 set/a p2.lig.sm=34
if %p2.lig.sr%==16 set/a p2.lig.sc=(%p2.lig.sv% * 480) / 10
if %p2.lig.sr%==16 set/a p2.lig.se=(%p2.lig.sv% * 400) / 10
if %p2.lig.sr%==16   set p2.lig.sd=1
if %p2.lig.sr%==17 set/a p2.lig.sm=40
if %p2.lig.sr%==17 set/a p2.lig.sc=0
if %p2.lig.sr%==17 set/a p2.lig.se=0
if %p2.lig.sr%==17   set p2.lig.sd=0



set sdc=hdr

if %p1.hdr.sr%==0 set/a p1.%sdc%.sm=0
if %p1.hdr.sr%==0 set/a p1.%sdc%.sc=250
if %p1.hdr.sr%==0 set/a p1.%sdc%.se=0
if %p1.hdr.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.hdr.sr%==1 set/a p1.%sdc%.sm=4
if %p1.hdr.sr%==1 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 20) / 10
if %p1.hdr.sr%==1 set/a p1.%sdc%.se=(%p1.hdr.sv% * 20) / 10
if %p1.hdr.sr%==1   set p1.%sdc%.sd=Novice
if %p1.hdr.sr%==2 set/a p1.%sdc%.sm=5
if %p1.hdr.sr%==2 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 30) / 10
if %p1.hdr.sr%==2 set/a p1.%sdc%.se=(%p1.hdr.sv% * 20) / 10
if %p1.hdr.sr%==2   set p1.%sdc%.sd=F
if %p1.hdr.sr%==3 set/a p1.%sdc%.sm=6
if %p1.hdr.sr%==3 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 40) / 10
if %p1.hdr.sr%==3 set/a p1.%sdc%.se=(%p1.hdr.sv% * 20) / 10
if %p1.hdr.sr%==3   set p1.%sdc%.sd=E
if %p1.hdr.sr%==4 set/a p1.%sdc%.sm=7
if %p1.hdr.sr%==4 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 50) / 10
if %p1.hdr.sr%==4 set/a p1.%sdc%.se=(%p1.hdr.sv% * 40) / 10
if %p1.hdr.sr%==4   set p1.%sdc%.sd=D
if %p1.hdr.sr%==5 set/a p1.%sdc%.sm=8
if %p1.hdr.sr%==5 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 60) / 10
if %p1.hdr.sr%==5 set/a p1.%sdc%.se=(%p1.hdr.sv% * 60) / 10
if %p1.hdr.sr%==5   set p1.%sdc%.sd=C
if %p1.hdr.sr%==6 set/a p1.%sdc%.sm=9
if %p1.hdr.sr%==6 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 60) / 10
if %p1.hdr.sr%==6 set/a p1.%sdc%.se=(%p1.hdr.sv% * 80) / 10
if %p1.hdr.sr%==6   set p1.%sdc%.sd=B
if %p1.hdr.sr%==7 set/a p1.%sdc%.sm=10
if %p1.hdr.sr%==7 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 80) / 10
if %p1.hdr.sr%==7 set/a p1.%sdc%.se=(%p1.hdr.sv% * 100) / 10
if %p1.hdr.sr%==7   set p1.%sdc%.sd=A
if %p1.hdr.sr%==8 set/a p1.%sdc%.sm=11
if %p1.hdr.sr%==8 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 80) / 10
if %p1.hdr.sr%==8 set/a p1.%sdc%.se=(%p1.hdr.sv% * 100) / 10
if %p1.hdr.sr%==8   set p1.%sdc%.sd=9
if %p1.hdr.sr%==9 set/a p1.%sdc%.sm=12
if %p1.hdr.sr%==9 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 100) / 10
if %p1.hdr.sr%==9 set/a p1.%sdc%.se=(%p1.hdr.sv% * 140) / 10
if %p1.hdr.sr%==9   set p1.%sdc%.sd=8
if %p1.hdr.sr%==10 set/a p1.%sdc%.sm=14
if %p1.hdr.sr%==10 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 120) / 10
if %p1.hdr.sr%==10 set/a p1.%sdc%.se=(%p1.hdr.sv% * 180) / 10
if %p1.hdr.sr%==10   set p1.%sdc%.sd=7
if %p1.hdr.sr%==11 set/a p1.%sdc%.sm=16
if %p1.hdr.sr%==11 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 140) / 10
if %p1.hdr.sr%==11 set/a p1.%sdc%.se=(%p1.hdr.sv% * 200) / 10
if %p1.hdr.sr%==11   set p1.%sdc%.sd=6
if %p1.hdr.sr%==12 set/a p1.%sdc%.sm=18
if %p1.hdr.sr%==12 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 160) / 10
if %p1.hdr.sr%==12 set/a p1.%sdc%.se=(%p1.hdr.sv% * 200) / 10
if %p1.hdr.sr%==12   set p1.%sdc%.sd=5
if %p1.hdr.sr%==13 set/a p1.%sdc%.sm=20
if %p1.hdr.sr%==13 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 240) / 10
if %p1.hdr.sr%==13 set/a p1.%sdc%.se=(%p1.hdr.sv% * 200) / 10
if %p1.hdr.sr%==13   set p1.%sdc%.sd=4
if %p1.hdr.sr%==14 set/a p1.%sdc%.sm=24
if %p1.hdr.sr%==14 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 80) / 10
if %p1.hdr.sr%==14 set/a p1.%sdc%.se=(%p1.hdr.sv% * 100) / 10
if %p1.hdr.sr%==14   set p1.%sdc%.sd=3
if %p1.hdr.sr%==15 set/a p1.%sdc%.sm=28
if %p1.hdr.sr%==15 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 360) / 10
if %p1.hdr.sr%==15 set/a p1.%sdc%.se=(%p1.hdr.sv% * 300) / 10
if %p1.hdr.sr%==15   set p1.%sdc%.sd=2
if %p1.hdr.sr%==16 set/a p1.%sdc%.sm=34
if %p1.hdr.sr%==16 set/a p1.%sdc%.sc=(%p1.hdr.sv% * 480) / 10
if %p1.hdr.sr%==16 set/a p1.%sdc%.se=(%p1.hdr.sv% * 400) / 10
if %p1.hdr.sr%==16   set p1.%sdc%.sd=1
if %p1.hdr.sr%==17 set/a p1.%sdc%.sm=40
if %p1.hdr.sr%==17 set/a p1.%sdc%.sc=0
if %p1.hdr.sr%==17 set/a p1.%sdc%.se=0
if %p1.hdr.sr%==17   set p1.%sdc%.sd=0

::p2

if %p2.hdr.sr%==0 set/a p2.%sdc%.sm=0
if %p2.hdr.sr%==0 set/a p2.%sdc%.sc=250
if %p2.hdr.sr%==0 set/a p2.%sdc%.se=0
if %p2.hdr.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.hdr.sr%==1 set/a p2.%sdc%.sm=4
if %p2.hdr.sr%==1 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 20) / 10
if %p2.hdr.sr%==1 set/a p2.%sdc%.se=(%p2.hdr.sv% * 20) / 10
if %p2.hdr.sr%==1   set p2.%sdc%.sd=Novice
if %p2.hdr.sr%==2 set/a p2.%sdc%.sm=5
if %p2.hdr.sr%==2 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 30) / 10
if %p2.hdr.sr%==2 set/a p2.%sdc%.se=(%p2.hdr.sv% * 20) / 10
if %p2.hdr.sr%==2   set p2.%sdc%.sd=F
if %p2.hdr.sr%==3 set/a p2.%sdc%.sm=6
if %p2.hdr.sr%==3 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 40) / 10
if %p2.hdr.sr%==3 set/a p2.%sdc%.se=(%p2.hdr.sv% * 20) / 10
if %p2.hdr.sr%==3   set p2.%sdc%.sd=E
if %p2.hdr.sr%==4 set/a p2.%sdc%.sm=7
if %p2.hdr.sr%==4 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 50) / 10
if %p2.hdr.sr%==4 set/a p2.%sdc%.se=(%p2.hdr.sv% * 40) / 10
if %p2.hdr.sr%==4   set p2.%sdc%.sd=D
if %p2.hdr.sr%==5 set/a p2.%sdc%.sm=8
if %p2.hdr.sr%==5 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 60) / 10
if %p2.hdr.sr%==5 set/a p2.%sdc%.se=(%p2.hdr.sv% * 60) / 10
if %p2.hdr.sr%==5   set p2.%sdc%.sd=C
if %p2.hdr.sr%==6 set/a p2.%sdc%.sm=9
if %p2.hdr.sr%==6 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 60) / 10
if %p2.hdr.sr%==6 set/a p2.%sdc%.se=(%p2.hdr.sv% * 80) / 10
if %p2.hdr.sr%==6   set p2.%sdc%.sd=B
if %p2.hdr.sr%==7 set/a p2.%sdc%.sm=10
if %p2.hdr.sr%==7 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 80) / 10
if %p2.hdr.sr%==7 set/a p2.%sdc%.se=(%p2.hdr.sv% * 100) / 10
if %p2.hdr.sr%==7   set p2.%sdc%.sd=A
if %p2.hdr.sr%==8 set/a p2.%sdc%.sm=11
if %p2.hdr.sr%==8 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 80) / 10
if %p2.hdr.sr%==8 set/a p2.%sdc%.se=(%p2.hdr.sv% * 100) / 10
if %p2.hdr.sr%==8   set p2.%sdc%.sd=9
if %p2.hdr.sr%==9 set/a p2.%sdc%.sm=12
if %p2.hdr.sr%==9 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 100) / 10
if %p2.hdr.sr%==9 set/a p2.%sdc%.se=(%p2.hdr.sv% * 140) / 10
if %p2.hdr.sr%==9   set p2.%sdc%.sd=8
if %p2.hdr.sr%==10 set/a p2.%sdc%.sm=14
if %p2.hdr.sr%==10 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 120) / 10
if %p2.hdr.sr%==10 set/a p2.%sdc%.se=(%p2.hdr.sv% * 180) / 10
if %p2.hdr.sr%==10   set p2.%sdc%.sd=7
if %p2.hdr.sr%==11 set/a p2.%sdc%.sm=16
if %p2.hdr.sr%==11 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 140) / 10
if %p2.hdr.sr%==11 set/a p2.%sdc%.se=(%p2.hdr.sv% * 200) / 10
if %p2.hdr.sr%==11   set p2.%sdc%.sd=6
if %p2.hdr.sr%==12 set/a p2.%sdc%.sm=18
if %p2.hdr.sr%==12 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 160) / 10
if %p2.hdr.sr%==12 set/a p2.%sdc%.se=(%p2.hdr.sv% * 200) / 10
if %p2.hdr.sr%==12   set p2.%sdc%.sd=5
if %p2.hdr.sr%==13 set/a p2.%sdc%.sm=20
if %p2.hdr.sr%==13 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 240) / 10
if %p2.hdr.sr%==13 set/a p2.%sdc%.se=(%p2.hdr.sv% * 200) / 10
if %p2.hdr.sr%==13   set p2.%sdc%.sd=4
if %p2.hdr.sr%==14 set/a p2.%sdc%.sm=24
if %p2.hdr.sr%==14 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 80) / 10
if %p2.hdr.sr%==14 set/a p2.%sdc%.se=(%p2.hdr.sv% * 100) / 10
if %p2.hdr.sr%==14   set p2.%sdc%.sd=3
if %p2.hdr.sr%==15 set/a p2.%sdc%.sm=28
if %p2.hdr.sr%==15 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 360) / 10
if %p2.hdr.sr%==15 set/a p2.%sdc%.se=(%p2.hdr.sv% * 300) / 10
if %p2.hdr.sr%==15   set p2.%sdc%.sd=2
if %p2.hdr.sr%==16 set/a p2.%sdc%.sm=34
if %p2.hdr.sr%==16 set/a p2.%sdc%.sc=(%p2.hdr.sv% * 480) / 10
if %p2.hdr.sr%==16 set/a p2.%sdc%.se=(%p2.hdr.sv% * 400) / 10
if %p2.hdr.sr%==16   set p2.%sdc%.sd=1
if %p2.hdr.sr%==17 set/a p2.%sdc%.sm=40
if %p2.hdr.sr%==17 set/a p2.%sdc%.sc=0
if %p2.hdr.sr%==17 set/a p2.%sdc%.se=0
if %p2.hdr.sr%==17   set p2.%sdc%.sd=0

set sdc=get

if %p1.get.sr%==0 set/a p1.%sdc%.sm=0
if %p1.get.sr%==0 set/a p1.%sdc%.sc=600
if %p1.get.sr%==0 set/a p1.%sdc%.se=0
if %p1.get.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.get.sr%==1 set/a p1.%sdc%.sm=4
if %p1.get.sr%==1 set/a p1.%sdc%.sc=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==1 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==1   set p1.%sdc%.sd=Novice
if %p1.get.sr%==2 set/a p1.%sdc%.sm=5
if %p1.get.sr%==2 set/a p1.%sdc%.sc=(%p1.get.sv% * 30) / 10
if %p1.get.sr%==2 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==2   set p1.%sdc%.sd=F
if %p1.get.sr%==3 set/a p1.%sdc%.sm=6
if %p1.get.sr%==3 set/a p1.%sdc%.sc=(%p1.get.sv% * 40) / 10
if %p1.get.sr%==3 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==3   set p1.%sdc%.sd=E
if %p1.get.sr%==4 set/a p1.%sdc%.sm=7
if %p1.get.sr%==4 set/a p1.%sdc%.sc=(%p1.get.sv% * 50) / 10
if %p1.get.sr%==4 set/a p1.%sdc%.se=(%p1.get.sv% * 40) / 10
if %p1.get.sr%==4   set p1.%sdc%.sd=D
if %p1.get.sr%==5 set/a p1.%sdc%.sm=8
if %p1.get.sr%==5 set/a p1.%sdc%.sc=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==5 set/a p1.%sdc%.se=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==5   set p1.%sdc%.sd=C
if %p1.get.sr%==6 set/a p1.%sdc%.sm=9
if %p1.get.sr%==6 set/a p1.%sdc%.sc=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==6 set/a p1.%sdc%.se=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==6   set p1.%sdc%.sd=B
if %p1.get.sr%==7 set/a p1.%sdc%.sm=10
if %p1.get.sr%==7 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==7 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==7   set p1.%sdc%.sd=A
if %p1.get.sr%==8 set/a p1.%sdc%.sm=11
if %p1.get.sr%==8 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==8 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==8   set p1.%sdc%.sd=9
if %p1.get.sr%==9 set/a p1.%sdc%.sm=12
if %p1.get.sr%==9 set/a p1.%sdc%.sc=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==9 set/a p1.%sdc%.se=(%p1.get.sv% * 140) / 10
if %p1.get.sr%==9   set p1.%sdc%.sd=8
if %p1.get.sr%==10 set/a p1.%sdc%.sm=14
if %p1.get.sr%==10 set/a p1.%sdc%.sc=(%p1.get.sv% * 120) / 10
if %p1.get.sr%==10 set/a p1.%sdc%.se=(%p1.get.sv% * 180) / 10
if %p1.get.sr%==10   set p1.%sdc%.sd=7
if %p1.get.sr%==11 set/a p1.%sdc%.sm=16
if %p1.get.sr%==11 set/a p1.%sdc%.sc=(%p1.get.sv% * 140) / 10
if %p1.get.sr%==11 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==11   set p1.%sdc%.sd=6
if %p1.get.sr%==12 set/a p1.%sdc%.sm=18
if %p1.get.sr%==12 set/a p1.%sdc%.sc=(%p1.get.sv% * 160) / 10
if %p1.get.sr%==12 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==12   set p1.%sdc%.sd=5
if %p1.get.sr%==13 set/a p1.%sdc%.sm=20
if %p1.get.sr%==13 set/a p1.%sdc%.sc=(%p1.get.sv% * 240) / 10
if %p1.get.sr%==13 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==13   set p1.%sdc%.sd=4
if %p1.get.sr%==14 set/a p1.%sdc%.sm=24
if %p1.get.sr%==14 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==14 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==14   set p1.%sdc%.sd=3
if %p1.get.sr%==15 set/a p1.%sdc%.sm=28
if %p1.get.sr%==15 set/a p1.%sdc%.sc=(%p1.get.sv% * 360) / 10
if %p1.get.sr%==15 set/a p1.%sdc%.se=(%p1.get.sv% * 300) / 10
if %p1.get.sr%==15   set p1.%sdc%.sd=2
if %p1.get.sr%==16 set/a p1.%sdc%.sm=34
if %p1.get.sr%==16 set/a p1.%sdc%.sc=(%p1.get.sv% * 480) / 10
if %p1.get.sr%==16 set/a p1.%sdc%.se=(%p1.get.sv% * 400) / 10
if %p1.get.sr%==16   set p1.%sdc%.sd=1
if %p1.get.sr%==17 set/a p1.%sdc%.sm=40
if %p1.get.sr%==17 set/a p1.%sdc%.sc=0
if %p1.get.sr%==17 set/a p1.%sdc%.se=0
if %p1.get.sr%==17   set p1.%sdc%.sd=0

set sdc=get

if %p2.get.sr%==0 set/a p2.%sdc%.sm=0
if %p2.get.sr%==0 set/a p2.%sdc%.sc=600
if %p2.get.sr%==0 set/a p2.%sdc%.se=0
if %p2.get.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.get.sr%==1 set/a p2.%sdc%.sm=4
if %p2.get.sr%==1 set/a p2.%sdc%.sc=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==1 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==1   set p2.%sdc%.sd=Novice
if %p2.get.sr%==2 set/a p2.%sdc%.sm=5
if %p2.get.sr%==2 set/a p2.%sdc%.sc=(%p2.get.sv% * 30) / 10
if %p2.get.sr%==2 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==2   set p2.%sdc%.sd=F
if %p2.get.sr%==3 set/a p2.%sdc%.sm=6
if %p2.get.sr%==3 set/a p2.%sdc%.sc=(%p2.get.sv% * 40) / 10
if %p2.get.sr%==3 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==3   set p2.%sdc%.sd=E
if %p2.get.sr%==4 set/a p2.%sdc%.sm=7
if %p2.get.sr%==4 set/a p2.%sdc%.sc=(%p2.get.sv% * 50) / 10
if %p2.get.sr%==4 set/a p2.%sdc%.se=(%p2.get.sv% * 40) / 10
if %p2.get.sr%==4   set p2.%sdc%.sd=D
if %p2.get.sr%==5 set/a p2.%sdc%.sm=8
if %p2.get.sr%==5 set/a p2.%sdc%.sc=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==5 set/a p2.%sdc%.se=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==5   set p2.%sdc%.sd=C
if %p2.get.sr%==6 set/a p2.%sdc%.sm=9
if %p2.get.sr%==6 set/a p2.%sdc%.sc=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==6 set/a p2.%sdc%.se=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==6   set p2.%sdc%.sd=B
if %p2.get.sr%==7 set/a p2.%sdc%.sm=10
if %p2.get.sr%==7 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==7 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==7   set p2.%sdc%.sd=A
if %p2.get.sr%==8 set/a p2.%sdc%.sm=11
if %p2.get.sr%==8 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==8 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==8   set p2.%sdc%.sd=9
if %p2.get.sr%==9 set/a p2.%sdc%.sm=12
if %p2.get.sr%==9 set/a p2.%sdc%.sc=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==9 set/a p2.%sdc%.se=(%p2.get.sv% * 140) / 10
if %p2.get.sr%==9   set p2.%sdc%.sd=8
if %p2.get.sr%==10 set/a p2.%sdc%.sm=14
if %p2.get.sr%==10 set/a p2.%sdc%.sc=(%p2.get.sv% * 120) / 10
if %p2.get.sr%==10 set/a p2.%sdc%.se=(%p2.get.sv% * 180) / 10
if %p2.get.sr%==10   set p2.%sdc%.sd=7
if %p2.get.sr%==11 set/a p2.%sdc%.sm=16
if %p2.get.sr%==11 set/a p2.%sdc%.sc=(%p2.get.sv% * 140) / 10
if %p2.get.sr%==11 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==11   set p2.%sdc%.sd=6
if %p2.get.sr%==12 set/a p2.%sdc%.sm=18
if %p2.get.sr%==12 set/a p2.%sdc%.sc=(%p2.get.sv% * 160) / 10
if %p2.get.sr%==12 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==12   set p2.%sdc%.sd=5
if %p2.get.sr%==13 set/a p2.%sdc%.sm=20
if %p2.get.sr%==13 set/a p2.%sdc%.sc=(%p2.get.sv% * 240) / 10
if %p2.get.sr%==13 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==13   set p2.%sdc%.sd=4
if %p2.get.sr%==14 set/a p2.%sdc%.sm=24
if %p2.get.sr%==14 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==14 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==14   set p2.%sdc%.sd=3
if %p2.get.sr%==15 set/a p2.%sdc%.sm=28
if %p2.get.sr%==15 set/a p2.%sdc%.sc=(%p2.get.sv% * 360) / 10
if %p2.get.sr%==15 set/a p2.%sdc%.se=(%p2.get.sv% * 300) / 10
if %p2.get.sr%==15   set p2.%sdc%.sd=2
if %p2.get.sr%==16 set/a p2.%sdc%.sm=34
if %p2.get.sr%==16 set/a p2.%sdc%.sc=(%p2.get.sv% * 480) / 10
if %p2.get.sr%==16 set/a p2.%sdc%.se=(%p2.get.sv% * 400) / 10
if %p2.get.sr%==16   set p2.%sdc%.sd=1
if %p2.get.sr%==17 set/a p2.%sdc%.sm=40
if %p2.get.sr%==17 set/a p2.%sdc%.sc=0
if %p2.get.sr%==17 set/a p2.%sdc%.se=0
if %p2.get.sr%==17   set p2.%sdc%.sd=0



set sdc=ice

if %p1.ice.sr%==0 set/a p1.%sdc%.sm=0
if %p1.ice.sr%==0 set/a p1.%sdc%.sc=0
if %p1.ice.sr%==0 set/a p1.%sdc%.se=0
if %p1.ice.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.ice.sr%==1 set/a p1.%sdc%.sm=4
if %p1.ice.sr%==1 set/a p1.%sdc%.sc=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==1 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==1   set p1.%sdc%.sd=Novice
if %p1.ice.sr%==2 set/a p1.%sdc%.sm=5
if %p1.ice.sr%==2 set/a p1.%sdc%.sc=(%p1.ice.sv% * 30) / 10
if %p1.ice.sr%==2 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==2   set p1.%sdc%.sd=F
if %p1.ice.sr%==3 set/a p1.%sdc%.sm=6
if %p1.ice.sr%==3 set/a p1.%sdc%.sc=(%p1.ice.sv% * 40) / 10
if %p1.ice.sr%==3 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==3   set p1.%sdc%.sd=E
if %p1.ice.sr%==4 set/a p1.%sdc%.sm=7
if %p1.ice.sr%==4 set/a p1.%sdc%.sc=(%p1.ice.sv% * 50) / 10
if %p1.ice.sr%==4 set/a p1.%sdc%.se=(%p1.ice.sv% * 40) / 10
if %p1.ice.sr%==4   set p1.%sdc%.sd=D
if %p1.ice.sr%==5 set/a p1.%sdc%.sm=8
if %p1.ice.sr%==5 set/a p1.%sdc%.sc=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==5 set/a p1.%sdc%.se=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==5   set p1.%sdc%.sd=C
if %p1.ice.sr%==6 set/a p1.%sdc%.sm=9
if %p1.ice.sr%==6 set/a p1.%sdc%.sc=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==6 set/a p1.%sdc%.se=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==6   set p1.%sdc%.sd=B
if %p1.ice.sr%==7 set/a p1.%sdc%.sm=10
if %p1.ice.sr%==7 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==7 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==7   set p1.%sdc%.sd=A
if %p1.ice.sr%==8 set/a p1.%sdc%.sm=11
if %p1.ice.sr%==8 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==8 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==8   set p1.%sdc%.sd=9
if %p1.ice.sr%==9 set/a p1.%sdc%.sm=12
if %p1.ice.sr%==9 set/a p1.%sdc%.sc=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==9 set/a p1.%sdc%.se=(%p1.ice.sv% * 140) / 10
if %p1.ice.sr%==9   set p1.%sdc%.sd=8
if %p1.ice.sr%==10 set/a p1.%sdc%.sm=14
if %p1.ice.sr%==10 set/a p1.%sdc%.sc=(%p1.ice.sv% * 120) / 10
if %p1.ice.sr%==10 set/a p1.%sdc%.se=(%p1.ice.sv% * 180) / 10
if %p1.ice.sr%==10   set p1.%sdc%.sd=7
if %p1.ice.sr%==11 set/a p1.%sdc%.sm=16
if %p1.ice.sr%==11 set/a p1.%sdc%.sc=(%p1.ice.sv% * 140) / 10
if %p1.ice.sr%==11 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==11   set p1.%sdc%.sd=6
if %p1.ice.sr%==12 set/a p1.%sdc%.sm=18
if %p1.ice.sr%==12 set/a p1.%sdc%.sc=(%p1.ice.sv% * 160) / 10
if %p1.ice.sr%==12 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==12   set p1.%sdc%.sd=5
if %p1.ice.sr%==13 set/a p1.%sdc%.sm=20
if %p1.ice.sr%==13 set/a p1.%sdc%.sc=(%p1.ice.sv% * 240) / 10
if %p1.ice.sr%==13 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==13   set p1.%sdc%.sd=4
if %p1.ice.sr%==14 set/a p1.%sdc%.sm=24
if %p1.ice.sr%==14 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==14 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==14   set p1.%sdc%.sd=3
if %p1.ice.sr%==15 set/a p1.%sdc%.sm=28
if %p1.ice.sr%==15 set/a p1.%sdc%.sc=(%p1.ice.sv% * 360) / 10
if %p1.ice.sr%==15 set/a p1.%sdc%.se=(%p1.ice.sv% * 300) / 10
if %p1.ice.sr%==15   set p1.%sdc%.sd=2
if %p1.ice.sr%==16 set/a p1.%sdc%.sm=34
if %p1.ice.sr%==16 set/a p1.%sdc%.sc=(%p1.ice.sv% * 480) / 10
if %p1.ice.sr%==16 set/a p1.%sdc%.se=(%p1.ice.sv% * 400) / 10
if %p1.ice.sr%==16   set p1.%sdc%.sd=1
if %p1.ice.sr%==17 set/a p1.%sdc%.sm=40
if %p1.ice.sr%==17 set/a p1.%sdc%.sc=0
if %p1.ice.sr%==17 set/a p1.%sdc%.se=0
if %p1.ice.sr%==17   set p1.%sdc%.sd=0

if %p2.ice.sr%==0 set/a p2.%sdc%.sm=0
if %p2.ice.sr%==0 set/a p2.%sdc%.sc=0
if %p2.ice.sr%==0 set/a p2.%sdc%.se=0
if %p2.ice.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.ice.sr%==1 set/a p2.%sdc%.sm=4
if %p2.ice.sr%==1 set/a p2.%sdc%.sc=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==1 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==1   set p2.%sdc%.sd=Novice
if %p2.ice.sr%==2 set/a p2.%sdc%.sm=5
if %p2.ice.sr%==2 set/a p2.%sdc%.sc=(%p2.ice.sv% * 30) / 10
if %p2.ice.sr%==2 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==2   set p2.%sdc%.sd=F
if %p2.ice.sr%==3 set/a p2.%sdc%.sm=6
if %p2.ice.sr%==3 set/a p2.%sdc%.sc=(%p2.ice.sv% * 40) / 10
if %p2.ice.sr%==3 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==3   set p2.%sdc%.sd=E
if %p2.ice.sr%==4 set/a p2.%sdc%.sm=7
if %p2.ice.sr%==4 set/a p2.%sdc%.sc=(%p2.ice.sv% * 50) / 10
if %p2.ice.sr%==4 set/a p2.%sdc%.se=(%p2.ice.sv% * 40) / 10
if %p2.ice.sr%==4   set p2.%sdc%.sd=D
if %p2.ice.sr%==5 set/a p2.%sdc%.sm=8
if %p2.ice.sr%==5 set/a p2.%sdc%.sc=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==5 set/a p2.%sdc%.se=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==5   set p2.%sdc%.sd=C
if %p2.ice.sr%==6 set/a p2.%sdc%.sm=9
if %p2.ice.sr%==6 set/a p2.%sdc%.sc=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==6 set/a p2.%sdc%.se=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==6   set p2.%sdc%.sd=B
if %p2.ice.sr%==7 set/a p2.%sdc%.sm=10
if %p2.ice.sr%==7 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==7 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==7   set p2.%sdc%.sd=A
if %p2.ice.sr%==8 set/a p2.%sdc%.sm=11
if %p2.ice.sr%==8 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==8 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==8   set p2.%sdc%.sd=9
if %p2.ice.sr%==9 set/a p2.%sdc%.sm=12
if %p2.ice.sr%==9 set/a p2.%sdc%.sc=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==9 set/a p2.%sdc%.se=(%p2.ice.sv% * 140) / 10
if %p2.ice.sr%==9   set p2.%sdc%.sd=8
if %p2.ice.sr%==10 set/a p2.%sdc%.sm=14
if %p2.ice.sr%==10 set/a p2.%sdc%.sc=(%p2.ice.sv% * 120) / 10
if %p2.ice.sr%==10 set/a p2.%sdc%.se=(%p2.ice.sv% * 180) / 10
if %p2.ice.sr%==10   set p2.%sdc%.sd=7
if %p2.ice.sr%==11 set/a p2.%sdc%.sm=16
if %p2.ice.sr%==11 set/a p2.%sdc%.sc=(%p2.ice.sv% * 140) / 10
if %p2.ice.sr%==11 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==11   set p2.%sdc%.sd=6
if %p2.ice.sr%==12 set/a p2.%sdc%.sm=18
if %p2.ice.sr%==12 set/a p2.%sdc%.sc=(%p2.ice.sv% * 160) / 10
if %p2.ice.sr%==12 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==12   set p2.%sdc%.sd=5
if %p2.ice.sr%==13 set/a p2.%sdc%.sm=20
if %p2.ice.sr%==13 set/a p2.%sdc%.sc=(%p2.ice.sv% * 240) / 10
if %p2.ice.sr%==13 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==13   set p2.%sdc%.sd=4
if %p2.ice.sr%==14 set/a p2.%sdc%.sm=24
if %p2.ice.sr%==14 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==14 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==14   set p2.%sdc%.sd=3
if %p2.ice.sr%==15 set/a p2.%sdc%.sm=28
if %p2.ice.sr%==15 set/a p2.%sdc%.sc=(%p2.ice.sv% * 360) / 10
if %p2.ice.sr%==15 set/a p2.%sdc%.se=(%p2.ice.sv% * 300) / 10
if %p2.ice.sr%==15   set p2.%sdc%.sd=2
if %p2.ice.sr%==16 set/a p2.%sdc%.sm=34
if %p2.ice.sr%==16 set/a p2.%sdc%.sc=(%p2.ice.sv% * 480) / 10
if %p2.ice.sr%==16 set/a p2.%sdc%.se=(%p2.ice.sv% * 400) / 10
if %p2.ice.sr%==16   set p2.%sdc%.sd=1
if %p2.ice.sr%==17 set/a p2.%sdc%.sm=40
if %p2.ice.sr%==17 set/a p2.%sdc%.sc=0
if %p2.ice.sr%==17 set/a p2.%sdc%.se=0
if %p2.ice.sr%==17   set p2.%sdc%.sd=0

set sdc=msh
if %p1.msh.sr%==0 set/a p1.%sdc%.sm=0
if %p1.msh.sr%==0 set/a p1.%sdc%.sc=250
if %p1.msh.sr%==0 set/a p1.%sdc%.se=0
if %p1.msh.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.msh.sr%==1 set/a p1.%sdc%.sm=4
if %p1.msh.sr%==1 set/a p1.%sdc%.sc=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==1 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==1   set p1.%sdc%.sd=Novice
if %p1.msh.sr%==2 set/a p1.%sdc%.sm=5
if %p1.msh.sr%==2 set/a p1.%sdc%.sc=(%p1.msh.sv% * 30) / 10
if %p1.msh.sr%==2 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==2   set p1.%sdc%.sd=F
if %p1.msh.sr%==3 set/a p1.%sdc%.sm=6
if %p1.msh.sr%==3 set/a p1.%sdc%.sc=(%p1.msh.sv% * 40) / 10
if %p1.msh.sr%==3 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==3   set p1.%sdc%.sd=E
if %p1.msh.sr%==4 set/a p1.%sdc%.sm=7
if %p1.msh.sr%==4 set/a p1.%sdc%.sc=(%p1.msh.sv% * 50) / 10
if %p1.msh.sr%==4 set/a p1.%sdc%.se=(%p1.msh.sv% * 40) / 10
if %p1.msh.sr%==4   set p1.%sdc%.sd=D
if %p1.msh.sr%==5 set/a p1.%sdc%.sm=8
if %p1.msh.sr%==5 set/a p1.%sdc%.sc=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==5 set/a p1.%sdc%.se=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==5   set p1.%sdc%.sd=C
if %p1.msh.sr%==6 set/a p1.%sdc%.sm=9
if %p1.msh.sr%==6 set/a p1.%sdc%.sc=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==6 set/a p1.%sdc%.se=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==6   set p1.%sdc%.sd=B
if %p1.msh.sr%==7 set/a p1.%sdc%.sm=10
if %p1.msh.sr%==7 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==7 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==7   set p1.%sdc%.sd=A
if %p1.msh.sr%==8 set/a p1.%sdc%.sm=11
if %p1.msh.sr%==8 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==8 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==8   set p1.%sdc%.sd=9
if %p1.msh.sr%==9 set/a p1.%sdc%.sm=12
if %p1.msh.sr%==9 set/a p1.%sdc%.sc=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==9 set/a p1.%sdc%.se=(%p1.msh.sv% * 140) / 10
if %p1.msh.sr%==9   set p1.%sdc%.sd=8
if %p1.msh.sr%==10 set/a p1.%sdc%.sm=14
if %p1.msh.sr%==10 set/a p1.%sdc%.sc=(%p1.msh.sv% * 120) / 10
if %p1.msh.sr%==10 set/a p1.%sdc%.se=(%p1.msh.sv% * 180) / 10
if %p1.msh.sr%==10   set p1.%sdc%.sd=7
if %p1.msh.sr%==11 set/a p1.%sdc%.sm=16
if %p1.msh.sr%==11 set/a p1.%sdc%.sc=(%p1.msh.sv% * 140) / 10
if %p1.msh.sr%==11 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==11   set p1.%sdc%.sd=6
if %p1.msh.sr%==12 set/a p1.%sdc%.sm=18
if %p1.msh.sr%==12 set/a p1.%sdc%.sc=(%p1.msh.sv% * 160) / 10
if %p1.msh.sr%==12 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==12   set p1.%sdc%.sd=5
if %p1.msh.sr%==13 set/a p1.%sdc%.sm=20
if %p1.msh.sr%==13 set/a p1.%sdc%.sc=(%p1.msh.sv% * 240) / 10
if %p1.msh.sr%==13 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==13   set p1.%sdc%.sd=4
if %p1.msh.sr%==14 set/a p1.%sdc%.sm=24
if %p1.msh.sr%==14 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==14 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==14   set p1.%sdc%.sd=3
if %p1.msh.sr%==15 set/a p1.%sdc%.sm=28
if %p1.msh.sr%==15 set/a p1.%sdc%.sc=(%p1.msh.sv% * 360) / 10
if %p1.msh.sr%==15 set/a p1.%sdc%.se=(%p1.msh.sv% * 300) / 10
if %p1.msh.sr%==15   set p1.%sdc%.sd=2
if %p1.msh.sr%==16 set/a p1.%sdc%.sm=34
if %p1.msh.sr%==16 set/a p1.%sdc%.sc=(%p1.msh.sv% * 480) / 10
if %p1.msh.sr%==16 set/a p1.%sdc%.se=(%p1.msh.sv% * 400) / 10
if %p1.msh.sr%==16   set p1.%sdc%.sd=1
if %p1.msh.sr%==17 set/a p1.%sdc%.sm=40
if %p1.msh.sr%==17 set/a p1.%sdc%.sc=0
if %p1.msh.sr%==17 set/a p1.%sdc%.se=0
if %p1.msh.sr%==17   set p1.%sdc%.sd=0

if %p2.msh.sr%==0 set/a p2.%sdc%.sm=0
if %p2.msh.sr%==0 set/a p2.%sdc%.sc=250
if %p2.msh.sr%==0 set/a p2.%sdc%.se=0
if %p2.msh.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.msh.sr%==1 set/a p2.%sdc%.sm=4
if %p2.msh.sr%==1 set/a p2.%sdc%.sc=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==1 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==1   set p2.%sdc%.sd=Novice
if %p2.msh.sr%==2 set/a p2.%sdc%.sm=5
if %p2.msh.sr%==2 set/a p2.%sdc%.sc=(%p2.msh.sv% * 30) / 10
if %p2.msh.sr%==2 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==2   set p2.%sdc%.sd=F
if %p2.msh.sr%==3 set/a p2.%sdc%.sm=6
if %p2.msh.sr%==3 set/a p2.%sdc%.sc=(%p2.msh.sv% * 40) / 10
if %p2.msh.sr%==3 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==3   set p2.%sdc%.sd=E
if %p2.msh.sr%==4 set/a p2.%sdc%.sm=7
if %p2.msh.sr%==4 set/a p2.%sdc%.sc=(%p2.msh.sv% * 50) / 10
if %p2.msh.sr%==4 set/a p2.%sdc%.se=(%p2.msh.sv% * 40) / 10
if %p2.msh.sr%==4   set p2.%sdc%.sd=D
if %p2.msh.sr%==5 set/a p2.%sdc%.sm=8
if %p2.msh.sr%==5 set/a p2.%sdc%.sc=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==5 set/a p2.%sdc%.se=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==5   set p2.%sdc%.sd=C
if %p2.msh.sr%==6 set/a p2.%sdc%.sm=9
if %p2.msh.sr%==6 set/a p2.%sdc%.sc=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==6 set/a p2.%sdc%.se=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==6   set p2.%sdc%.sd=B
if %p2.msh.sr%==7 set/a p2.%sdc%.sm=10
if %p2.msh.sr%==7 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==7 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==7   set p2.%sdc%.sd=A
if %p2.msh.sr%==8 set/a p2.%sdc%.sm=11
if %p2.msh.sr%==8 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==8 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==8   set p2.%sdc%.sd=9
if %p2.msh.sr%==9 set/a p2.%sdc%.sm=12
if %p2.msh.sr%==9 set/a p2.%sdc%.sc=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==9 set/a p2.%sdc%.se=(%p2.msh.sv% * 140) / 10
if %p2.msh.sr%==9   set p2.%sdc%.sd=8
if %p2.msh.sr%==10 set/a p2.%sdc%.sm=14
if %p2.msh.sr%==10 set/a p2.%sdc%.sc=(%p2.msh.sv% * 120) / 10
if %p2.msh.sr%==10 set/a p2.%sdc%.se=(%p2.msh.sv% * 180) / 10
if %p2.msh.sr%==10   set p2.%sdc%.sd=7
if %p2.msh.sr%==11 set/a p2.%sdc%.sm=16
if %p2.msh.sr%==11 set/a p2.%sdc%.sc=(%p2.msh.sv% * 140) / 10
if %p2.msh.sr%==11 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==11   set p2.%sdc%.sd=6
if %p2.msh.sr%==12 set/a p2.%sdc%.sm=18
if %p2.msh.sr%==12 set/a p2.%sdc%.sc=(%p2.msh.sv% * 160) / 10
if %p2.msh.sr%==12 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==12   set p2.%sdc%.sd=5
if %p2.msh.sr%==13 set/a p2.%sdc%.sm=20
if %p2.msh.sr%==13 set/a p2.%sdc%.sc=(%p2.msh.sv% * 240) / 10
if %p2.msh.sr%==13 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==13   set p2.%sdc%.sd=4
if %p2.msh.sr%==14 set/a p2.%sdc%.sm=24
if %p2.msh.sr%==14 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==14 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==14   set p2.%sdc%.sd=3
if %p2.msh.sr%==15 set/a p2.%sdc%.sm=28
if %p2.msh.sr%==15 set/a p2.%sdc%.sc=(%p2.msh.sv% * 360) / 10
if %p2.msh.sr%==15 set/a p2.%sdc%.se=(%p2.msh.sv% * 300) / 10
if %p2.msh.sr%==15   set p2.%sdc%.sd=2
if %p2.msh.sr%==16 set/a p2.%sdc%.sm=34
if %p2.msh.sr%==16 set/a p2.%sdc%.sc=(%p2.msh.sv% * 480) / 10
if %p2.msh.sr%==16 set/a p2.%sdc%.se=(%p2.msh.sv% * 400) / 10
if %p2.msh.sr%==16   set p2.%sdc%.sd=1
if %p2.msh.sr%==17 set/a p2.%sdc%.sm=40
if %p2.msh.sr%==17 set/a p2.%sdc%.sc=0
if %p2.msh.sr%==17 set/a p2.%sdc%.se=0
if %p2.msh.sr%==17   set p2.%sdc%.sd=0

set sdc=hly

if %p1.hly.sr%==0 set/a p1.%sdc%.sm=0
if %p1.hly.sr%==0 set/a p1.%sdc%.sc=600
if %p1.hly.sr%==0 set/a p1.%sdc%.se=0
if %p1.hly.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.hly.sr%==1 set/a p1.%sdc%.sm=4
if %p1.hly.sr%==1 set/a p1.%sdc%.sc=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==1 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==1   set p1.%sdc%.sd=Novice
if %p1.hly.sr%==2 set/a p1.%sdc%.sm=5
if %p1.hly.sr%==2 set/a p1.%sdc%.sc=(%p1.hly.sv% * 30) / 10
if %p1.hly.sr%==2 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==2   set p1.%sdc%.sd=F
if %p1.hly.sr%==3 set/a p1.%sdc%.sm=6
if %p1.hly.sr%==3 set/a p1.%sdc%.sc=(%p1.hly.sv% * 40) / 10
if %p1.hly.sr%==3 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==3   set p1.%sdc%.sd=E
if %p1.hly.sr%==4 set/a p1.%sdc%.sm=7
if %p1.hly.sr%==4 set/a p1.%sdc%.sc=(%p1.hly.sv% * 50) / 10
if %p1.hly.sr%==4 set/a p1.%sdc%.se=(%p1.hly.sv% * 40) / 10
if %p1.hly.sr%==4   set p1.%sdc%.sd=D
if %p1.hly.sr%==5 set/a p1.%sdc%.sm=8
if %p1.hly.sr%==5 set/a p1.%sdc%.sc=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==5 set/a p1.%sdc%.se=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==5   set p1.%sdc%.sd=C
if %p1.hly.sr%==6 set/a p1.%sdc%.sm=9
if %p1.hly.sr%==6 set/a p1.%sdc%.sc=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==6 set/a p1.%sdc%.se=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==6   set p1.%sdc%.sd=B
if %p1.hly.sr%==7 set/a p1.%sdc%.sm=10
if %p1.hly.sr%==7 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==7 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==7   set p1.%sdc%.sd=A
if %p1.hly.sr%==8 set/a p1.%sdc%.sm=11
if %p1.hly.sr%==8 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==8 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==8   set p1.%sdc%.sd=9
if %p1.hly.sr%==9 set/a p1.%sdc%.sm=12
if %p1.hly.sr%==9 set/a p1.%sdc%.sc=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==9 set/a p1.%sdc%.se=(%p1.hly.sv% * 140) / 10
if %p1.hly.sr%==9   set p1.%sdc%.sd=8
if %p1.hly.sr%==10 set/a p1.%sdc%.sm=14
if %p1.hly.sr%==10 set/a p1.%sdc%.sc=(%p1.hly.sv% * 120) / 10
if %p1.hly.sr%==10 set/a p1.%sdc%.se=(%p1.hly.sv% * 180) / 10
if %p1.hly.sr%==10   set p1.%sdc%.sd=7
if %p1.hly.sr%==11 set/a p1.%sdc%.sm=16
if %p1.hly.sr%==11 set/a p1.%sdc%.sc=(%p1.hly.sv% * 140) / 10
if %p1.hly.sr%==11 set/a p1.%sdc%.se=(%p1..sv% * 200) / 10
if %p1.hly.sr%==11   set p1.%sdc%.sd=6
if %p1.hly.sr%==12 set/a p1.%sdc%.sm=18
if %p1.hly.sr%==12 set/a p1.%sdc%.sc=(%p1.hly.sv% * 160) / 10
if %p1.hly.sr%==12 set/a p1.%sdc%.se=(%p1.hly.sv% * 200) / 10
if %p1.hly.sr%==12   set p1.%sdc%.sd=5
if %p1.hly.sr%==13 set/a p1.%sdc%.sm=20
if %p1.hly.sr%==13 set/a p1.%sdc%.sc=(%p1.hly.sv% * 240) / 10
if %p1.hly.sr%==13 set/a p1.%sdc%.se=(%p1.hly.sv% * 200) / 10
if %p1.hly.sr%==13   set p1.%sdc%.sd=4
if %p1.hly.sr%==14 set/a p1.%sdc%.sm=24
if %p1.hly.sr%==14 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==14 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==14   set p1.%sdc%.sd=3
if %p1.hly.sr%==15 set/a p1.%sdc%.sm=28
if %p1.hly.sr%==15 set/a p1.%sdc%.sc=(%p1.hly.sv% * 360) / 10
if %p1.hly.sr%==15 set/a p1.%sdc%.se=(%p1.hly.sv% * 300) / 10
if %p1.hly.sr%==15   set p1.%sdc%.sd=2
if %p1.hly.sr%==16 set/a p1.%sdc%.sm=34
if %p1.hly.sr%==16 set/a p1.%sdc%.sc=(%p1.hly.sv% * 480) / 10
if %p1.hly.sr%==16 set/a p1.%sdc%.se=(%p1.hly.sv% * 400) / 10
if %p1.hly.sr%==16   set p1.%sdc%.sd=1
if %p1.hly.sr%==17 set/a p1.%sdc%.sm=40
if %p1.hly.sr%==17 set/a p1.%sdc%.sc=0
if %p1.hly.sr%==17 set/a p1.%sdc%.se=0
if %p1.hly.sr%==17   set p1.%sdc%.sd=0

if %p2.hly.sr%==0 set/a p2.%sdc%.sm=0
if %p2.hly.sr%==0 set/a p2.%sdc%.sc=600
if %p2.hly.sr%==0 set/a p2.%sdc%.se=0
if %p2.hly.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.hly.sr%==1 set/a p2.%sdc%.sm=4
if %p2.hly.sr%==1 set/a p2.%sdc%.sc=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==1 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==1   set p2.%sdc%.sd=Novice
if %p2.hly.sr%==2 set/a p2.%sdc%.sm=5
if %p2.hly.sr%==2 set/a p2.%sdc%.sc=(%p2.hly.sv% * 30) / 10
if %p2.hly.sr%==2 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==2   set p2.%sdc%.sd=F
if %p2.hly.sr%==3 set/a p2.%sdc%.sm=6
if %p2.hly.sr%==3 set/a p2.%sdc%.sc=(%p2.hly.sv% * 40) / 10
if %p2.hly.sr%==3 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==3   set p2.%sdc%.sd=E
if %p2.hly.sr%==4 set/a p2.%sdc%.sm=7
if %p2.hly.sr%==4 set/a p2.%sdc%.sc=(%p2.hly.sv% * 50) / 10
if %p2.hly.sr%==4 set/a p2.%sdc%.se=(%p2.hly.sv% * 40) / 10
if %p2.hly.sr%==4   set p2.%sdc%.sd=D
if %p2.hly.sr%==5 set/a p2.%sdc%.sm=8
if %p2.hly.sr%==5 set/a p2.%sdc%.sc=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==5 set/a p2.%sdc%.se=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==5   set p2.%sdc%.sd=C
if %p2.hly.sr%==6 set/a p2.%sdc%.sm=9
if %p2.hly.sr%==6 set/a p2.%sdc%.sc=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==6 set/a p2.%sdc%.se=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==6   set p2.%sdc%.sd=B
if %p2.hly.sr%==7 set/a p2.%sdc%.sm=10
if %p2.hly.sr%==7 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==7 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==7   set p2.%sdc%.sd=A
if %p2.hly.sr%==8 set/a p2.%sdc%.sm=11
if %p2.hly.sr%==8 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==8 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==8   set p2.%sdc%.sd=9
if %p2.hly.sr%==9 set/a p2.%sdc%.sm=12
if %p2.hly.sr%==9 set/a p2.%sdc%.sc=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==9 set/a p2.%sdc%.se=(%p2.hly.sv% * 140) / 10
if %p2.hly.sr%==9   set p2.%sdc%.sd=8
if %p2.hly.sr%==10 set/a p2.%sdc%.sm=14
if %p2.hly.sr%==10 set/a p2.%sdc%.sc=(%p2.hly.sv% * 120) / 10
if %p2.hly.sr%==10 set/a p2.%sdc%.se=(%p2.hly.sv% * 180) / 10
if %p2.hly.sr%==10   set p2.%sdc%.sd=7
if %p2.hly.sr%==11 set/a p2.%sdc%.sm=16
if %p2.hly.sr%==11 set/a p2.%sdc%.sc=(%p2.hly.sv% * 140) / 10
if %p2.hly.sr%==11 set/a p2.%sdc%.se=(%p2..sv% * 200) / 10
if %p2.hly.sr%==11   set p2.%sdc%.sd=6
if %p2.hly.sr%==12 set/a p2.%sdc%.sm=18
if %p2.hly.sr%==12 set/a p2.%sdc%.sc=(%p2.hly.sv% * 160) / 10
if %p2.hly.sr%==12 set/a p2.%sdc%.se=(%p2.hly.sv% * 200) / 10
if %p2.hly.sr%==12   set p2.%sdc%.sd=5
if %p2.hly.sr%==13 set/a p2.%sdc%.sm=20
if %p2.hly.sr%==13 set/a p2.%sdc%.sc=(%p2.hly.sv% * 240) / 10
if %p2.hly.sr%==13 set/a p2.%sdc%.se=(%p2.hly.sv% * 200) / 10
if %p2.hly.sr%==13   set p2.%sdc%.sd=4
if %p2.hly.sr%==14 set/a p2.%sdc%.sm=24
if %p2.hly.sr%==14 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==14 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==14   set p2.%sdc%.sd=3
if %p2.hly.sr%==15 set/a p2.%sdc%.sm=28
if %p2.hly.sr%==15 set/a p2.%sdc%.sc=(%p2.hly.sv% * 360) / 10
if %p2.hly.sr%==15 set/a p2.%sdc%.se=(%p2.hly.sv% * 300) / 10
if %p2.hly.sr%==15   set p2.%sdc%.sd=2
if %p2.hly.sr%==16 set/a p2.%sdc%.sm=34
if %p2.hly.sr%==16 set/a p2.%sdc%.sc=(%p2.hly.sv% * 480) / 10
if %p2.hly.sr%==16 set/a p2.%sdc%.se=(%p2.hly.sv% * 400) / 10
if %p2.hly.sr%==16   set p2.%sdc%.sd=1
if %p2.hly.sr%==17 set/a p2.%sdc%.sm=40
if %p2.hly.sr%==17 set/a p2.%sdc%.sc=0
if %p2.hly.sr%==17 set/a p2.%sdc%.se=0
if %p2.hly.sr%==17   set p2.%sdc%.sd=0

set sdc=gen
if %p1.gen.sr%==0 set/a p1.%sdc%.sm=0
if %p1.gen.sr%==0 set/a p1.%sdc%.sc=800
if %p1.gen.sr%==0 set/a p1.%sdc%.se=0
if %p1.gen.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.gen.sr%==1 set/a p1.%sdc%.sm=4
if %p1.gen.sr%==1 set/a p1.%sdc%.sc=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==1 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==1   set p1.%sdc%.sd=Novice
if %p1.gen.sr%==2 set/a p1.%sdc%.sm=5
if %p1.gen.sr%==2 set/a p1.%sdc%.sc=(%p1.gen.sv% * 30) / 10
if %p1.gen.sr%==2 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==2   set p1.%sdc%.sd=F
if %p1.gen.sr%==3 set/a p1.%sdc%.sm=6
if %p1.gen.sr%==3 set/a p1.%sdc%.sc=(%p1.gen.sv% * 40) / 10
if %p1.gen.sr%==3 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==3   set p1.%sdc%.sd=E
if %p1.gen.sr%==4 set/a p1.%sdc%.sm=7
if %p1.gen.sr%==4 set/a p1.%sdc%.sc=(%p1.gen.sv% * 50) / 10
if %p1.gen.sr%==4 set/a p1.%sdc%.se=(%p1.gen.sv% * 40) / 10
if %p1.gen.sr%==4   set p1.%sdc%.sd=D
if %p1.gen.sr%==5 set/a p1.%sdc%.sm=8
if %p1.gen.sr%==5 set/a p1.%sdc%.sc=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==5 set/a p1.%sdc%.se=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==5   set p1.%sdc%.sd=C
if %p1.gen.sr%==6 set/a p1.%sdc%.sm=9
if %p1.gen.sr%==6 set/a p1.%sdc%.sc=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==6 set/a p1.%sdc%.se=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==6   set p1.%sdc%.sd=B
if %p1.gen.sr%==7 set/a p1.%sdc%.sm=10
if %p1.gen.sr%==7 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==7 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==7   set p1.%sdc%.sd=A
if %p1.gen.sr%==8 set/a p1.%sdc%.sm=11
if %p1.gen.sr%==8 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==8 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==8   set p1.%sdc%.sd=9
if %p1.gen.sr%==9 set/a p1.%sdc%.sm=12
if %p1.gen.sr%==9 set/a p1.%sdc%.sc=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==9 set/a p1.%sdc%.se=(%p1.gen.sv% * 140) / 10
if %p1.gen.sr%==9   set p1.%sdc%.sd=8
if %p1.gen.sr%==10 set/a p1.%sdc%.sm=14
if %p1.gen.sr%==10 set/a p1.%sdc%.sc=(%p1.gen.sv% * 120) / 10
if %p1.gen.sr%==10 set/a p1.%sdc%.se=(%p1.gen.sv% * 180) / 10
if %p1.gen.sr%==10   set p1.%sdc%.sd=7
if %p1.gen.sr%==11 set/a p1.%sdc%.sm=16
if %p1.gen.sr%==11 set/a p1.%sdc%.sc=(%p1.gen.sv% * 140) / 10
if %p1.gen.sr%==11 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==11   set p1.%sdc%.sd=6
if %p1.gen.sr%==12 set/a p1.%sdc%.sm=18
if %p1.gen.sr%==12 set/a p1.%sdc%.sc=(%p1.gen.sv% * 160) / 10
if %p1.gen.sr%==12 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==12   set p1.%sdc%.sd=5
if %p1.gen.sr%==13 set/a p1.%sdc%.sm=20
if %p1.gen.sr%==13 set/a p1.%sdc%.sc=(%p1.gen.sv% * 240) / 10
if %p1.gen.sr%==13 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==13   set p1.%sdc%.sd=4
if %p1.gen.sr%==14 set/a p1.%sdc%.sm=24
if %p1.gen.sr%==14 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==14 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==14   set p1.%sdc%.sd=3
if %p1.gen.sr%==15 set/a p1.%sdc%.sm=28
if %p1.gen.sr%==15 set/a p1.%sdc%.sc=(%p1.gen.sv% * 360) / 10
if %p1.gen.sr%==15 set/a p1.%sdc%.se=(%p1.gen.sv% * 300) / 10
if %p1.gen.sr%==15   set p1.%sdc%.sd=2
if %p1.gen.sr%==16 set/a p1.%sdc%.sm=34
if %p1.gen.sr%==16 set/a p1.%sdc%.sc=(%p1.gen.sv% * 480) / 10
if %p1.gen.sr%==16 set/a p1.%sdc%.se=(%p1.gen.sv% * 400) / 10
if %p1.gen.sr%==16   set p1.%sdc%.sd=1
if %p1.gen.sr%==17 set/a p1.%sdc%.sm=40
if %p1.gen.sr%==17 set/a p1.%sdc%.sc=0
if %p1.gen.sr%==17 set/a p1.%sdc%.se=0
if %p1.gen.sr%==17   set p1.%sdc%.sd=0
::p2
if %p2.gen.sr%==0 set/a p2.%sdc%.sm=0
if %p2.gen.sr%==0 set/a p2.%sdc%.sc=800
if %p2.gen.sr%==0 set/a p2.%sdc%.se=0
if %p2.gen.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.gen.sr%==1 set/a p2.%sdc%.sm=4
if %p2.gen.sr%==1 set/a p2.%sdc%.sc=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==1 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==1   set p2.%sdc%.sd=Novice
if %p2.gen.sr%==2 set/a p2.%sdc%.sm=5
if %p2.gen.sr%==2 set/a p2.%sdc%.sc=(%p2.gen.sv% * 30) / 10
if %p2.gen.sr%==2 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==2   set p2.%sdc%.sd=F
if %p2.gen.sr%==3 set/a p2.%sdc%.sm=6
if %p2.gen.sr%==3 set/a p2.%sdc%.sc=(%p2.gen.sv% * 40) / 10
if %p2.gen.sr%==3 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==3   set p2.%sdc%.sd=E
if %p2.gen.sr%==4 set/a p2.%sdc%.sm=7
if %p2.gen.sr%==4 set/a p2.%sdc%.sc=(%p2.gen.sv% * 50) / 10
if %p2.gen.sr%==4 set/a p2.%sdc%.se=(%p2.gen.sv% * 40) / 10
if %p2.gen.sr%==4   set p2.%sdc%.sd=D
if %p2.gen.sr%==5 set/a p2.%sdc%.sm=8
if %p2.gen.sr%==5 set/a p2.%sdc%.sc=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==5 set/a p2.%sdc%.se=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==5   set p2.%sdc%.sd=C
if %p2.gen.sr%==6 set/a p2.%sdc%.sm=9
if %p2.gen.sr%==6 set/a p2.%sdc%.sc=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==6 set/a p2.%sdc%.se=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==6   set p2.%sdc%.sd=B
if %p2.gen.sr%==7 set/a p2.%sdc%.sm=10
if %p2.gen.sr%==7 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==7 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==7   set p2.%sdc%.sd=A
if %p2.gen.sr%==8 set/a p2.%sdc%.sm=11
if %p2.gen.sr%==8 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==8 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==8   set p2.%sdc%.sd=9
if %p2.gen.sr%==9 set/a p2.%sdc%.sm=12
if %p2.gen.sr%==9 set/a p2.%sdc%.sc=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==9 set/a p2.%sdc%.se=(%p2.gen.sv% * 140) / 10
if %p2.gen.sr%==9   set p2.%sdc%.sd=8
if %p2.gen.sr%==10 set/a p2.%sdc%.sm=14
if %p2.gen.sr%==10 set/a p2.%sdc%.sc=(%p2.gen.sv% * 120) / 10
if %p2.gen.sr%==10 set/a p2.%sdc%.se=(%p2.gen.sv% * 180) / 10
if %p2.gen.sr%==10   set p2.%sdc%.sd=7
if %p2.gen.sr%==11 set/a p2.%sdc%.sm=16
if %p2.gen.sr%==11 set/a p2.%sdc%.sc=(%p2.gen.sv% * 140) / 10
if %p2.gen.sr%==11 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==11   set p2.%sdc%.sd=6
if %p2.gen.sr%==12 set/a p2.%sdc%.sm=18
if %p2.gen.sr%==12 set/a p2.%sdc%.sc=(%p2.gen.sv% * 160) / 10
if %p2.gen.sr%==12 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==12   set p2.%sdc%.sd=5
if %p2.gen.sr%==13 set/a p2.%sdc%.sm=20
if %p2.gen.sr%==13 set/a p2.%sdc%.sc=(%p2.gen.sv% * 240) / 10
if %p2.gen.sr%==13 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==13   set p2.%sdc%.sd=4
if %p2.gen.sr%==14 set/a p2.%sdc%.sm=24
if %p2.gen.sr%==14 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==14 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==14   set p2.%sdc%.sd=3
if %p2.gen.sr%==15 set/a p2.%sdc%.sm=28
if %p2.gen.sr%==15 set/a p2.%sdc%.sc=(%p2.gen.sv% * 360) / 10
if %p2.gen.sr%==15 set/a p2.%sdc%.se=(%p2.gen.sv% * 300) / 10
if %p2.gen.sr%==15   set p2.%sdc%.sd=2
if %p2.gen.sr%==16 set/a p2.%sdc%.sm=34
if %p2.gen.sr%==16 set/a p2.%sdc%.sc=(%p2.gen.sv% * 480) / 10
if %p2.gen.sr%==16 set/a p2.%sdc%.se=(%p2.gen.sv% * 400) / 10
if %p2.gen.sr%==16   set p2.%sdc%.sd=1
if %p2.gen.sr%==17 set/a p2.%sdc%.sm=40
if %p2.gen.sr%==17 set/a p2.%sdc%.sc=0
if %p2.gen.sr%==17 set/a p2.%sdc%.se=0
if %p2.gen.sr%==17   set p2.%sdc%.sd=0

set sdc=llc
if %p1.llc.sr%==0 set/a p1.%sdc%.sm=0
if %p1.llc.sr%==0 set/a p1.%sdc%.sc=0
if %p1.llc.sr%==0 set/a p1.%sdc%.se=0
if %p1.llc.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.llc.sr%==1 set/a p1.%sdc%.sm=4
if %p1.llc.sr%==1 set/a p1.%sdc%.sc=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==1 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==1   set p1.%sdc%.sd=Novice
if %p1.llc.sr%==2 set/a p1.%sdc%.sm=5
if %p1.llc.sr%==2 set/a p1.%sdc%.sc=(%p1.llc.sv% * 30) / 10
if %p1.llc.sr%==2 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==2   set p1.%sdc%.sd=F
if %p1.llc.sr%==3 set/a p1.%sdc%.sm=6
if %p1.llc.sr%==3 set/a p1.%sdc%.sc=(%p1.llc.sv% * 40) / 10
if %p1.llc.sr%==3 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==3   set p1.%sdc%.sd=E
if %p1.llc.sr%==4 set/a p1.%sdc%.sm=7
if %p1.llc.sr%==4 set/a p1.%sdc%.sc=(%p1.llc.sv% * 50) / 10
if %p1.llc.sr%==4 set/a p1.%sdc%.se=(%p1.llc.sv% * 40) / 10
if %p1.llc.sr%==4   set p1.%sdc%.sd=D
if %p1.llc.sr%==5 set/a p1.%sdc%.sm=8
if %p1.llc.sr%==5 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==5 set/a p1.%sdc%.se=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==5   set p1.%sdc%.sd=C
if %p1.llc.sr%==6 set/a p1.%sdc%.sm=9
if %p1.llc.sr%==6 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==6 set/a p1.%sdc%.se=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==6   set p1.%sdc%.sd=B
if %p1.llc.sr%==7 set/a p1.%sdc%.sm=10
if %p1.llc.sr%==7 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==7 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==7   set p1.%sdc%.sd=A
if %p1.llc.sr%==8 set/a p1.%sdc%.sm=11
if %p1.llc.sr%==8 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==8 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==8   set p1.%sdc%.sd=9
if %p1.llc.sr%==9 set/a p1.%sdc%.sm=12
if %p1.llc.sr%==9 set/a p1.%sdc%.sc=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==9 set/a p1.%sdc%.se=(%p1.llc.sv% * 140) / 10
if %p1.llc.sr%==9   set p1.%sdc%.sd=8
if %p1.llc.sr%==10 set/a p1.%sdc%.sm=14
if %p1.llc.sr%==10 set/a p1.%sdc%.sc=(%p1.llc.sv% * 120) / 10
if %p1.llc.sr%==10 set/a p1.%sdc%.se=(%p1.llc.sv% * 180) / 10
if %p1.llc.sr%==10   set p1.%sdc%.sd=7
if %p1.llc.sr%==11 set/a p1.%sdc%.sm=16
if %p1.llc.sr%==11 set/a p1.%sdc%.sc=(%p1.llc.sv% * 140) / 10
if %p1.llc.sr%==11 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==11   set p1.%sdc%.sd=6
if %p1.llc.sr%==12 set/a p1.%sdc%.sm=18
if %p1.llc.sr%==12 set/a p1.%sdc%.sc=(%p1.llc.sv% * 160) / 10
if %p1.llc.sr%==12 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==12   set p1.%sdc%.sd=5
if %p1.llc.sr%==13 set/a p1.%sdc%.sm=20
if %p1.llc.sr%==13 set/a p1.%sdc%.sc=(%p1.llc.sv% * 240) / 10
if %p1.llc.sr%==13 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==13   set p1.%sdc%.sd=4
if %p1.llc.sr%==14 set/a p1.%sdc%.sm=24
if %p1.llc.sr%==14 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==14 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==14   set p1.%sdc%.sd=3
if %p1.llc.sr%==15 set/a p1.%sdc%.sm=28
if %p1.llc.sr%==15 set/a p1.%sdc%.sc=(%p1.llc.sv% * 360) / 10
if %p1.llc.sr%==15 set/a p1.%sdc%.se=(%p1.llc.sv% * 300) / 10
if %p1.llc.sr%==15   set p1.%sdc%.sd=2
if %p1.llc.sr%==16 set/a p1.%sdc%.sm=34
if %p1.llc.sr%==16 set/a p1.%sdc%.sc=(%p1.llc.sv% * 480) / 10
if %p1.llc.sr%==16 set/a p1.%sdc%.se=(%p1.llc.sv% * 400) / 10
if %p1.llc.sr%==16   set p1.%sdc%.sd=1
if %p1.llc.sr%==17 set/a p1.%sdc%.sm=40
if %p1.llc.sr%==17 set/a p1.%sdc%.sc=0
if %p1.llc.sr%==17 set/a p1.%sdc%.se=0
if %p1.llc.sr%==17   set p1.%sdc%.sd=0
::p2
if %p2.llc.sr%==0 set/a p2.%sdc%.sm=0
if %p2.llc.sr%==0 set/a p2.%sdc%.sc=0
if %p2.llc.sr%==0 set/a p2.%sdc%.se=0
if %p2.llc.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.llc.sr%==1 set/a p2.%sdc%.sm=4
if %p2.llc.sr%==1 set/a p2.%sdc%.sc=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==1 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==1   set p2.%sdc%.sd=Novice
if %p2.llc.sr%==2 set/a p2.%sdc%.sm=5
if %p2.llc.sr%==2 set/a p2.%sdc%.sc=(%p1.llc.sv% * 30) / 10
if %p2.llc.sr%==2 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==2   set p2.%sdc%.sd=F
if %p2.llc.sr%==3 set/a p2.%sdc%.sm=6
if %p2.llc.sr%==3 set/a p2.%sdc%.sc=(%p1.llc.sv% * 40) / 10
if %p2.llc.sr%==3 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==3   set p2.%sdc%.sd=E
if %p2.llc.sr%==4 set/a p.%sdc%.sm=7
if %p2.llc.sr%==4 set/a p1.%sdc%.sc=(%p1.llc.sv% * 50) / 10
if %p2.llc.sr%==4 set/a p1.%sdc%.se=(%p1.llc.sv% * 40) / 10
if %p2.llc.sr%==4   set p1.%sdc%.sd=D
if %p2.llc.sr%==5 set/a p1.%sdc%.sm=8
if %p2.llc.sr%==5 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==5 set/a p1.%sdc%.se=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==5   set p1.%sdc%.sd=C
if %p2.llc.sr%==6 set/a p1.%sdc%.sm=9
if %p2.llc.sr%==6 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==6 set/a p1.%sdc%.se=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==6   set p1.%sdc%.sd=B
if %p2.llc.sr%==7 set/a p1.%sdc%.sm=10
if %p2.llc.sr%==7 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==7 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==7   set p1.%sdc%.sd=A
if %p2.llc.sr%==8 set/a p1.%sdc%.sm=11
if %p2.llc.sr%==8 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==8 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==8   set p1.%sdc%.sd=9
if %p2.llc.sr%==9 set/a p1.%sdc%.sm=12
if %p2.llc.sr%==9 set/a p1.%sdc%.sc=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==9 set/a p1.%sdc%.se=(%p1.llc.sv% * 140) / 10
if %p2.llc.sr%==9   set p1.%sdc%.sd=8
if %p2.llc.sr%==10 set/a p1.%sdc%.sm=14
if %p2.llc.sr%==10 set/a p1.%sdc%.sc=(%p1.llc.sv% * 120) / 10
if %p2.llc.sr%==10 set/a p1.%sdc%.se=(%p1.llc.sv% * 180) / 10
if %p2.llc.sr%==10   set p1.%sdc%.sd=7
if %p2.llc.sr%==11 set/a p1.%sdc%.sm=16
if %p2.llc.sr%==11 set/a p1.%sdc%.sc=(%p1.llc.sv% * 140) / 10
if %p2.llc.sr%==11 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==11   set p1.%sdc%.sd=6
if %p2.llc.sr%==12 set/a p1.%sdc%.sm=18
if %p2.llc.sr%==12 set/a p1.%sdc%.sc=(%p1.llc.sv% * 160) / 10
if %p2.llc.sr%==12 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==12   set p1.%sdc%.sd=5
if %p2.llc.sr%==13 set/a p1.%sdc%.sm=20
if %p2.llc.sr%==13 set/a p1.%sdc%.sc=(%p1.llc.sv% * 240) / 10
if %p2.llc.sr%==13 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==13   set p1.%sdc%.sd=4
if %p2.llc.sr%==14 set/a p1.%sdc%.sm=24
if %p2.llc.sr%==14 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==14 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==14   set p1.%sdc%.sd=3
if %p2.llc.sr%==15 set/a p1.%sdc%.sm=28
if %p2.llc.sr%==15 set/a p1.%sdc%.sc=(%p1.llc.sv% * 360) / 10
if %p2.llc.sr%==15 set/a p1.%sdc%.se=(%p1.llc.sv% * 300) / 10
if %p2.llc.sr%==15   set p1.%sdc%.sd=2
if %p2.llc.sr%==16 set/a p1.%sdc%.sm=34
if %p2.llc.sr%==16 set/a p1.%sdc%.sc=(%p1.llc.sv% * 480) / 10
if %p2.llc.sr%==16 set/a p1.%sdc%.se=(%p1.llc.sv% * 400) / 10
if %p2.llc.sr%==16   set p1.%sdc%.sd=1
if %p2.llc.sr%==17 set/a p1.%sdc%.sm=40
if %p2.llc.sr%==17 set/a p1.%sdc%.sc=0
if %p2.llc.sr%==17 set/a p1.%sdc%.se=0
if %p2.llc.sr%==17   set p1.%sdc%.sd=0

 
 
if %p1.lbr.sr%==0 set/a p1.lbr.sm=0 
if %p1.lbr.sr%==0 set/a p1.lbr.sc=200 
if %p1.lbr.sr%==0 set/a p1.lbr.se=0 
if %p1.lbr.sr%==0   set p1.lbr.sd=Not Learnt 
if %p1.lbr.sr%==1 set/a p1.lbr.sm=4 
if %p1.lbr.sr%==1 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==1 set/a p1.lbr.se=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==1 set   p1.lbr.sd=Novice 
if %p1.lbr.sr%==2 set/a p1.lbr.sm=5 
if %p1.lbr.sr%==2 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==2 set/a p1.lbr.se=(%p1.lbr.sv% * 30) / 10 
if %p1.lbr.sr%==2 set   p1.lbr.sd=F 
if %p1.lbr.sr%==3 set/a p1.lbr.sm=6 
if %p1.lbr.sr%==3 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==3 set/a p1.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p1.lbr.sr%==3 set   p1.lbr.sd=E 
if %p1.lbr.sr%==4 set/a p1.lbr.sm=7 
if %p1.lbr.sr%==4 set/a p1.lbr.sc=(%p1.lbr.sv% * 50) / 10 
if %p1.lbr.sr%==4 set/a p1.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p1.lbr.sr%==4 set   p1.lbr.sd=D 
if %p1.lbr.sr%==5 set/a p1.lbr.sm=8 
if %p1.lbr.sr%==5 set/a p1.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==5 set/a p1.lbr.se=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==5 set   p1.lbr.sd=C 
if %p1.lbr.sr%==6 set/a p1.lbr.sm=9 
if %p1.lbr.sr%==6 set/a p1.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==6 set/a p1.lbr.se=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==6 set   p1.lbr.sd=B 
if %p1.lbr.sr%==7 set/a p1.lbr.sm=10 
if %p1.lbr.sr%==7 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==7 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==7 set   p1.lbr.sd=A 
if %p1.lbr.sr%==8 set/a p1.lbr.sm=11 
if %p1.lbr.sr%==8 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==8 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==8 set   p1.lbr.sd=9 
if %p1.lbr.sr%==9 set/a p1.lbr.sm=12 
if %p1.lbr.sr%==9 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==9 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==9 set   p1.lbr.sd=8 
if %p1.lbr.sr%==10 set/a p1.lbr.sm=14 
if %p1.lbr.sr%==10 set/a p1.lbr.sc=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==10 set/a p1.lbr.se=(%p1.lbr.sv% * 140) / 10 
if %p1.lbr.sr%==10 set   p1.lbr.sd=7 
if %p1.lbr.sr%==11 set/a p1.lbr.sm=16 
if %p1.lbr.sr%==11 set/a p1.lbr.sc=(%p1.lbr.sv% * 120) / 10 
if %p1.lbr.sr%==11 set/a p1.lbr.se=(%p1.lbr.sv% * 180) / 10 
if %p1.lbr.sr%==11 set   p1.lbr.sd=6 
if %p1.lbr.sr%==12 set/a p1.lbr.sm=18 
if %p1.lbr.sr%==12 set/a p1.lbr.sc=(%p1.lbr.sv% * 140) / 10 
if %p1.lbr.sr%==12 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==12 set   p1.lbr.sd=5 
if %p1.lbr.sr%==13 set/a p1.lbr.sm=20 
if %p1.lbr.sr%==13 set/a p1.lbr.sc=(%p1.lbr.sv% * 160) / 10 
if %p1.lbr.sr%==13 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==13 set   p1.lbr.sd=4 
if %p1.lbr.sr%==14 set/a p1.lbr.sm=24 
if %p1.lbr.sr%==14 set/a p1.lbr.sc=(%p1.lbr.sv% * 240) / 10 
if %p1.lbr.sr%==14 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==14 set   p1.lbr.sd=3 
if %p1.lbr.sr%==15 set/a p1.lbr.sm=28 
if %p1.lbr.sr%==15 set/a p1.lbr.sc=(%p1.lbr.sv% * 360) / 10 
if %p1.lbr.sr%==15 set/a p1.lbr.se=(%p1.lbr.sv% * 300) / 10 
if %p1.lbr.sr%==15 set   p1.lbr.sd=2 
if %p1.lbr.sr%==16 set/a p1.lbr.sm=34 
if %p1.lbr.sr%==16 set/a p1.lbr.sc=(%p1.lbr.sv% * 480) / 10 
if %p1.lbr.sr%==16 set/a p1.lbr.se=(%p1.lbr.sv% * 400) / 10 
if %p1.lbr.sr%==16 set   p1.lbr.sd=1 
if %p1.lbr.sr%==17 set/a p1.lbr.sm=40 
if %p1.lbr.sr%==17 set/a p1.lbr.sc=0 
if %p1.lbr.sr%==17 set/a p1.lbr.se=0 
if %p1.lbr.sr%==17   set p1.lbr.sd=0 
 
 
if %p2.lbr.sr%==0 set/a p2.lbr.sm=0 
if %p2.lbr.sr%==0 set/a p2.lbr.sc=200
if %p2.lbr.sr%==0 set/a p2.lbr.se=0 
if %p2.lbr.sr%==0   set p2.lbr.sd=Not Learnt 
if %p2.lbr.sr%==1 set/a p2.lbr.sm=4 
if %p2.lbr.sr%==1 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==1 set/a p2.lbr.se=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==1 set   p2.lbr.sd=Novice 
if %p2.lbr.sr%==2 set/a p2.lbr.sm=5 
if %p2.lbr.sr%==2 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==2 set/a p2.lbr.se=(%p1.lbr.sv% * 30) / 10 
if %p2.lbr.sr%==2 set   p2.lbr.sd=F 
if %p2.lbr.sr%==3 set/a p2.lbr.sm=6 
if %p2.lbr.sr%==3 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==3 set/a p2.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p2.lbr.sr%==3 set   p2.lbr.sd=E 
if %p2.lbr.sr%==4 set/a p2.lbr.sm=7 
if %p2.lbr.sr%==4 set/a p2.lbr.sc=(%p1.lbr.sv% * 50) / 10 
if %p2.lbr.sr%==4 set/a p2.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p2.lbr.sr%==4 set   p2.lbr.sd=D 
if %p2.lbr.sr%==5 set/a p2.lbr.sm=8 
if %p2.lbr.sr%==5 set/a p2.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==5 set/a p2.lbr.se=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==5 set   p2.lbr.sd=C 
if %p2.lbr.sr%==6 set/a p2.lbr.sm=9 
if %p2.lbr.sr%==6 set/a p2.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==6 set/a p2.lbr.se=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==6 set   p2.lbr.sd=B 
if %p2.lbr.sr%==7 set/a p2.lbr.sm=10 
if %p2.lbr.sr%==7 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==7 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==7 set   p2.lbr.sd=A 
if %p2.lbr.sr%==8 set/a p2.lbr.sm=11 
if %p2.lbr.sr%==8 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==8 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==8 set   p2.lbr.sd=9 
if %p2.lbr.sr%==9 set/a p2.lbr.sm=12 
if %p2.lbr.sr%==9 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==9 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==9 set   p2.lbr.sd=8 
if %p2.lbr.sr%==10 set/a p2.lbr.sm=14 
if %p2.lbr.sr%==10 set/a p2.lbr.sc=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==10 set/a p2.lbr.se=(%p1.lbr.sv% * 140) / 10 
if %p2.lbr.sr%==10 set   p2.lbr.sd=7 
if %p2.lbr.sr%==11 set/a p2.lbr.sm=16 
if %p2.lbr.sr%==11 set/a p2.lbr.sc=(%p1.lbr.sv% * 120) / 10 
if %p2.lbr.sr%==11 set/a p2.lbr.se=(%p1.lbr.sv% * 180) / 10 
if %p2.lbr.sr%==11 set   p2.lbr.sd=6 
if %p2.lbr.sr%==12 set/a p2.lbr.sm=18 
if %p2.lbr.sr%==12 set/a p2.lbr.sc=(%p1.lbr.sv% * 140) / 10 
if %p2.lbr.sr%==12 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==12 set   p2.lbr.sd=5 
if %p2.lbr.sr%==13 set/a p2.lbr.sm=20 
if %p2.lbr.sr%==13 set/a p2.lbr.sc=(%p1.lbr.sv% * 160) / 10 
if %p2.lbr.sr%==13 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==13 set   p2.lbr.sd=4 
if %p2.lbr.sr%==14 set/a p2.lbr.sm=24 
if %p2.lbr.sr%==14 set/a p2.lbr.sc=(%p1.lbr.sv% * 240) / 10 
if %p2.lbr.sr%==14 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==14 set   p2.lbr.sd=3 
if %p2.lbr.sr%==15 set/a p2.lbr.sm=28 
if %p2.lbr.sr%==15 set/a p2.lbr.sc=(%p1.lbr.sv% * 360) / 10 
if %p2.lbr.sr%==15 set/a p2.lbr.se=(%p1.lbr.sv% * 300) / 10 
if %p2.lbr.sr%==15 set   p2.lbr.sd=2 
if %p2.lbr.sr%==16 set/a p2.lbr.sm=34 
if %p2.lbr.sr%==16 set/a p2.lbr.sc=(%p1.lbr.sv% * 480) / 10 
if %p2.lbr.sr%==16 set/a p2.lbr.se=(%p1.lbr.sv% * 400) / 10 
if %p2.lbr.sr%==16 set   p2.lbr.sd=1 
if %p2.lbr.sr%==17 set/a p2.lbr.sm=40 
if %p2.lbr.sr%==17 set/a p2.lbr.sc=0 
if %p2.lbr.sr%==17 set/a p2.lbr.se=0 
if %p2.lbr.sr%==17   set p2.lbr.sd=0 
 
 
if %p1.llb.sr%==0 set/a p1.llb.sm=0 
if %p1.llb.sr%==0 set/a p1.llb.sc=700
if %p1.llb.sr%==0 set/a p1.llb.se=0 
if %p1.llb.sr%==0   set p1.llb.sd=Not Learnt 
if %p1.llb.sr%==1 set/a p1.llb.sm=4 
if %p1.llb.sr%==1 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==1 set/a p1.llb.se=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==1 set   p1.llb.sd=Novice 
if %p1.llb.sr%==2 set/a p1.llb.sm=5 
if %p1.llb.sr%==2 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==2 set/a p1.llb.se=(%p1.llb.sv% * 30) / 10 
if %p1.llb.sr%==2 set   p1.llb.sd=F 
if %p1.llb.sr%==3 set/a p1.llb.sm=6 
if %p1.llb.sr%==3 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==3 set/a p1.llb.se=(%p1.llb.sv% * 40) / 10 
if %p1.llb.sr%==3 set   p1.llb.sd=E 
if %p1.llb.sr%==4 set/a p1.llb.sm=7 
if %p1.llb.sr%==4 set/a p1.llb.sc=(%p1.llb.sv% * 50) / 10 
if %p1.llb.sr%==4 set/a p1.llb.se=(%p1.llb.sv% * 40) / 10 
if %p1.llb.sr%==4 set   p1.llb.sd=D 
if %p1.llb.sr%==5 set/a p1.llb.sm=8 
if %p1.llb.sr%==5 set/a p1.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==5 set/a p1.llb.se=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==5 set   p1.llb.sd=C 
if %p1.llb.sr%==6 set/a p1.llb.sm=9 
if %p1.llb.sr%==6 set/a p1.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==6 set/a p1.llb.se=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==6 set   p1.llb.sd=B 
if %p1.llb.sr%==7 set/a p1.llb.sm=10 
if %p1.llb.sr%==7 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==7 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==7 set   p1.llb.sd=A 
if %p1.llb.sr%==8 set/a p1.llb.sm=11 
if %p1.llb.sr%==8 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==8 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==8 set   p1.llb.sd=9 
if %p1.llb.sr%==9 set/a p1.llb.sm=12 
if %p1.llb.sr%==9 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==9 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==9 set   p1.llb.sd=8 
if %p1.llb.sr%==10 set/a p1.llb.sm=14 
if %p1.llb.sr%==10 set/a p1.llb.sc=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==10 set/a p1.llb.se=(%p1.llb.sv% * 140) / 10 
if %p1.llb.sr%==10 set   p1.llb.sd=7 
if %p1.llb.sr%==11 set/a p1.llb.sm=16 
if %p1.llb.sr%==11 set/a p1.llb.sc=(%p1.llb.sv% * 120) / 10 
if %p1.llb.sr%==11 set/a p1.llb.se=(%p1.llb.sv% * 180) / 10 
if %p1.llb.sr%==11 set   p1.llb.sd=6 
if %p1.llb.sr%==12 set/a p1.llb.sm=18 
if %p1.llb.sr%==12 set/a p1.llb.sc=(%p1.llb.sv% * 140) / 10 
if %p1.llb.sr%==12 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==12 set   p1.llb.sd=5 
if %p1.llb.sr%==13 set/a p1.llb.sm=20 
if %p1.llb.sr%==13 set/a p1.llb.sc=(%p1.llb.sv% * 160) / 10 
if %p1.llb.sr%==13 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==13 set   p1.llb.sd=4 
if %p1.llb.sr%==14 set/a p1.llb.sm=24 
if %p1.llb.sr%==14 set/a p1.llb.sc=(%p1.llb.sv% * 240) / 10 
if %p1.llb.sr%==14 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==14 set   p1.llb.sd=3 
if %p1.llb.sr%==15 set/a p1.llb.sm=28 
if %p1.llb.sr%==15 set/a p1.llb.sc=(%p1.llb.sv% * 360) / 10 
if %p1.llb.sr%==15 set/a p1.llb.se=(%p1.llb.sv% * 300) / 10 
if %p1.llb.sr%==15 set   p1.llb.sd=2 
if %p1.llb.sr%==16 set/a p1.llb.sm=34 
if %p1.llb.sr%==16 set/a p1.llb.sc=(%p1.llb.sv% * 480) / 10 
if %p1.llb.sr%==16 set/a p1.llb.se=(%p1.llb.sv% * 400) / 10 
if %p1.llb.sr%==16 set   p1.llb.sd=1 
if %p1.llb.sr%==17 set/a p1.llb.sm=40 
if %p1.llb.sr%==17 set/a p1.llb.sc=0 
if %p1.llb.sr%==17 set/a p1.llb.se=0 
if %p1.llb.sr%==17   set p1.llb.sd=0 
 
 
if %p2.llb.sr%==0 set/a p2.llb.sm=0 
if %p2.llb.sr%==0 set/a p2.llb.sc=700
if %p2.llb.sr%==0 set/a p2.llb.se=0 
if %p2.llb.sr%==0   set p2.llb.sd=Not Learnt 
if %p2.llb.sr%==1 set/a p2.llb.sm=4 
if %p2.llb.sr%==1 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==1 set/a p2.llb.se=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==1 set   p2.llb.sd=Novice 
if %p2.llb.sr%==2 set/a p2.llb.sm=5 
if %p2.llb.sr%==2 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==2 set/a p2.llb.se=(%p1.llb.sv% * 30) / 10 
if %p2.llb.sr%==2 set   p2.llb.sd=F 
if %p2.llb.sr%==3 set/a p2.llb.sm=6 
if %p2.llb.sr%==3 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==3 set/a p2.llb.se=(%p1.llb.sv% * 40) / 10 
if %p2.llb.sr%==3 set   p2.llb.sd=E 
if %p2.llb.sr%==4 set/a p2.llb.sm=7 
if %p2.llb.sr%==4 set/a p2.llb.sc=(%p1.llb.sv% * 50) / 10 
if %p2.llb.sr%==4 set/a p2.llb.se=(%p1.llb.sv% * 40) / 10 
if %p2.llb.sr%==4 set   p2.llb.sd=D 
if %p2.llb.sr%==5 set/a p2.llb.sm=8 
if %p2.llb.sr%==5 set/a p2.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==5 set/a p2.llb.se=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==5 set   p2.llb.sd=C 
if %p2.llb.sr%==6 set/a p2.llb.sm=9 
if %p2.llb.sr%==6 set/a p2.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==6 set/a p2.llb.se=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==6 set   p2.llb.sd=B 
if %p2.llb.sr%==7 set/a p2.llb.sm=10 
if %p2.llb.sr%==7 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==7 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==7 set   p2.llb.sd=A 
if %p2.llb.sr%==8 set/a p2.llb.sm=11 
if %p2.llb.sr%==8 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==8 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==8 set   p2.llb.sd=9 
if %p2.llb.sr%==9 set/a p2.llb.sm=12 
if %p2.llb.sr%==9 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==9 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==9 set   p2.llb.sd=8 
if %p2.llb.sr%==10 set/a p2.llb.sm=14 
if %p2.llb.sr%==10 set/a p2.llb.sc=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==10 set/a p2.llb.se=(%p1.llb.sv% * 140) / 10 
if %p2.llb.sr%==10 set   p2.llb.sd=7 
if %p2.llb.sr%==11 set/a p2.llb.sm=16 
if %p2.llb.sr%==11 set/a p2.llb.sc=(%p1.llb.sv% * 120) / 10 
if %p2.llb.sr%==11 set/a p2.llb.se=(%p1.llb.sv% * 180) / 10 
if %p2.llb.sr%==11 set   p2.llb.sd=6 
if %p2.llb.sr%==12 set/a p2.llb.sm=18 
if %p2.llb.sr%==12 set/a p2.llb.sc=(%p1.llb.sv% * 140) / 10 
if %p2.llb.sr%==12 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==12 set   p2.llb.sd=5 
if %p2.llb.sr%==13 set/a p2.llb.sm=20 
if %p2.llb.sr%==13 set/a p2.llb.sc=(%p1.llb.sv% * 160) / 10 
if %p2.llb.sr%==13 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==13 set   p2.llb.sd=4 
if %p2.llb.sr%==14 set/a p2.llb.sm=24 
if %p2.llb.sr%==14 set/a p2.llb.sc=(%p1.llb.sv% * 240) / 10 
if %p2.llb.sr%==14 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==14 set   p2.llb.sd=3 
if %p2.llb.sr%==15 set/a p2.llb.sm=28 
if %p2.llb.sr%==15 set/a p2.llb.sc=(%p1.llb.sv% * 360) / 10 
if %p2.llb.sr%==15 set/a p2.llb.se=(%p1.llb.sv% * 300) / 10 
if %p2.llb.sr%==15 set   p2.llb.sd=2 
if %p2.llb.sr%==16 set/a p2.llb.sm=34 
if %p2.llb.sr%==16 set/a p2.llb.sc=(%p1.llb.sv% * 480) / 10 
if %p2.llb.sr%==16 set/a p2.llb.se=(%p1.llb.sv% * 400) / 10 
if %p2.llb.sr%==16 set   p2.llb.sd=1 
if %p2.llb.sr%==17 set/a p2.llb.sm=40 
if %p2.llb.sr%==17 set/a p2.llb.sc=0 
if %p2.llb.sr%==17 set/a p2.llb.se=0 
if %p2.llb.sr%==17   set p2.llb.sd=0 
 
 
if %p1.lbl.sr%==0 set/a p1.lbl.sm=0 
if %p1.lbl.sr%==0 set/a p1.lbl.sc=900
if %p1.lbl.sr%==0 set/a p1.lbl.se=0 
if %p1.lbl.sr%==0   set p1.lbl.sd=Not Learnt 
if %p1.lbl.sr%==1 set/a p1.lbl.sm=4 
if %p1.lbl.sr%==1 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==1 set/a p1.lbl.se=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==1 set   p1.lbl.sd=Novice 
if %p1.lbl.sr%==2 set/a p1.lbl.sm=5 
if %p1.lbl.sr%==2 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==2 set/a p1.lbl.se=(%p1.lbl.sv% * 30) / 10 
if %p1.lbl.sr%==2 set   p1.lbl.sd=F 
if %p1.lbl.sr%==3 set/a p1.lbl.sm=6 
if %p1.lbl.sr%==3 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==3 set/a p1.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p1.lbl.sr%==3 set   p1.lbl.sd=E 
if %p1.lbl.sr%==4 set/a p1.lbl.sm=7 
if %p1.lbl.sr%==4 set/a p1.lbl.sc=(%p1.lbl.sv% * 50) / 10 
if %p1.lbl.sr%==4 set/a p1.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p1.lbl.sr%==4 set   p1.lbl.sd=D 
if %p1.lbl.sr%==5 set/a p1.lbl.sm=8 
if %p1.lbl.sr%==5 set/a p1.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==5 set/a p1.lbl.se=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==5 set   p1.lbl.sd=C 
if %p1.lbl.sr%==6 set/a p1.lbl.sm=9 
if %p1.lbl.sr%==6 set/a p1.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==6 set/a p1.lbl.se=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==6 set   p1.lbl.sd=B 
if %p1.lbl.sr%==7 set/a p1.lbl.sm=10 
if %p1.lbl.sr%==7 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==7 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==7 set   p1.lbl.sd=A 
if %p1.lbl.sr%==8 set/a p1.lbl.sm=11 
if %p1.lbl.sr%==8 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==8 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==8 set   p1.lbl.sd=9 
if %p1.lbl.sr%==9 set/a p1.lbl.sm=12 
if %p1.lbl.sr%==9 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==9 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==9 set   p1.lbl.sd=8 
if %p1.lbl.sr%==10 set/a p1.lbl.sm=14 
if %p1.lbl.sr%==10 set/a p1.lbl.sc=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==10 set/a p1.lbl.se=(%p1.lbl.sv% * 140) / 10 
if %p1.lbl.sr%==10 set   p1.lbl.sd=7 
if %p1.lbl.sr%==11 set/a p1.lbl.sm=16 
if %p1.lbl.sr%==11 set/a p1.lbl.sc=(%p1.lbl.sv% * 120) / 10 
if %p1.lbl.sr%==11 set/a p1.lbl.se=(%p1.lbl.sv% * 180) / 10 
if %p1.lbl.sr%==11 set   p1.lbl.sd=6 
if %p1.lbl.sr%==12 set/a p1.lbl.sm=18 
if %p1.lbl.sr%==12 set/a p1.lbl.sc=(%p1.lbl.sv% * 140) / 10 
if %p1.lbl.sr%==12 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==12 set   p1.lbl.sd=5 
if %p1.lbl.sr%==13 set/a p1.lbl.sm=20 
if %p1.lbl.sr%==13 set/a p1.lbl.sc=(%p1.lbl.sv% * 160) / 10 
if %p1.lbl.sr%==13 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==13 set   p1.lbl.sd=4 
if %p1.lbl.sr%==14 set/a p1.lbl.sm=24 
if %p1.lbl.sr%==14 set/a p1.lbl.sc=(%p1.lbl.sv% * 240) / 10 
if %p1.lbl.sr%==14 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==14 set   p1.lbl.sd=3 
if %p1.lbl.sr%==15 set/a p1.lbl.sm=28 
if %p1.lbl.sr%==15 set/a p1.lbl.sc=(%p1.lbl.sv% * 360) / 10 
if %p1.lbl.sr%==15 set/a p1.lbl.se=(%p1.lbl.sv% * 300) / 10 
if %p1.lbl.sr%==15 set   p1.lbl.sd=2 
if %p1.lbl.sr%==16 set/a p1.lbl.sm=34 
if %p1.lbl.sr%==16 set/a p1.lbl.sc=(%p1.lbl.sv% * 480) / 10 
if %p1.lbl.sr%==16 set/a p1.lbl.se=(%p1.lbl.sv% * 400) / 10 
if %p1.lbl.sr%==16 set   p1.lbl.sd=1 
if %p1.lbl.sr%==17 set/a p1.lbl.sm=40 
if %p1.lbl.sr%==17 set/a p1.lbl.sc=0 
if %p1.lbl.sr%==17 set/a p1.lbl.se=0 
if %p1.lbl.sr%==17   set p1.lbl.sd=0 
 
 
if %p2.lbl.sr%==0 set/a p2.lbl.sm=0 
if %p2.lbl.sr%==0 set/a p2.lbl.sc=900
if %p2.lbl.sr%==0 set/a p2.lbl.se=0 
if %p2.lbl.sr%==0   set p2.lbl.sd=Not Learnt 
if %p2.lbl.sr%==1 set/a p2.lbl.sm=4 
if %p2.lbl.sr%==1 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==1 set/a p2.lbl.se=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==1 set   p2.lbl.sd=Novice 
if %p2.lbl.sr%==2 set/a p2.lbl.sm=5 
if %p2.lbl.sr%==2 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==2 set/a p2.lbl.se=(%p1.lbl.sv% * 30) / 10 
if %p2.lbl.sr%==2 set   p2.lbl.sd=F 
if %p2.lbl.sr%==3 set/a p2.lbl.sm=6 
if %p2.lbl.sr%==3 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==3 set/a p2.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p2.lbl.sr%==3 set   p2.lbl.sd=E 
if %p2.lbl.sr%==4 set/a p2.lbl.sm=7 
if %p2.lbl.sr%==4 set/a p2.lbl.sc=(%p1.lbl.sv% * 50) / 10 
if %p2.lbl.sr%==4 set/a p2.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p2.lbl.sr%==4 set   p2.lbl.sd=D 
if %p2.lbl.sr%==5 set/a p2.lbl.sm=8 
if %p2.lbl.sr%==5 set/a p2.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==5 set/a p2.lbl.se=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==5 set   p2.lbl.sd=C 
if %p2.lbl.sr%==6 set/a p2.lbl.sm=9 
if %p2.lbl.sr%==6 set/a p2.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==6 set/a p2.lbl.se=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==6 set   p2.lbl.sd=B 
if %p2.lbl.sr%==7 set/a p2.lbl.sm=10 
if %p2.lbl.sr%==7 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==7 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==7 set   p2.lbl.sd=A 
if %p2.lbl.sr%==8 set/a p2.lbl.sm=11 
if %p2.lbl.sr%==8 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==8 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==8 set   p2.lbl.sd=9 
if %p2.lbl.sr%==9 set/a p2.lbl.sm=12 
if %p2.lbl.sr%==9 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==9 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==9 set   p2.lbl.sd=8 
if %p2.lbl.sr%==10 set/a p2.lbl.sm=14 
if %p2.lbl.sr%==10 set/a p2.lbl.sc=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==10 set/a p2.lbl.se=(%p1.lbl.sv% * 140) / 10 
if %p2.lbl.sr%==10 set   p2.lbl.sd=7 
if %p2.lbl.sr%==11 set/a p2.lbl.sm=16 
if %p2.lbl.sr%==11 set/a p2.lbl.sc=(%p1.lbl.sv% * 120) / 10 
if %p2.lbl.sr%==11 set/a p2.lbl.se=(%p1.lbl.sv% * 180) / 10 
if %p2.lbl.sr%==11 set   p2.lbl.sd=6 
if %p2.lbl.sr%==12 set/a p2.lbl.sm=18 
if %p2.lbl.sr%==12 set/a p2.lbl.sc=(%p1.lbl.sv% * 140) / 10 
if %p2.lbl.sr%==12 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==12 set   p2.lbl.sd=5 
if %p2.lbl.sr%==13 set/a p2.lbl.sm=20 
if %p2.lbl.sr%==13 set/a p2.lbl.sc=(%p1.lbl.sv% * 160) / 10 
if %p2.lbl.sr%==13 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==13 set   p2.lbl.sd=4 
if %p2.lbl.sr%==14 set/a p2.lbl.sm=24 
if %p2.lbl.sr%==14 set/a p2.lbl.sc=(%p1.lbl.sv% * 240) / 10 
if %p2.lbl.sr%==14 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==14 set   p2.lbl.sd=3 
if %p2.lbl.sr%==15 set/a p2.lbl.sm=28 
if %p2.lbl.sr%==15 set/a p2.lbl.sc=(%p1.lbl.sv% * 360) / 10 
if %p2.lbl.sr%==15 set/a p2.lbl.se=(%p1.lbl.sv% * 300) / 10 
if %p2.lbl.sr%==15 set   p2.lbl.sd=2 
if %p2.lbl.sr%==16 set/a p2.lbl.sm=34 
if %p2.lbl.sr%==16 set/a p2.lbl.sc=(%p1.lbl.sv% * 480) / 10 
if %p2.lbl.sr%==16 set/a p2.lbl.se=(%p1.lbl.sv% * 400) / 10 
if %p2.lbl.sr%==16 set   p2.lbl.sd=1 
if %p2.lbl.sr%==17 set/a p2.lbl.sm=40 
if %p2.lbl.sr%==17 set/a p2.lbl.sc=0 
if %p2.lbl.sr%==17 set/a p2.lbl.se=0 
if %p2.lbl.sr%==17   set p2.lbl.sd=0 
 
 
if %p1.smh.sr%==0 set/a p1.smh.sm=0 
if %p1.smh.sr%==0 set/a p1.smh.sc=0 
if %p1.smh.sr%==0 set/a p1.smh.se=0 
if %p1.smh.sr%==0   set p1.smh.sd=Not Learnt 
if %p1.smh.sr%==1 set/a p1.smh.sm=4 
if %p1.smh.sr%==1 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==1 set/a p1.smh.se=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==1 set   p1.smh.sd=Novice 
if %p1.smh.sr%==2 set/a p1.smh.sm=5 
if %p1.smh.sr%==2 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==2 set/a p1.smh.se=(%p1.smh.sv% * 30) / 10 
if %p1.smh.sr%==2 set   p1.smh.sd=F 
if %p1.smh.sr%==3 set/a p1.smh.sm=6 
if %p1.smh.sr%==3 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==3 set/a p1.smh.se=(%p1.smh.sv% * 40) / 10 
if %p1.smh.sr%==3 set   p1.smh.sd=E 
if %p1.smh.sr%==4 set/a p1.smh.sm=7 
if %p1.smh.sr%==4 set/a p1.smh.sc=(%p1.smh.sv% * 50) / 10 
if %p1.smh.sr%==4 set/a p1.smh.se=(%p1.smh.sv% * 40) / 10 
if %p1.smh.sr%==4 set   p1.smh.sd=D 
if %p1.smh.sr%==5 set/a p1.smh.sm=8 
if %p1.smh.sr%==5 set/a p1.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==5 set/a p1.smh.se=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==5 set   p1.smh.sd=C 
if %p1.smh.sr%==6 set/a p1.smh.sm=9 
if %p1.smh.sr%==6 set/a p1.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==6 set/a p1.smh.se=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==6 set   p1.smh.sd=B 
if %p1.smh.sr%==7 set/a p1.smh.sm=10 
if %p1.smh.sr%==7 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==7 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==7 set   p1.smh.sd=A 
if %p1.smh.sr%==8 set/a p1.smh.sm=11 
if %p1.smh.sr%==8 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==8 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==8 set   p1.smh.sd=9 
if %p1.smh.sr%==9 set/a p1.smh.sm=12 
if %p1.smh.sr%==9 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==9 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==9 set   p1.smh.sd=8 
if %p1.smh.sr%==10 set/a p1.smh.sm=14 
if %p1.smh.sr%==10 set/a p1.smh.sc=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==10 set/a p1.smh.se=(%p1.smh.sv% * 140) / 10 
if %p1.smh.sr%==10 set   p1.smh.sd=7 
if %p1.smh.sr%==11 set/a p1.smh.sm=16 
if %p1.smh.sr%==11 set/a p1.smh.sc=(%p1.smh.sv% * 120) / 10 
if %p1.smh.sr%==11 set/a p1.smh.se=(%p1.smh.sv% * 180) / 10 
if %p1.smh.sr%==11 set   p1.smh.sd=6 
if %p1.smh.sr%==12 set/a p1.smh.sm=18 
if %p1.smh.sr%==12 set/a p1.smh.sc=(%p1.smh.sv% * 140) / 10 
if %p1.smh.sr%==12 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==12 set   p1.smh.sd=5 
if %p1.smh.sr%==13 set/a p1.smh.sm=20 
if %p1.smh.sr%==13 set/a p1.smh.sc=(%p1.smh.sv% * 160) / 10 
if %p1.smh.sr%==13 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==13 set   p1.smh.sd=4 
if %p1.smh.sr%==14 set/a p1.smh.sm=24 
if %p1.smh.sr%==14 set/a p1.smh.sc=(%p1.smh.sv% * 240) / 10 
if %p1.smh.sr%==14 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==14 set   p1.smh.sd=3 
if %p1.smh.sr%==15 set/a p1.smh.sm=28 
if %p1.smh.sr%==15 set/a p1.smh.sc=(%p1.smh.sv% * 360) / 10 
if %p1.smh.sr%==15 set/a p1.smh.se=(%p1.smh.sv% * 300) / 10 
if %p1.smh.sr%==15 set   p1.smh.sd=2 
if %p1.smh.sr%==16 set/a p1.smh.sm=34 
if %p1.smh.sr%==16 set/a p1.smh.sc=(%p1.smh.sv% * 480) / 10 
if %p1.smh.sr%==16 set/a p1.smh.se=(%p1.smh.sv% * 400) / 10 
if %p1.smh.sr%==16 set   p1.smh.sd=1 
if %p1.smh.sr%==17 set/a p1.smh.sm=40 
if %p1.smh.sr%==17 set/a p1.smh.sc=0 
if %p1.smh.sr%==17 set/a p1.smh.se=0 
if %p1.smh.sr%==17   set p1.smh.sd=0 
 
 
if %p2.smh.sr%==0 set/a p2.smh.sm=0 
if %p2.smh.sr%==0 set/a p2.smh.sc=0 
if %p2.smh.sr%==0 set/a p2.smh.se=0 
if %p2.smh.sr%==0   set p2.smh.sd=Not Learnt 
if %p2.smh.sr%==1 set/a p2.smh.sm=4 
if %p2.smh.sr%==1 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==1 set/a p2.smh.se=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==1 set   p2.smh.sd=Novice 
if %p2.smh.sr%==2 set/a p2.smh.sm=5 
if %p2.smh.sr%==2 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==2 set/a p2.smh.se=(%p1.smh.sv% * 30) / 10 
if %p2.smh.sr%==2 set   p2.smh.sd=F 
if %p2.smh.sr%==3 set/a p2.smh.sm=6 
if %p2.smh.sr%==3 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==3 set/a p2.smh.se=(%p1.smh.sv% * 40) / 10 
if %p2.smh.sr%==3 set   p2.smh.sd=E 
if %p2.smh.sr%==4 set/a p2.smh.sm=7 
if %p2.smh.sr%==4 set/a p2.smh.sc=(%p1.smh.sv% * 50) / 10 
if %p2.smh.sr%==4 set/a p2.smh.se=(%p1.smh.sv% * 40) / 10 
if %p2.smh.sr%==4 set   p2.smh.sd=D 
if %p2.smh.sr%==5 set/a p2.smh.sm=8 
if %p2.smh.sr%==5 set/a p2.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==5 set/a p2.smh.se=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==5 set   p2.smh.sd=C 
if %p2.smh.sr%==6 set/a p2.smh.sm=9 
if %p2.smh.sr%==6 set/a p2.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==6 set/a p2.smh.se=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==6 set   p2.smh.sd=B 
if %p2.smh.sr%==7 set/a p2.smh.sm=10 
if %p2.smh.sr%==7 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==7 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==7 set   p2.smh.sd=A 
if %p2.smh.sr%==8 set/a p2.smh.sm=11 
if %p2.smh.sr%==8 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==8 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==8 set   p2.smh.sd=9 
if %p2.smh.sr%==9 set/a p2.smh.sm=12 
if %p2.smh.sr%==9 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==9 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==9 set   p2.smh.sd=8 
if %p2.smh.sr%==10 set/a p2.smh.sm=14 
if %p2.smh.sr%==10 set/a p2.smh.sc=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==10 set/a p2.smh.se=(%p1.smh.sv% * 140) / 10 
if %p2.smh.sr%==10 set   p2.smh.sd=7 
if %p2.smh.sr%==11 set/a p2.smh.sm=16 
if %p2.smh.sr%==11 set/a p2.smh.sc=(%p1.smh.sv% * 120) / 10 
if %p2.smh.sr%==11 set/a p2.smh.se=(%p1.smh.sv% * 180) / 10 
if %p2.smh.sr%==11 set   p2.smh.sd=6 
if %p2.smh.sr%==12 set/a p2.smh.sm=18 
if %p2.smh.sr%==12 set/a p2.smh.sc=(%p1.smh.sv% * 140) / 10 
if %p2.smh.sr%==12 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==12 set   p2.smh.sd=5 
if %p2.smh.sr%==13 set/a p2.smh.sm=20 
if %p2.smh.sr%==13 set/a p2.smh.sc=(%p1.smh.sv% * 160) / 10 
if %p2.smh.sr%==13 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==13 set   p2.smh.sd=4 
if %p2.smh.sr%==14 set/a p2.smh.sm=24 
if %p2.smh.sr%==14 set/a p2.smh.sc=(%p1.smh.sv% * 240) / 10 
if %p2.smh.sr%==14 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==14 set   p2.smh.sd=3 
if %p2.smh.sr%==15 set/a p2.smh.sm=28 
if %p2.smh.sr%==15 set/a p2.smh.sc=(%p1.smh.sv% * 360) / 10 
if %p2.smh.sr%==15 set/a p2.smh.se=(%p1.smh.sv% * 300) / 10 
if %p2.smh.sr%==15 set   p2.smh.sd=2 
if %p2.smh.sr%==16 set/a p2.smh.sm=34 
if %p2.smh.sr%==16 set/a p2.smh.sc=(%p1.smh.sv% * 480) / 10 
if %p2.smh.sr%==16 set/a p2.smh.se=(%p1.smh.sv% * 400) / 10 
if %p2.smh.sr%==16 set   p2.smh.sd=1 
if %p2.smh.sr%==17 set/a p2.smh.sm=40 
if %p2.smh.sr%==17 set/a p2.smh.sc=0 
if %p2.smh.sr%==17 set/a p2.smh.se=0 
if %p2.smh.sr%==17   set p2.smh.sd=0 
 
 
if %p1.fsh.sr%==0 set/a p1.fsh.sm=0 
if %p1.fsh.sr%==0 set/a p1.fsh.sc=250
if %p1.fsh.sr%==0 set/a p1.fsh.se=0 
if %p1.fsh.sr%==0   set p1.fsh.sd=Not Learnt 
if %p1.fsh.sr%==1 set/a p1.fsh.sm=4 
if %p1.fsh.sr%==1 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==1 set/a p1.fsh.se=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==1 set   p1.fsh.sd=Novice 
if %p1.fsh.sr%==2 set/a p1.fsh.sm=5 
if %p1.fsh.sr%==2 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==2 set/a p1.fsh.se=(%p1.fsh.sv% * 30) / 10 
if %p1.fsh.sr%==2 set   p1.fsh.sd=F 
if %p1.fsh.sr%==3 set/a p1.fsh.sm=6 
if %p1.fsh.sr%==3 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==3 set/a p1.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p1.fsh.sr%==3 set   p1.fsh.sd=E 
if %p1.fsh.sr%==4 set/a p1.fsh.sm=7 
if %p1.fsh.sr%==4 set/a p1.fsh.sc=(%p1.fsh.sv% * 50) / 10 
if %p1.fsh.sr%==4 set/a p1.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p1.fsh.sr%==4 set   p1.fsh.sd=D 
if %p1.fsh.sr%==5 set/a p1.fsh.sm=8 
if %p1.fsh.sr%==5 set/a p1.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==5 set/a p1.fsh.se=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==5 set   p1.fsh.sd=C 
if %p1.fsh.sr%==6 set/a p1.fsh.sm=9 
if %p1.fsh.sr%==6 set/a p1.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==6 set/a p1.fsh.se=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==6 set   p1.fsh.sd=B 
if %p1.fsh.sr%==7 set/a p1.fsh.sm=10 
if %p1.fsh.sr%==7 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==7 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==7 set   p1.fsh.sd=A 
if %p1.fsh.sr%==8 set/a p1.fsh.sm=11 
if %p1.fsh.sr%==8 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==8 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==8 set   p1.fsh.sd=9 
if %p1.fsh.sr%==9 set/a p1.fsh.sm=12 
if %p1.fsh.sr%==9 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==9 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==9 set   p1.fsh.sd=8 
if %p1.fsh.sr%==10 set/a p1.fsh.sm=14 
if %p1.fsh.sr%==10 set/a p1.fsh.sc=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==10 set/a p1.fsh.se=(%p1.fsh.sv% * 140) / 10 
if %p1.fsh.sr%==10 set   p1.fsh.sd=7 
if %p1.fsh.sr%==11 set/a p1.fsh.sm=16 
if %p1.fsh.sr%==11 set/a p1.fsh.sc=(%p1.fsh.sv% * 120) / 10 
if %p1.fsh.sr%==11 set/a p1.fsh.se=(%p1.fsh.sv% * 180) / 10 
if %p1.fsh.sr%==11 set   p1.fsh.sd=6 
if %p1.fsh.sr%==12 set/a p1.fsh.sm=18 
if %p1.fsh.sr%==12 set/a p1.fsh.sc=(%p1.fsh.sv% * 140) / 10 
if %p1.fsh.sr%==12 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==12 set   p1.fsh.sd=5 
if %p1.fsh.sr%==13 set/a p1.fsh.sm=20 
if %p1.fsh.sr%==13 set/a p1.fsh.sc=(%p1.fsh.sv% * 160) / 10 
if %p1.fsh.sr%==13 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==13 set   p1.fsh.sd=4 
if %p1.fsh.sr%==14 set/a p1.fsh.sm=24 
if %p1.fsh.sr%==14 set/a p1.fsh.sc=(%p1.fsh.sv% * 240) / 10 
if %p1.fsh.sr%==14 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==14 set   p1.fsh.sd=3 
if %p1.fsh.sr%==15 set/a p1.fsh.sm=28 
if %p1.fsh.sr%==15 set/a p1.fsh.sc=(%p1.fsh.sv% * 360) / 10 
if %p1.fsh.sr%==15 set/a p1.fsh.se=(%p1.fsh.sv% * 300) / 10 
if %p1.fsh.sr%==15 set   p1.fsh.sd=2 
if %p1.fsh.sr%==16 set/a p1.fsh.sm=34 
if %p1.fsh.sr%==16 set/a p1.fsh.sc=(%p1.fsh.sv% * 480) / 10 
if %p1.fsh.sr%==16 set/a p1.fsh.se=(%p1.fsh.sv% * 400) / 10 
if %p1.fsh.sr%==16 set   p1.fsh.sd=1 
if %p1.fsh.sr%==17 set/a p1.fsh.sm=40 
if %p1.fsh.sr%==17 set/a p1.fsh.sc=0 
if %p1.fsh.sr%==17 set/a p1.fsh.se=0 
if %p1.fsh.sr%==17   set p1.fsh.sd=0 
 
 
if %p2.fsh.sr%==0 set/a p2.fsh.sm=0 
if %p2.fsh.sr%==0 set/a p2.fsh.sc=250
if %p2.fsh.sr%==0 set/a p2.fsh.se=0 
if %p2.fsh.sr%==0   set p2.fsh.sd=Not Learnt 
if %p2.fsh.sr%==1 set/a p2.fsh.sm=4 
if %p2.fsh.sr%==1 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==1 set/a p2.fsh.se=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==1 set   p2.fsh.sd=Novice 
if %p2.fsh.sr%==2 set/a p2.fsh.sm=5 
if %p2.fsh.sr%==2 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==2 set/a p2.fsh.se=(%p1.fsh.sv% * 30) / 10 
if %p2.fsh.sr%==2 set   p2.fsh.sd=F 
if %p2.fsh.sr%==3 set/a p2.fsh.sm=6 
if %p2.fsh.sr%==3 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==3 set/a p2.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p2.fsh.sr%==3 set   p2.fsh.sd=E 
if %p2.fsh.sr%==4 set/a p2.fsh.sm=7 
if %p2.fsh.sr%==4 set/a p2.fsh.sc=(%p1.fsh.sv% * 50) / 10 
if %p2.fsh.sr%==4 set/a p2.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p2.fsh.sr%==4 set   p2.fsh.sd=D 
if %p2.fsh.sr%==5 set/a p2.fsh.sm=8 
if %p2.fsh.sr%==5 set/a p2.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==5 set/a p2.fsh.se=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==5 set   p2.fsh.sd=C 
if %p2.fsh.sr%==6 set/a p2.fsh.sm=9 
if %p2.fsh.sr%==6 set/a p2.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==6 set/a p2.fsh.se=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==6 set   p2.fsh.sd=B 
if %p2.fsh.sr%==7 set/a p2.fsh.sm=10 
if %p2.fsh.sr%==7 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==7 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==7 set   p2.fsh.sd=A 
if %p2.fsh.sr%==8 set/a p2.fsh.sm=11 
if %p2.fsh.sr%==8 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==8 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==8 set   p2.fsh.sd=9 
if %p2.fsh.sr%==9 set/a p2.fsh.sm=12 
if %p2.fsh.sr%==9 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==9 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==9 set   p2.fsh.sd=8 
if %p2.fsh.sr%==10 set/a p2.fsh.sm=14 
if %p2.fsh.sr%==10 set/a p2.fsh.sc=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==10 set/a p2.fsh.se=(%p1.fsh.sv% * 140) / 10 
if %p2.fsh.sr%==10 set   p2.fsh.sd=7 
if %p2.fsh.sr%==11 set/a p2.fsh.sm=16 
if %p2.fsh.sr%==11 set/a p2.fsh.sc=(%p1.fsh.sv% * 120) / 10 
if %p2.fsh.sr%==11 set/a p2.fsh.se=(%p1.fsh.sv% * 180) / 10 
if %p2.fsh.sr%==11 set   p2.fsh.sd=6 
if %p2.fsh.sr%==12 set/a p2.fsh.sm=18 
if %p2.fsh.sr%==12 set/a p2.fsh.sc=(%p1.fsh.sv% * 140) / 10 
if %p2.fsh.sr%==12 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==12 set   p2.fsh.sd=5 
if %p2.fsh.sr%==13 set/a p2.fsh.sm=20 
if %p2.fsh.sr%==13 set/a p2.fsh.sc=(%p1.fsh.sv% * 160) / 10 
if %p2.fsh.sr%==13 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==13 set   p2.fsh.sd=4 
if %p2.fsh.sr%==14 set/a p2.fsh.sm=24 
if %p2.fsh.sr%==14 set/a p2.fsh.sc=(%p1.fsh.sv% * 240) / 10 
if %p2.fsh.sr%==14 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==14 set   p2.fsh.sd=3 
if %p2.fsh.sr%==15 set/a p2.fsh.sm=28 
if %p2.fsh.sr%==15 set/a p2.fsh.sc=(%p1.fsh.sv% * 360) / 10 
if %p2.fsh.sr%==15 set/a p2.fsh.se=(%p1.fsh.sv% * 300) / 10 
if %p2.fsh.sr%==15 set   p2.fsh.sd=2 
if %p2.fsh.sr%==16 set/a p2.fsh.sm=34 
if %p2.fsh.sr%==16 set/a p2.fsh.sc=(%p1.fsh.sv% * 480) / 10 
if %p2.fsh.sr%==16 set/a p2.fsh.se=(%p1.fsh.sv% * 400) / 10 
if %p2.fsh.sr%==16 set   p2.fsh.sd=1 
if %p2.fsh.sr%==17 set/a p2.fsh.sm=40 
if %p2.fsh.sr%==17 set/a p2.fsh.sc=0 
if %p2.fsh.sr%==17 set/a p2.fsh.se=0 
if %p2.fsh.sr%==17   set p2.fsh.sd=0 
 
 
if %p1.fbr.sr%==0 set/a p1.fbr.sm=0 
if %p1.fbr.sr%==0 set/a p1.fbr.sc=550
if %p1.fbr.sr%==0 set/a p1.fbr.se=0 
if %p1.fbr.sr%==0   set p1.fbr.sd=Not Learnt 
if %p1.fbr.sr%==1 set/a p1.fbr.sm=4 
if %p1.fbr.sr%==1 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==1 set/a p1.fbr.se=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==1 set   p1.fbr.sd=Novice 
if %p1.fbr.sr%==2 set/a p1.fbr.sm=5 
if %p1.fbr.sr%==2 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==2 set/a p1.fbr.se=(%p1.fbr.sv% * 30) / 10 
if %p1.fbr.sr%==2 set   p1.fbr.sd=F 
if %p1.fbr.sr%==3 set/a p1.fbr.sm=6 
if %p1.fbr.sr%==3 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==3 set/a p1.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p1.fbr.sr%==3 set   p1.fbr.sd=E 
if %p1.fbr.sr%==4 set/a p1.fbr.sm=7 
if %p1.fbr.sr%==4 set/a p1.fbr.sc=(%p1.fbr.sv% * 50) / 10 
if %p1.fbr.sr%==4 set/a p1.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p1.fbr.sr%==4 set   p1.fbr.sd=D 
if %p1.fbr.sr%==5 set/a p1.fbr.sm=8 
if %p1.fbr.sr%==5 set/a p1.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==5 set/a p1.fbr.se=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==5 set   p1.fbr.sd=C 
if %p1.fbr.sr%==6 set/a p1.fbr.sm=9 
if %p1.fbr.sr%==6 set/a p1.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==6 set/a p1.fbr.se=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==6 set   p1.fbr.sd=B 
if %p1.fbr.sr%==7 set/a p1.fbr.sm=10 
if %p1.fbr.sr%==7 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==7 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==7 set   p1.fbr.sd=A 
if %p1.fbr.sr%==8 set/a p1.fbr.sm=11 
if %p1.fbr.sr%==8 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==8 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==8 set   p1.fbr.sd=9 
if %p1.fbr.sr%==9 set/a p1.fbr.sm=12 
if %p1.fbr.sr%==9 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==9 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==9 set   p1.fbr.sd=8 
if %p1.fbr.sr%==10 set/a p1.fbr.sm=14 
if %p1.fbr.sr%==10 set/a p1.fbr.sc=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==10 set/a p1.fbr.se=(%p1.fbr.sv% * 140) / 10 
if %p1.fbr.sr%==10 set   p1.fbr.sd=7 
if %p1.fbr.sr%==11 set/a p1.fbr.sm=16 
if %p1.fbr.sr%==11 set/a p1.fbr.sc=(%p1.fbr.sv% * 120) / 10 
if %p1.fbr.sr%==11 set/a p1.fbr.se=(%p1.fbr.sv% * 180) / 10 
if %p1.fbr.sr%==11 set   p1.fbr.sd=6 
if %p1.fbr.sr%==12 set/a p1.fbr.sm=18 
if %p1.fbr.sr%==12 set/a p1.fbr.sc=(%p1.fbr.sv% * 140) / 10 
if %p1.fbr.sr%==12 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==12 set   p1.fbr.sd=5 
if %p1.fbr.sr%==13 set/a p1.fbr.sm=20 
if %p1.fbr.sr%==13 set/a p1.fbr.sc=(%p1.fbr.sv% * 160) / 10 
if %p1.fbr.sr%==13 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==13 set   p1.fbr.sd=4 
if %p1.fbr.sr%==14 set/a p1.fbr.sm=24 
if %p1.fbr.sr%==14 set/a p1.fbr.sc=(%p1.fbr.sv% * 240) / 10 
if %p1.fbr.sr%==14 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==14 set   p1.fbr.sd=3 
if %p1.fbr.sr%==15 set/a p1.fbr.sm=28 
if %p1.fbr.sr%==15 set/a p1.fbr.sc=(%p1.fbr.sv% * 360) / 10 
if %p1.fbr.sr%==15 set/a p1.fbr.se=(%p1.fbr.sv% * 300) / 10 
if %p1.fbr.sr%==15 set   p1.fbr.sd=2 
if %p1.fbr.sr%==16 set/a p1.fbr.sm=34 
if %p1.fbr.sr%==16 set/a p1.fbr.sc=(%p1.fbr.sv% * 480) / 10 
if %p1.fbr.sr%==16 set/a p1.fbr.se=(%p1.fbr.sv% * 400) / 10 
if %p1.fbr.sr%==16 set   p1.fbr.sd=1 
if %p1.fbr.sr%==17 set/a p1.fbr.sm=40 
if %p1.fbr.sr%==17 set/a p1.fbr.sc=0 
if %p1.fbr.sr%==17 set/a p1.fbr.se=0 
if %p1.fbr.sr%==17   set p1.fbr.sd=0 
 
 
if %p2.fbr.sr%==0 set/a p2.fbr.sm=0 
if %p2.fbr.sr%==0 set/a p2.fbr.sc=550
if %p2.fbr.sr%==0 set/a p2.fbr.se=0 
if %p2.fbr.sr%==0   set p2.fbr.sd=Not Learnt 
if %p2.fbr.sr%==1 set/a p2.fbr.sm=4 
if %p2.fbr.sr%==1 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==1 set/a p2.fbr.se=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==1 set   p2.fbr.sd=Novice 
if %p2.fbr.sr%==2 set/a p2.fbr.sm=5 
if %p2.fbr.sr%==2 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==2 set/a p2.fbr.se=(%p1.fbr.sv% * 30) / 10 
if %p2.fbr.sr%==2 set   p2.fbr.sd=F 
if %p2.fbr.sr%==3 set/a p2.fbr.sm=6 
if %p2.fbr.sr%==3 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==3 set/a p2.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p2.fbr.sr%==3 set   p2.fbr.sd=E 
if %p2.fbr.sr%==4 set/a p2.fbr.sm=7 
if %p2.fbr.sr%==4 set/a p2.fbr.sc=(%p1.fbr.sv% * 50) / 10 
if %p2.fbr.sr%==4 set/a p2.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p2.fbr.sr%==4 set   p2.fbr.sd=D 
if %p2.fbr.sr%==5 set/a p2.fbr.sm=8 
if %p2.fbr.sr%==5 set/a p2.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==5 set/a p2.fbr.se=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==5 set   p2.fbr.sd=C 
if %p2.fbr.sr%==6 set/a p2.fbr.sm=9 
if %p2.fbr.sr%==6 set/a p2.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==6 set/a p2.fbr.se=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==6 set   p2.fbr.sd=B 
if %p2.fbr.sr%==7 set/a p2.fbr.sm=10 
if %p2.fbr.sr%==7 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==7 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==7 set   p2.fbr.sd=A 
if %p2.fbr.sr%==8 set/a p2.fbr.sm=11 
if %p2.fbr.sr%==8 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==8 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==8 set   p2.fbr.sd=9 
if %p2.fbr.sr%==9 set/a p2.fbr.sm=12 
if %p2.fbr.sr%==9 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==9 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==9 set   p2.fbr.sd=8 
if %p2.fbr.sr%==10 set/a p2.fbr.sm=14 
if %p2.fbr.sr%==10 set/a p2.fbr.sc=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==10 set/a p2.fbr.se=(%p1.fbr.sv% * 140) / 10 
if %p2.fbr.sr%==10 set   p2.fbr.sd=7 
if %p2.fbr.sr%==11 set/a p2.fbr.sm=16 
if %p2.fbr.sr%==11 set/a p2.fbr.sc=(%p1.fbr.sv% * 120) / 10 
if %p2.fbr.sr%==11 set/a p2.fbr.se=(%p1.fbr.sv% * 180) / 10 
if %p2.fbr.sr%==11 set   p2.fbr.sd=6 
if %p2.fbr.sr%==12 set/a p2.fbr.sm=18 
if %p2.fbr.sr%==12 set/a p2.fbr.sc=(%p1.fbr.sv% * 140) / 10 
if %p2.fbr.sr%==12 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==12 set   p2.fbr.sd=5 
if %p2.fbr.sr%==13 set/a p2.fbr.sm=20 
if %p2.fbr.sr%==13 set/a p2.fbr.sc=(%p1.fbr.sv% * 160) / 10 
if %p2.fbr.sr%==13 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==13 set   p2.fbr.sd=4 
if %p2.fbr.sr%==14 set/a p2.fbr.sm=24 
if %p2.fbr.sr%==14 set/a p2.fbr.sc=(%p1.fbr.sv% * 240) / 10 
if %p2.fbr.sr%==14 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==14 set   p2.fbr.sd=3 
if %p2.fbr.sr%==15 set/a p2.fbr.sm=28 
if %p2.fbr.sr%==15 set/a p2.fbr.sc=(%p1.fbr.sv% * 360) / 10 
if %p2.fbr.sr%==15 set/a p2.fbr.se=(%p1.fbr.sv% * 300) / 10 
if %p2.fbr.sr%==15 set   p2.fbr.sd=2 
if %p2.fbr.sr%==16 set/a p2.fbr.sm=34 
if %p2.fbr.sr%==16 set/a p2.fbr.sc=(%p1.fbr.sv% * 480) / 10 
if %p2.fbr.sr%==16 set/a p2.fbr.se=(%p1.fbr.sv% * 400) / 10 
if %p2.fbr.sr%==16 set   p2.fbr.sd=1 
if %p2.fbr.sr%==17 set/a p2.fbr.sm=40 
if %p2.fbr.sr%==17 set/a p2.fbr.sc=0 
if %p2.fbr.sr%==17 set/a p2.fbr.se=0 
if %p2.fbr.sr%==17   set p2.fbr.sd=0 
 
 
if %p1.fsl.sr%==0 set/a p1.fsl.sm=0 
if %p1.fsl.sr%==0 set/a p1.fsl.sc=800
if %p1.fsl.sr%==0 set/a p1.fsl.se=0 
if %p1.fsl.sr%==0   set p1.fsl.sd=Not Learnt 
if %p1.fsl.sr%==1 set/a p1.fsl.sm=4 
if %p1.fsl.sr%==1 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==1 set/a p1.fsl.se=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==1 set   p1.fsl.sd=Novice 
if %p1.fsl.sr%==2 set/a p1.fsl.sm=5 
if %p1.fsl.sr%==2 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==2 set/a p1.fsl.se=(%p1.fsl.sv% * 30) / 10 
if %p1.fsl.sr%==2 set   p1.fsl.sd=F 
if %p1.fsl.sr%==3 set/a p1.fsl.sm=6 
if %p1.fsl.sr%==3 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==3 set/a p1.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p1.fsl.sr%==3 set   p1.fsl.sd=E 
if %p1.fsl.sr%==4 set/a p1.fsl.sm=7 
if %p1.fsl.sr%==4 set/a p1.fsl.sc=(%p1.fsl.sv% * 50) / 10 
if %p1.fsl.sr%==4 set/a p1.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p1.fsl.sr%==4 set   p1.fsl.sd=D 
if %p1.fsl.sr%==5 set/a p1.fsl.sm=8 
if %p1.fsl.sr%==5 set/a p1.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==5 set/a p1.fsl.se=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==5 set   p1.fsl.sd=C 
if %p1.fsl.sr%==6 set/a p1.fsl.sm=9 
if %p1.fsl.sr%==6 set/a p1.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==6 set/a p1.fsl.se=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==6 set   p1.fsl.sd=B 
if %p1.fsl.sr%==7 set/a p1.fsl.sm=10 
if %p1.fsl.sr%==7 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==7 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==7 set   p1.fsl.sd=A 
if %p1.fsl.sr%==8 set/a p1.fsl.sm=11 
if %p1.fsl.sr%==8 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==8 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==8 set   p1.fsl.sd=9 
if %p1.fsl.sr%==9 set/a p1.fsl.sm=12 
if %p1.fsl.sr%==9 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==9 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==9 set   p1.fsl.sd=8 
if %p1.fsl.sr%==10 set/a p1.fsl.sm=14 
if %p1.fsl.sr%==10 set/a p1.fsl.sc=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==10 set/a p1.fsl.se=(%p1.fsl.sv% * 140) / 10 
if %p1.fsl.sr%==10 set   p1.fsl.sd=7 
if %p1.fsl.sr%==11 set/a p1.fsl.sm=16 
if %p1.fsl.sr%==11 set/a p1.fsl.sc=(%p1.fsl.sv% * 120) / 10 
if %p1.fsl.sr%==11 set/a p1.fsl.se=(%p1.fsl.sv% * 180) / 10 
if %p1.fsl.sr%==11 set   p1.fsl.sd=6 
if %p1.fsl.sr%==12 set/a p1.fsl.sm=18 
if %p1.fsl.sr%==12 set/a p1.fsl.sc=(%p1.fsl.sv% * 140) / 10 
if %p1.fsl.sr%==12 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==12 set   p1.fsl.sd=5 
if %p1.fsl.sr%==13 set/a p1.fsl.sm=20 
if %p1.fsl.sr%==13 set/a p1.fsl.sc=(%p1.fsl.sv% * 160) / 10 
if %p1.fsl.sr%==13 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==13 set   p1.fsl.sd=4 
if %p1.fsl.sr%==14 set/a p1.fsl.sm=24 
if %p1.fsl.sr%==14 set/a p1.fsl.sc=(%p1.fsl.sv% * 240) / 10 
if %p1.fsl.sr%==14 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==14 set   p1.fsl.sd=3 
if %p1.fsl.sr%==15 set/a p1.fsl.sm=28 
if %p1.fsl.sr%==15 set/a p1.fsl.sc=(%p1.fsl.sv% * 360) / 10 
if %p1.fsl.sr%==15 set/a p1.fsl.se=(%p1.fsl.sv% * 300) / 10 
if %p1.fsl.sr%==15 set   p1.fsl.sd=2 
if %p1.fsl.sr%==16 set/a p1.fsl.sm=34 
if %p1.fsl.sr%==16 set/a p1.fsl.sc=(%p1.fsl.sv% * 480) / 10 
if %p1.fsl.sr%==16 set/a p1.fsl.se=(%p1.fsl.sv% * 400) / 10 
if %p1.fsl.sr%==16 set   p1.fsl.sd=1 
if %p1.fsl.sr%==17 set/a p1.fsl.sm=40 
if %p1.fsl.sr%==17 set/a p1.fsl.sc=0 
if %p1.fsl.sr%==17 set/a p1.fsl.se=0 
if %p1.fsl.sr%==17   set p1.fsl.sd=0 
 
 
if %p2.fsl.sr%==0 set/a p2.fsl.sm=0 
if %p2.fsl.sr%==0 set/a p2.fsl.sc=800
if %p2.fsl.sr%==0 set/a p2.fsl.se=0 
if %p2.fsl.sr%==0   set p2.fsl.sd=Not Learnt 
if %p2.fsl.sr%==1 set/a p2.fsl.sm=4 
if %p2.fsl.sr%==1 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==1 set/a p2.fsl.se=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==1 set   p2.fsl.sd=Novice 
if %p2.fsl.sr%==2 set/a p2.fsl.sm=5 
if %p2.fsl.sr%==2 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==2 set/a p2.fsl.se=(%p1.fsl.sv% * 30) / 10 
if %p2.fsl.sr%==2 set   p2.fsl.sd=F 
if %p2.fsl.sr%==3 set/a p2.fsl.sm=6 
if %p2.fsl.sr%==3 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==3 set/a p2.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p2.fsl.sr%==3 set   p2.fsl.sd=E 
if %p2.fsl.sr%==4 set/a p2.fsl.sm=7 
if %p2.fsl.sr%==4 set/a p2.fsl.sc=(%p1.fsl.sv% * 50) / 10 
if %p2.fsl.sr%==4 set/a p2.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p2.fsl.sr%==4 set   p2.fsl.sd=D 
if %p2.fsl.sr%==5 set/a p2.fsl.sm=8 
if %p2.fsl.sr%==5 set/a p2.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==5 set/a p2.fsl.se=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==5 set   p2.fsl.sd=C 
if %p2.fsl.sr%==6 set/a p2.fsl.sm=9 
if %p2.fsl.sr%==6 set/a p2.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==6 set/a p2.fsl.se=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==6 set   p2.fsl.sd=B 
if %p2.fsl.sr%==7 set/a p2.fsl.sm=10 
if %p2.fsl.sr%==7 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==7 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==7 set   p2.fsl.sd=A 
if %p2.fsl.sr%==8 set/a p2.fsl.sm=11 
if %p2.fsl.sr%==8 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==8 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==8 set   p2.fsl.sd=9 
if %p2.fsl.sr%==9 set/a p2.fsl.sm=12 
if %p2.fsl.sr%==9 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==9 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==9 set   p2.fsl.sd=8 
if %p2.fsl.sr%==10 set/a p2.fsl.sm=14 
if %p2.fsl.sr%==10 set/a p2.fsl.sc=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==10 set/a p2.fsl.se=(%p1.fsl.sv% * 140) / 10 
if %p2.fsl.sr%==10 set   p2.fsl.sd=7 
if %p2.fsl.sr%==11 set/a p2.fsl.sm=16 
if %p2.fsl.sr%==11 set/a p2.fsl.sc=(%p1.fsl.sv% * 120) / 10 
if %p2.fsl.sr%==11 set/a p2.fsl.se=(%p1.fsl.sv% * 180) / 10 
if %p2.fsl.sr%==11 set   p2.fsl.sd=6 
if %p2.fsl.sr%==12 set/a p2.fsl.sm=18 
if %p2.fsl.sr%==12 set/a p2.fsl.sc=(%p1.fsl.sv% * 140) / 10 
if %p2.fsl.sr%==12 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==12 set   p2.fsl.sd=5 
if %p2.fsl.sr%==13 set/a p2.fsl.sm=20 
if %p2.fsl.sr%==13 set/a p2.fsl.sc=(%p1.fsl.sv% * 160) / 10 
if %p2.fsl.sr%==13 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==13 set   p2.fsl.sd=4 
if %p2.fsl.sr%==14 set/a p2.fsl.sm=24 
if %p2.fsl.sr%==14 set/a p2.fsl.sc=(%p1.fsl.sv% * 240) / 10 
if %p2.fsl.sr%==14 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==14 set   p2.fsl.sd=3 
if %p2.fsl.sr%==15 set/a p2.fsl.sm=28 
if %p2.fsl.sr%==15 set/a p2.fsl.sc=(%p1.fsl.sv% * 360) / 10 
if %p2.fsl.sr%==15 set/a p2.fsl.se=(%p1.fsl.sv% * 300) / 10 
if %p2.fsl.sr%==15 set   p2.fsl.sd=2 
if %p2.fsl.sr%==16 set/a p2.fsl.sm=34 
if %p2.fsl.sr%==16 set/a p2.fsl.sc=(%p1.fsl.sv% * 480) / 10 
if %p2.fsl.sr%==16 set/a p2.fsl.se=(%p1.fsl.sv% * 400) / 10 
if %p2.fsl.sr%==16 set   p2.fsl.sd=1 
if %p2.fsl.sr%==17 set/a p2.fsl.sm=40 
if %p2.fsl.sr%==17 set/a p2.fsl.sc=0 
if %p2.fsl.sr%==17 set/a p2.fsl.se=0 
if %p2.fsl.sr%==17   set p2.fsl.sd=0 
 
 
if %p1.wwt.sr%==0 set/a p1.wwt.sm=0 
if %p1.wwt.sr%==0 set/a p1.wwt.sc=100
if %p1.wwt.sr%==0 set/a p1.wwt.se=0 
if %p1.wwt.sr%==0   set p1.wwt.sd=Not Learnt 
if %p1.wwt.sr%==1 set/a p1.wwt.sm=4 
if %p1.wwt.sr%==1 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==1 set/a p1.wwt.se=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==1 set   p1.wwt.sd=Novice 
if %p1.wwt.sr%==2 set/a p1.wwt.sm=5 
if %p1.wwt.sr%==2 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==2 set/a p1.wwt.se=(%p1.wwt.sv% * 30) / 10 
if %p1.wwt.sr%==2 set   p1.wwt.sd=F 
if %p1.wwt.sr%==3 set/a p1.wwt.sm=6 
if %p1.wwt.sr%==3 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==3 set/a p1.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p1.wwt.sr%==3 set   p1.wwt.sd=E 
if %p1.wwt.sr%==4 set/a p1.wwt.sm=7 
if %p1.wwt.sr%==4 set/a p1.wwt.sc=(%p1.wwt.sv% * 50) / 10 
if %p1.wwt.sr%==4 set/a p1.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p1.wwt.sr%==4 set   p1.wwt.sd=D 
if %p1.wwt.sr%==5 set/a p1.wwt.sm=8 
if %p1.wwt.sr%==5 set/a p1.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==5 set/a p1.wwt.se=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==5 set   p1.wwt.sd=C 
if %p1.wwt.sr%==6 set/a p1.wwt.sm=9 
if %p1.wwt.sr%==6 set/a p1.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==6 set/a p1.wwt.se=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==6 set   p1.wwt.sd=B 
if %p1.wwt.sr%==7 set/a p1.wwt.sm=10 
if %p1.wwt.sr%==7 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==7 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==7 set   p1.wwt.sd=A 
if %p1.wwt.sr%==8 set/a p1.wwt.sm=11 
if %p1.wwt.sr%==8 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==8 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==8 set   p1.wwt.sd=9 
if %p1.wwt.sr%==9 set/a p1.wwt.sm=12 
if %p1.wwt.sr%==9 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==9 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==9 set   p1.wwt.sd=8 
if %p1.wwt.sr%==10 set/a p1.wwt.sm=14 
if %p1.wwt.sr%==10 set/a p1.wwt.sc=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==10 set/a p1.wwt.se=(%p1.wwt.sv% * 140) / 10 
if %p1.wwt.sr%==10 set   p1.wwt.sd=7 
if %p1.wwt.sr%==11 set/a p1.wwt.sm=16 
if %p1.wwt.sr%==11 set/a p1.wwt.sc=(%p1.wwt.sv% * 120) / 10 
if %p1.wwt.sr%==11 set/a p1.wwt.se=(%p1.wwt.sv% * 180) / 10 
if %p1.wwt.sr%==11 set   p1.wwt.sd=6 
if %p1.wwt.sr%==12 set/a p1.wwt.sm=18 
if %p1.wwt.sr%==12 set/a p1.wwt.sc=(%p1.wwt.sv% * 140) / 10 
if %p1.wwt.sr%==12 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==12 set   p1.wwt.sd=5 
if %p1.wwt.sr%==13 set/a p1.wwt.sm=20 
if %p1.wwt.sr%==13 set/a p1.wwt.sc=(%p1.wwt.sv% * 160) / 10 
if %p1.wwt.sr%==13 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==13 set   p1.wwt.sd=4 
if %p1.wwt.sr%==14 set/a p1.wwt.sm=24 
if %p1.wwt.sr%==14 set/a p1.wwt.sc=(%p1.wwt.sv% * 240) / 10 
if %p1.wwt.sr%==14 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==14 set   p1.wwt.sd=3 
if %p1.wwt.sr%==15 set/a p1.wwt.sm=28 
if %p1.wwt.sr%==15 set/a p1.wwt.sc=(%p1.wwt.sv% * 360) / 10 
if %p1.wwt.sr%==15 set/a p1.wwt.se=(%p1.wwt.sv% * 300) / 10 
if %p1.wwt.sr%==15 set   p1.wwt.sd=2 
if %p1.wwt.sr%==16 set/a p1.wwt.sm=34 
if %p1.wwt.sr%==16 set/a p1.wwt.sc=(%p1.wwt.sv% * 480) / 10 
if %p1.wwt.sr%==16 set/a p1.wwt.se=(%p1.wwt.sv% * 400) / 10 
if %p1.wwt.sr%==16 set   p1.wwt.sd=1 
if %p1.wwt.sr%==17 set/a p1.wwt.sm=40 
if %p1.wwt.sr%==17 set/a p1.wwt.sc=0 
if %p1.wwt.sr%==17 set/a p1.wwt.se=0 
if %p1.wwt.sr%==17   set p1.wwt.sd=0 
 
 
if %p2.wwt.sr%==0 set/a p2.wwt.sm=0 
if %p2.wwt.sr%==0 set/a p2.wwt.sc=100
if %p2.wwt.sr%==0 set/a p2.wwt.se=0 
if %p2.wwt.sr%==0   set p2.wwt.sd=Not Learnt 
if %p2.wwt.sr%==1 set/a p2.wwt.sm=4 
if %p2.wwt.sr%==1 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==1 set/a p2.wwt.se=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==1 set   p2.wwt.sd=Novice 
if %p2.wwt.sr%==2 set/a p2.wwt.sm=5 
if %p2.wwt.sr%==2 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==2 set/a p2.wwt.se=(%p1.wwt.sv% * 30) / 10 
if %p2.wwt.sr%==2 set   p2.wwt.sd=F 
if %p2.wwt.sr%==3 set/a p2.wwt.sm=6 
if %p2.wwt.sr%==3 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==3 set/a p2.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p2.wwt.sr%==3 set   p2.wwt.sd=E 
if %p2.wwt.sr%==4 set/a p2.wwt.sm=7 
if %p2.wwt.sr%==4 set/a p2.wwt.sc=(%p1.wwt.sv% * 50) / 10 
if %p2.wwt.sr%==4 set/a p2.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p2.wwt.sr%==4 set   p2.wwt.sd=D 
if %p2.wwt.sr%==5 set/a p2.wwt.sm=8 
if %p2.wwt.sr%==5 set/a p2.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==5 set/a p2.wwt.se=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==5 set   p2.wwt.sd=C 
if %p2.wwt.sr%==6 set/a p2.wwt.sm=9 
if %p2.wwt.sr%==6 set/a p2.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==6 set/a p2.wwt.se=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==6 set   p2.wwt.sd=B 
if %p2.wwt.sr%==7 set/a p2.wwt.sm=10 
if %p2.wwt.sr%==7 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==7 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==7 set   p2.wwt.sd=A 
if %p2.wwt.sr%==8 set/a p2.wwt.sm=11 
if %p2.wwt.sr%==8 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==8 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==8 set   p2.wwt.sd=9 
if %p2.wwt.sr%==9 set/a p2.wwt.sm=12 
if %p2.wwt.sr%==9 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==9 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==9 set   p2.wwt.sd=8 
if %p2.wwt.sr%==10 set/a p2.wwt.sm=14 
if %p2.wwt.sr%==10 set/a p2.wwt.sc=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==10 set/a p2.wwt.se=(%p1.wwt.sv% * 140) / 10 
if %p2.wwt.sr%==10 set   p2.wwt.sd=7 
if %p2.wwt.sr%==11 set/a p2.wwt.sm=16 
if %p2.wwt.sr%==11 set/a p2.wwt.sc=(%p1.wwt.sv% * 120) / 10 
if %p2.wwt.sr%==11 set/a p2.wwt.se=(%p1.wwt.sv% * 180) / 10 
if %p2.wwt.sr%==11 set   p2.wwt.sd=6 
if %p2.wwt.sr%==12 set/a p2.wwt.sm=18 
if %p2.wwt.sr%==12 set/a p2.wwt.sc=(%p1.wwt.sv% * 140) / 10 
if %p2.wwt.sr%==12 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==12 set   p2.wwt.sd=5 
if %p2.wwt.sr%==13 set/a p2.wwt.sm=20 
if %p2.wwt.sr%==13 set/a p2.wwt.sc=(%p1.wwt.sv% * 160) / 10 
if %p2.wwt.sr%==13 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==13 set   p2.wwt.sd=4 
if %p2.wwt.sr%==14 set/a p2.wwt.sm=24 
if %p2.wwt.sr%==14 set/a p2.wwt.sc=(%p1.wwt.sv% * 240) / 10 
if %p2.wwt.sr%==14 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==14 set   p2.wwt.sd=3 
if %p2.wwt.sr%==15 set/a p2.wwt.sm=28 
if %p2.wwt.sr%==15 set/a p2.wwt.sc=(%p1.wwt.sv% * 360) / 10 
if %p2.wwt.sr%==15 set/a p2.wwt.se=(%p1.wwt.sv% * 300) / 10 
if %p2.wwt.sr%==15 set   p2.wwt.sd=2 
if %p2.wwt.sr%==16 set/a p2.wwt.sm=34 
if %p2.wwt.sr%==16 set/a p2.wwt.sc=(%p1.wwt.sv% * 480) / 10 
if %p2.wwt.sr%==16 set/a p2.wwt.se=(%p1.wwt.sv% * 400) / 10 
if %p2.wwt.sr%==16 set   p2.wwt.sd=1 
if %p2.wwt.sr%==17 set/a p2.wwt.sm=40 
if %p2.wwt.sr%==17 set/a p2.wwt.sc=0 
if %p2.wwt.sr%==17 set/a p2.wwt.se=0 
if %p2.wwt.sr%==17   set p2.wwt.sd=0 
 
 
if %p1.blk.sr%==0 set/a p1.blk.sm=0 
if %p1.blk.sr%==0 set/a p1.blk.sc=400
if %p1.blk.sr%==0 set/a p1.blk.se=0 
if %p1.blk.sr%==0   set p1.blk.sd=Not Learnt 
if %p1.blk.sr%==1 set/a p1.blk.sm=4 
if %p1.blk.sr%==1 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==1 set/a p1.blk.se=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==1 set   p1.blk.sd=Novice 
if %p1.blk.sr%==2 set/a p1.blk.sm=5 
if %p1.blk.sr%==2 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==2 set/a p1.blk.se=(%p1.blk.sv% * 30) / 10 
if %p1.blk.sr%==2 set   p1.blk.sd=F 
if %p1.blk.sr%==3 set/a p1.blk.sm=6 
if %p1.blk.sr%==3 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==3 set/a p1.blk.se=(%p1.blk.sv% * 40) / 10 
if %p1.blk.sr%==3 set   p1.blk.sd=E 
if %p1.blk.sr%==4 set/a p1.blk.sm=7 
if %p1.blk.sr%==4 set/a p1.blk.sc=(%p1.blk.sv% * 50) / 10 
if %p1.blk.sr%==4 set/a p1.blk.se=(%p1.blk.sv% * 40) / 10 
if %p1.blk.sr%==4 set   p1.blk.sd=D 
if %p1.blk.sr%==5 set/a p1.blk.sm=8 
if %p1.blk.sr%==5 set/a p1.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==5 set/a p1.blk.se=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==5 set   p1.blk.sd=C 
if %p1.blk.sr%==6 set/a p1.blk.sm=9 
if %p1.blk.sr%==6 set/a p1.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==6 set/a p1.blk.se=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==6 set   p1.blk.sd=B 
if %p1.blk.sr%==7 set/a p1.blk.sm=10 
if %p1.blk.sr%==7 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==7 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==7 set   p1.blk.sd=A 
if %p1.blk.sr%==8 set/a p1.blk.sm=11 
if %p1.blk.sr%==8 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==8 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==8 set   p1.blk.sd=9 
if %p1.blk.sr%==9 set/a p1.blk.sm=12 
if %p1.blk.sr%==9 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==9 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==9 set   p1.blk.sd=8 
if %p1.blk.sr%==10 set/a p1.blk.sm=14 
if %p1.blk.sr%==10 set/a p1.blk.sc=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==10 set/a p1.blk.se=(%p1.blk.sv% * 140) / 10 
if %p1.blk.sr%==10 set   p1.blk.sd=7 
if %p1.blk.sr%==11 set/a p1.blk.sm=16 
if %p1.blk.sr%==11 set/a p1.blk.sc=(%p1.blk.sv% * 120) / 10 
if %p1.blk.sr%==11 set/a p1.blk.se=(%p1.blk.sv% * 180) / 10 
if %p1.blk.sr%==11 set   p1.blk.sd=6 
if %p1.blk.sr%==12 set/a p1.blk.sm=18 
if %p1.blk.sr%==12 set/a p1.blk.sc=(%p1.blk.sv% * 140) / 10 
if %p1.blk.sr%==12 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==12 set   p1.blk.sd=5 
if %p1.blk.sr%==13 set/a p1.blk.sm=20 
if %p1.blk.sr%==13 set/a p1.blk.sc=(%p1.blk.sv% * 160) / 10 
if %p1.blk.sr%==13 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==13 set   p1.blk.sd=4 
if %p1.blk.sr%==14 set/a p1.blk.sm=24 
if %p1.blk.sr%==14 set/a p1.blk.sc=(%p1.blk.sv% * 240) / 10 
if %p1.blk.sr%==14 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==14 set   p1.blk.sd=3 
if %p1.blk.sr%==15 set/a p1.blk.sm=28 
if %p1.blk.sr%==15 set/a p1.blk.sc=(%p1.blk.sv% * 360) / 10 
if %p1.blk.sr%==15 set/a p1.blk.se=(%p1.blk.sv% * 300) / 10 
if %p1.blk.sr%==15 set   p1.blk.sd=2 
if %p1.blk.sr%==16 set/a p1.blk.sm=34 
if %p1.blk.sr%==16 set/a p1.blk.sc=(%p1.blk.sv% * 480) / 10 
if %p1.blk.sr%==16 set/a p1.blk.se=(%p1.blk.sv% * 400) / 10 
if %p1.blk.sr%==16 set   p1.blk.sd=1 
if %p1.blk.sr%==17 set/a p1.blk.sm=40 
if %p1.blk.sr%==17 set/a p1.blk.sc=0 
if %p1.blk.sr%==17 set/a p1.blk.se=0 
if %p1.blk.sr%==17   set p1.blk.sd=0 
 
 
if %p2.blk.sr%==0 set/a p2.blk.sm=0 
if %p2.blk.sr%==0 set/a p2.blk.sc=400
if %p2.blk.sr%==0 set/a p2.blk.se=0 
if %p2.blk.sr%==0   set p2.blk.sd=Not Learnt 
if %p2.blk.sr%==1 set/a p2.blk.sm=4 
if %p2.blk.sr%==1 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==1 set/a p2.blk.se=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==1 set   p2.blk.sd=Novice 
if %p2.blk.sr%==2 set/a p2.blk.sm=5 
if %p2.blk.sr%==2 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==2 set/a p2.blk.se=(%p1.blk.sv% * 30) / 10 
if %p2.blk.sr%==2 set   p2.blk.sd=F 
if %p2.blk.sr%==3 set/a p2.blk.sm=6 
if %p2.blk.sr%==3 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==3 set/a p2.blk.se=(%p1.blk.sv% * 40) / 10 
if %p2.blk.sr%==3 set   p2.blk.sd=E 
if %p2.blk.sr%==4 set/a p2.blk.sm=7 
if %p2.blk.sr%==4 set/a p2.blk.sc=(%p1.blk.sv% * 50) / 10 
if %p2.blk.sr%==4 set/a p2.blk.se=(%p1.blk.sv% * 40) / 10 
if %p2.blk.sr%==4 set   p2.blk.sd=D 
if %p2.blk.sr%==5 set/a p2.blk.sm=8 
if %p2.blk.sr%==5 set/a p2.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==5 set/a p2.blk.se=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==5 set   p2.blk.sd=C 
if %p2.blk.sr%==6 set/a p2.blk.sm=9 
if %p2.blk.sr%==6 set/a p2.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==6 set/a p2.blk.se=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==6 set   p2.blk.sd=B 
if %p2.blk.sr%==7 set/a p2.blk.sm=10 
if %p2.blk.sr%==7 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==7 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==7 set   p2.blk.sd=A 
if %p2.blk.sr%==8 set/a p2.blk.sm=11 
if %p2.blk.sr%==8 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==8 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==8 set   p2.blk.sd=9 
if %p2.blk.sr%==9 set/a p2.blk.sm=12 
if %p2.blk.sr%==9 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==9 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==9 set   p2.blk.sd=8 
if %p2.blk.sr%==10 set/a p2.blk.sm=14 
if %p2.blk.sr%==10 set/a p2.blk.sc=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==10 set/a p2.blk.se=(%p1.blk.sv% * 140) / 10 
if %p2.blk.sr%==10 set   p2.blk.sd=7 
if %p2.blk.sr%==11 set/a p2.blk.sm=16 
if %p2.blk.sr%==11 set/a p2.blk.sc=(%p1.blk.sv% * 120) / 10 
if %p2.blk.sr%==11 set/a p2.blk.se=(%p1.blk.sv% * 180) / 10 
if %p2.blk.sr%==11 set   p2.blk.sd=6 
if %p2.blk.sr%==12 set/a p2.blk.sm=18 
if %p2.blk.sr%==12 set/a p2.blk.sc=(%p1.blk.sv% * 140) / 10 
if %p2.blk.sr%==12 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==12 set   p2.blk.sd=5 
if %p2.blk.sr%==13 set/a p2.blk.sm=20 
if %p2.blk.sr%==13 set/a p2.blk.sc=(%p1.blk.sv% * 160) / 10 
if %p2.blk.sr%==13 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==13 set   p2.blk.sd=4 
if %p2.blk.sr%==14 set/a p2.blk.sm=24 
if %p2.blk.sr%==14 set/a p2.blk.sc=(%p1.blk.sv% * 240) / 10 
if %p2.blk.sr%==14 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==14 set   p2.blk.sd=3 
if %p2.blk.sr%==15 set/a p2.blk.sm=28 
if %p2.blk.sr%==15 set/a p2.blk.sc=(%p1.blk.sv% * 360) / 10 
if %p2.blk.sr%==15 set/a p2.blk.se=(%p1.blk.sv% * 300) / 10 
if %p2.blk.sr%==15 set   p2.blk.sd=2 
if %p2.blk.sr%==16 set/a p2.blk.sm=34 
if %p2.blk.sr%==16 set/a p2.blk.sc=(%p1.blk.sv% * 480) / 10 
if %p2.blk.sr%==16 set/a p2.blk.se=(%p1.blk.sv% * 400) / 10 
if %p2.blk.sr%==16 set   p2.blk.sd=1 
if %p2.blk.sr%==17 set/a p2.blk.sm=40 
if %p2.blk.sr%==17 set/a p2.blk.sc=0 
if %p2.blk.sr%==17 set/a p2.blk.se=0 
if %p2.blk.sr%==17   set p2.blk.sd=0 
 
 
if %p1.lsh.sr%==0 set/a p1.lsh.sm=0 
if %p1.lsh.sr%==0 set/a p1.lsh.sc=300
if %p1.lsh.sr%==0 set/a p1.lsh.se=0 
if %p1.lsh.sr%==0   set p1.lsh.sd=Not Learnt 
if %p1.lsh.sr%==1 set/a p1.lsh.sm=4 
if %p1.lsh.sr%==1 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==1 set/a p1.lsh.se=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==1 set   p1.lsh.sd=Novice 
if %p1.lsh.sr%==2 set/a p1.lsh.sm=5 
if %p1.lsh.sr%==2 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==2 set/a p1.lsh.se=(%p1.lsh.sv% * 30) / 10 
if %p1.lsh.sr%==2 set   p1.lsh.sd=F 
if %p1.lsh.sr%==3 set/a p1.lsh.sm=6 
if %p1.lsh.sr%==3 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==3 set/a p1.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p1.lsh.sr%==3 set   p1.lsh.sd=E 
if %p1.lsh.sr%==4 set/a p1.lsh.sm=7 
if %p1.lsh.sr%==4 set/a p1.lsh.sc=(%p1.lsh.sv% * 50) / 10 
if %p1.lsh.sr%==4 set/a p1.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p1.lsh.sr%==4 set   p1.lsh.sd=D 
if %p1.lsh.sr%==5 set/a p1.lsh.sm=8 
if %p1.lsh.sr%==5 set/a p1.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==5 set/a p1.lsh.se=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==5 set   p1.lsh.sd=C 
if %p1.lsh.sr%==6 set/a p1.lsh.sm=9 
if %p1.lsh.sr%==6 set/a p1.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==6 set/a p1.lsh.se=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==6 set   p1.lsh.sd=B 
if %p1.lsh.sr%==7 set/a p1.lsh.sm=10 
if %p1.lsh.sr%==7 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==7 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==7 set   p1.lsh.sd=A 
if %p1.lsh.sr%==8 set/a p1.lsh.sm=11 
if %p1.lsh.sr%==8 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==8 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==8 set   p1.lsh.sd=9 
if %p1.lsh.sr%==9 set/a p1.lsh.sm=12 
if %p1.lsh.sr%==9 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==9 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==9 set   p1.lsh.sd=8 
if %p1.lsh.sr%==10 set/a p1.lsh.sm=14 
if %p1.lsh.sr%==10 set/a p1.lsh.sc=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==10 set/a p1.lsh.se=(%p1.lsh.sv% * 140) / 10 
if %p1.lsh.sr%==10 set   p1.lsh.sd=7 
if %p1.lsh.sr%==11 set/a p1.lsh.sm=16 
if %p1.lsh.sr%==11 set/a p1.lsh.sc=(%p1.lsh.sv% * 120) / 10 
if %p1.lsh.sr%==11 set/a p1.lsh.se=(%p1.lsh.sv% * 180) / 10 
if %p1.lsh.sr%==11 set   p1.lsh.sd=6 
if %p1.lsh.sr%==12 set/a p1.lsh.sm=18 
if %p1.lsh.sr%==12 set/a p1.lsh.sc=(%p1.lsh.sv% * 140) / 10 
if %p1.lsh.sr%==12 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==12 set   p1.lsh.sd=5 
if %p1.lsh.sr%==13 set/a p1.lsh.sm=20 
if %p1.lsh.sr%==13 set/a p1.lsh.sc=(%p1.lsh.sv% * 160) / 10 
if %p1.lsh.sr%==13 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==13 set   p1.lsh.sd=4 
if %p1.lsh.sr%==14 set/a p1.lsh.sm=24 
if %p1.lsh.sr%==14 set/a p1.lsh.sc=(%p1.lsh.sv% * 240) / 10 
if %p1.lsh.sr%==14 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==14 set   p1.lsh.sd=3 
if %p1.lsh.sr%==15 set/a p1.lsh.sm=28 
if %p1.lsh.sr%==15 set/a p1.lsh.sc=(%p1.lsh.sv% * 360) / 10 
if %p1.lsh.sr%==15 set/a p1.lsh.se=(%p1.lsh.sv% * 300) / 10 
if %p1.lsh.sr%==15 set   p1.lsh.sd=2 
if %p1.lsh.sr%==16 set/a p1.lsh.sm=34 
if %p1.lsh.sr%==16 set/a p1.lsh.sc=(%p1.lsh.sv% * 480) / 10 
if %p1.lsh.sr%==16 set/a p1.lsh.se=(%p1.lsh.sv% * 400) / 10 
if %p1.lsh.sr%==16 set   p1.lsh.sd=1 
if %p1.lsh.sr%==17 set/a p1.lsh.sm=40 
if %p1.lsh.sr%==17 set/a p1.lsh.sc=0 
if %p1.lsh.sr%==17 set/a p1.lsh.se=0 
if %p1.lsh.sr%==17   set p1.lsh.sd=0 
 
 
if %p2.lsh.sr%==0 set/a p2.lsh.sm=0 
if %p2.lsh.sr%==0 set/a p2.lsh.sc=300
if %p2.lsh.sr%==0 set/a p2.lsh.se=0 
if %p2.lsh.sr%==0   set p2.lsh.sd=Not Learnt 
if %p2.lsh.sr%==1 set/a p2.lsh.sm=4 
if %p2.lsh.sr%==1 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==1 set/a p2.lsh.se=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==1 set   p2.lsh.sd=Novice 
if %p2.lsh.sr%==2 set/a p2.lsh.sm=5 
if %p2.lsh.sr%==2 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==2 set/a p2.lsh.se=(%p1.lsh.sv% * 30) / 10 
if %p2.lsh.sr%==2 set   p2.lsh.sd=F 
if %p2.lsh.sr%==3 set/a p2.lsh.sm=6 
if %p2.lsh.sr%==3 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==3 set/a p2.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p2.lsh.sr%==3 set   p2.lsh.sd=E 
if %p2.lsh.sr%==4 set/a p2.lsh.sm=7 
if %p2.lsh.sr%==4 set/a p2.lsh.sc=(%p1.lsh.sv% * 50) / 10 
if %p2.lsh.sr%==4 set/a p2.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p2.lsh.sr%==4 set   p2.lsh.sd=D 
if %p2.lsh.sr%==5 set/a p2.lsh.sm=8 
if %p2.lsh.sr%==5 set/a p2.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==5 set/a p2.lsh.se=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==5 set   p2.lsh.sd=C 
if %p2.lsh.sr%==6 set/a p2.lsh.sm=9 
if %p2.lsh.sr%==6 set/a p2.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==6 set/a p2.lsh.se=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==6 set   p2.lsh.sd=B 
if %p2.lsh.sr%==7 set/a p2.lsh.sm=10 
if %p2.lsh.sr%==7 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==7 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==7 set   p2.lsh.sd=A 
if %p2.lsh.sr%==8 set/a p2.lsh.sm=11 
if %p2.lsh.sr%==8 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==8 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==8 set   p2.lsh.sd=9 
if %p2.lsh.sr%==9 set/a p2.lsh.sm=12 
if %p2.lsh.sr%==9 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==9 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==9 set   p2.lsh.sd=8 
if %p2.lsh.sr%==10 set/a p2.lsh.sm=14 
if %p2.lsh.sr%==10 set/a p2.lsh.sc=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==10 set/a p2.lsh.se=(%p1.lsh.sv% * 140) / 10 
if %p2.lsh.sr%==10 set   p2.lsh.sd=7 
if %p2.lsh.sr%==11 set/a p2.lsh.sm=16 
if %p2.lsh.sr%==11 set/a p2.lsh.sc=(%p1.lsh.sv% * 120) / 10 
if %p2.lsh.sr%==11 set/a p2.lsh.se=(%p1.lsh.sv% * 180) / 10 
if %p2.lsh.sr%==11 set   p2.lsh.sd=6 
if %p2.lsh.sr%==12 set/a p2.lsh.sm=18 
if %p2.lsh.sr%==12 set/a p2.lsh.sc=(%p1.lsh.sv% * 140) / 10 
if %p2.lsh.sr%==12 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==12 set   p2.lsh.sd=5 
if %p2.lsh.sr%==13 set/a p2.lsh.sm=20 
if %p2.lsh.sr%==13 set/a p2.lsh.sc=(%p1.lsh.sv% * 160) / 10 
if %p2.lsh.sr%==13 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==13 set   p2.lsh.sd=4 
if %p2.lsh.sr%==14 set/a p2.lsh.sm=24 
if %p2.lsh.sr%==14 set/a p2.lsh.sc=(%p1.lsh.sv% * 240) / 10 
if %p2.lsh.sr%==14 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==14 set   p2.lsh.sd=3 
if %p2.lsh.sr%==15 set/a p2.lsh.sm=28 
if %p2.lsh.sr%==15 set/a p2.lsh.sc=(%p1.lsh.sv% * 360) / 10 
if %p2.lsh.sr%==15 set/a p2.lsh.se=(%p1.lsh.sv% * 300) / 10 
if %p2.lsh.sr%==15 set   p2.lsh.sd=2 
if %p2.lsh.sr%==16 set/a p2.lsh.sm=34 
if %p2.lsh.sr%==16 set/a p2.lsh.sc=(%p1.lsh.sv% * 480) / 10 
if %p2.lsh.sr%==16 set/a p2.lsh.se=(%p1.lsh.sv% * 400) / 10 
if %p2.lsh.sr%==16 set   p2.lsh.sd=1 
if %p2.lsh.sr%==17 set/a p2.lsh.sm=40 
if %p2.lsh.sr%==17 set/a p2.lsh.sc=0 
if %p2.lsh.sr%==17 set/a p2.lsh.se=0 
if %p2.lsh.sr%==17   set p2.lsh.sd=0 
 
 
if %p1.wrg.sr%==0 set/a p1.wrg.sm=0 
if %p1.wrg.sr%==0 set/a p1.wrg.sc=800
if %p1.wrg.sr%==0 set/a p1.wrg.se=0 
if %p1.wrg.sr%==0   set p1.wrg.sd=Not Learnt 
if %p1.wrg.sr%==1 set/a p1.wrg.sm=4 
if %p1.wrg.sr%==1 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==1 set/a p1.wrg.se=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==1 set   p1.wrg.sd=Novice 
if %p1.wrg.sr%==2 set/a p1.wrg.sm=5 
if %p1.wrg.sr%==2 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==2 set/a p1.wrg.se=(%p1.wrg.sv% * 30) / 10 
if %p1.wrg.sr%==2 set   p1.wrg.sd=F 
if %p1.wrg.sr%==3 set/a p1.wrg.sm=6 
if %p1.wrg.sr%==3 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==3 set/a p1.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p1.wrg.sr%==3 set   p1.wrg.sd=E 
if %p1.wrg.sr%==4 set/a p1.wrg.sm=7 
if %p1.wrg.sr%==4 set/a p1.wrg.sc=(%p1.wrg.sv% * 50) / 10 
if %p1.wrg.sr%==4 set/a p1.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p1.wrg.sr%==4 set   p1.wrg.sd=D 
if %p1.wrg.sr%==5 set/a p1.wrg.sm=8 
if %p1.wrg.sr%==5 set/a p1.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==5 set/a p1.wrg.se=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==5 set   p1.wrg.sd=C 
if %p1.wrg.sr%==6 set/a p1.wrg.sm=9 
if %p1.wrg.sr%==6 set/a p1.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==6 set/a p1.wrg.se=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==6 set   p1.wrg.sd=B 
if %p1.wrg.sr%==7 set/a p1.wrg.sm=10 
if %p1.wrg.sr%==7 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==7 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==7 set   p1.wrg.sd=A 
if %p1.wrg.sr%==8 set/a p1.wrg.sm=11 
if %p1.wrg.sr%==8 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==8 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==8 set   p1.wrg.sd=9 
if %p1.wrg.sr%==9 set/a p1.wrg.sm=12 
if %p1.wrg.sr%==9 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==9 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==9 set   p1.wrg.sd=8 
if %p1.wrg.sr%==10 set/a p1.wrg.sm=14 
if %p1.wrg.sr%==10 set/a p1.wrg.sc=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==10 set/a p1.wrg.se=(%p1.wrg.sv% * 140) / 10 
if %p1.wrg.sr%==10 set   p1.wrg.sd=7 
if %p1.wrg.sr%==11 set/a p1.wrg.sm=16 
if %p1.wrg.sr%==11 set/a p1.wrg.sc=(%p1.wrg.sv% * 120) / 10 
if %p1.wrg.sr%==11 set/a p1.wrg.se=(%p1.wrg.sv% * 180) / 10 
if %p1.wrg.sr%==11 set   p1.wrg.sd=6 
if %p1.wrg.sr%==12 set/a p1.wrg.sm=18 
if %p1.wrg.sr%==12 set/a p1.wrg.sc=(%p1.wrg.sv% * 140) / 10 
if %p1.wrg.sr%==12 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==12 set   p1.wrg.sd=5 
if %p1.wrg.sr%==13 set/a p1.wrg.sm=20 
if %p1.wrg.sr%==13 set/a p1.wrg.sc=(%p1.wrg.sv% * 160) / 10 
if %p1.wrg.sr%==13 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==13 set   p1.wrg.sd=4 
if %p1.wrg.sr%==14 set/a p1.wrg.sm=24 
if %p1.wrg.sr%==14 set/a p1.wrg.sc=(%p1.wrg.sv% * 240) / 10 
if %p1.wrg.sr%==14 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==14 set   p1.wrg.sd=3 
if %p1.wrg.sr%==15 set/a p1.wrg.sm=28 
if %p1.wrg.sr%==15 set/a p1.wrg.sc=(%p1.wrg.sv% * 360) / 10 
if %p1.wrg.sr%==15 set/a p1.wrg.se=(%p1.wrg.sv% * 300) / 10 
if %p1.wrg.sr%==15 set   p1.wrg.sd=2 
if %p1.wrg.sr%==16 set/a p1.wrg.sm=34 
if %p1.wrg.sr%==16 set/a p1.wrg.sc=(%p1.wrg.sv% * 480) / 10 
if %p1.wrg.sr%==16 set/a p1.wrg.se=(%p1.wrg.sv% * 400) / 10 
if %p1.wrg.sr%==16 set   p1.wrg.sd=1 
if %p1.wrg.sr%==17 set/a p1.wrg.sm=40 
if %p1.wrg.sr%==17 set/a p1.wrg.sc=0 
if %p1.wrg.sr%==17 set/a p1.wrg.se=0 
if %p1.wrg.sr%==17   set p1.wrg.sd=0 
 
 
if %p2.wrg.sr%==0 set/a p2.wrg.sm=0 
if %p2.wrg.sr%==0 set/a p2.wrg.sc=800
if %p2.wrg.sr%==0 set/a p2.wrg.se=0 
if %p2.wrg.sr%==0   set p2.wrg.sd=Not Learnt 
if %p2.wrg.sr%==1 set/a p2.wrg.sm=4 
if %p2.wrg.sr%==1 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==1 set/a p2.wrg.se=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==1 set   p2.wrg.sd=Novice 
if %p2.wrg.sr%==2 set/a p2.wrg.sm=5 
if %p2.wrg.sr%==2 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==2 set/a p2.wrg.se=(%p1.wrg.sv% * 30) / 10 
if %p2.wrg.sr%==2 set   p2.wrg.sd=F 
if %p2.wrg.sr%==3 set/a p2.wrg.sm=6 
if %p2.wrg.sr%==3 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==3 set/a p2.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p2.wrg.sr%==3 set   p2.wrg.sd=E 
if %p2.wrg.sr%==4 set/a p2.wrg.sm=7 
if %p2.wrg.sr%==4 set/a p2.wrg.sc=(%p1.wrg.sv% * 50) / 10 
if %p2.wrg.sr%==4 set/a p2.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p2.wrg.sr%==4 set   p2.wrg.sd=D 
if %p2.wrg.sr%==5 set/a p2.wrg.sm=8 
if %p2.wrg.sr%==5 set/a p2.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==5 set/a p2.wrg.se=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==5 set   p2.wrg.sd=C 
if %p2.wrg.sr%==6 set/a p2.wrg.sm=9 
if %p2.wrg.sr%==6 set/a p2.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==6 set/a p2.wrg.se=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==6 set   p2.wrg.sd=B 
if %p2.wrg.sr%==7 set/a p2.wrg.sm=10 
if %p2.wrg.sr%==7 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==7 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==7 set   p2.wrg.sd=A 
if %p2.wrg.sr%==8 set/a p2.wrg.sm=11 
if %p2.wrg.sr%==8 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==8 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==8 set   p2.wrg.sd=9 
if %p2.wrg.sr%==9 set/a p2.wrg.sm=12 
if %p2.wrg.sr%==9 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==9 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==9 set   p2.wrg.sd=8 
if %p2.wrg.sr%==10 set/a p2.wrg.sm=14 
if %p2.wrg.sr%==10 set/a p2.wrg.sc=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==10 set/a p2.wrg.se=(%p1.wrg.sv% * 140) / 10 
if %p2.wrg.sr%==10 set   p2.wrg.sd=7 
if %p2.wrg.sr%==11 set/a p2.wrg.sm=16 
if %p2.wrg.sr%==11 set/a p2.wrg.sc=(%p1.wrg.sv% * 120) / 10 
if %p2.wrg.sr%==11 set/a p2.wrg.se=(%p1.wrg.sv% * 180) / 10 
if %p2.wrg.sr%==11 set   p2.wrg.sd=6 
if %p2.wrg.sr%==12 set/a p2.wrg.sm=18 
if %p2.wrg.sr%==12 set/a p2.wrg.sc=(%p1.wrg.sv% * 140) / 10 
if %p2.wrg.sr%==12 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==12 set   p2.wrg.sd=5 
if %p2.wrg.sr%==13 set/a p2.wrg.sm=20 
if %p2.wrg.sr%==13 set/a p2.wrg.sc=(%p1.wrg.sv% * 160) / 10 
if %p2.wrg.sr%==13 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==13 set   p2.wrg.sd=4 
if %p2.wrg.sr%==14 set/a p2.wrg.sm=24 
if %p2.wrg.sr%==14 set/a p2.wrg.sc=(%p1.wrg.sv% * 240) / 10 
if %p2.wrg.sr%==14 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==14 set   p2.wrg.sd=3 
if %p2.wrg.sr%==15 set/a p2.wrg.sm=28 
if %p2.wrg.sr%==15 set/a p2.wrg.sc=(%p1.wrg.sv% * 360) / 10 
if %p2.wrg.sr%==15 set/a p2.wrg.se=(%p1.wrg.sv% * 300) / 10 
if %p2.wrg.sr%==15 set   p2.wrg.sd=2 
if %p2.wrg.sr%==16 set/a p2.wrg.sm=34 
if %p2.wrg.sr%==16 set/a p2.wrg.sc=(%p1.wrg.sv% * 480) / 10 
if %p2.wrg.sr%==16 set/a p2.wrg.se=(%p1.wrg.sv% * 400) / 10 
if %p2.wrg.sr%==16 set   p2.wrg.sd=1 
if %p2.wrg.sr%==17 set/a p2.wrg.sm=40 
if %p2.wrg.sr%==17 set/a p2.wrg.sc=0 
if %p2.wrg.sr%==17 set/a p2.wrg.se=0 
if %p2.wrg.sr%==17   set p2.wrg.sd=0 
 
 
if %p1.arc.sr%==0 set/a p1.arc.sm=0 
if %p1.arc.sr%==0 set/a p1.arc.sc=1000
if %p1.arc.sr%==0 set/a p1.arc.se=0 
if %p1.arc.sr%==0   set p1.arc.sd=Not Learnt 
if %p1.arc.sr%==1 set/a p1.arc.sm=4 
if %p1.arc.sr%==1 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==1 set/a p1.arc.se=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==1 set   p1.arc.sd=Novice 
if %p1.arc.sr%==2 set/a p1.arc.sm=5 
if %p1.arc.sr%==2 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==2 set/a p1.arc.se=(%p1.arc.sv% * 30) / 10 
if %p1.arc.sr%==2 set   p1.arc.sd=F 
if %p1.arc.sr%==3 set/a p1.arc.sm=6 
if %p1.arc.sr%==3 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==3 set/a p1.arc.se=(%p1.arc.sv% * 40) / 10 
if %p1.arc.sr%==3 set   p1.arc.sd=E 
if %p1.arc.sr%==4 set/a p1.arc.sm=7 
if %p1.arc.sr%==4 set/a p1.arc.sc=(%p1.arc.sv% * 50) / 10 
if %p1.arc.sr%==4 set/a p1.arc.se=(%p1.arc.sv% * 40) / 10 
if %p1.arc.sr%==4 set   p1.arc.sd=D 
if %p1.arc.sr%==5 set/a p1.arc.sm=8 
if %p1.arc.sr%==5 set/a p1.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==5 set/a p1.arc.se=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==5 set   p1.arc.sd=C 
if %p1.arc.sr%==6 set/a p1.arc.sm=9 
if %p1.arc.sr%==6 set/a p1.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==6 set/a p1.arc.se=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==6 set   p1.arc.sd=B 
if %p1.arc.sr%==7 set/a p1.arc.sm=10 
if %p1.arc.sr%==7 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==7 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==7 set   p1.arc.sd=A 
if %p1.arc.sr%==8 set/a p1.arc.sm=11 
if %p1.arc.sr%==8 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==8 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==8 set   p1.arc.sd=9 
if %p1.arc.sr%==9 set/a p1.arc.sm=12 
if %p1.arc.sr%==9 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==9 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==9 set   p1.arc.sd=8 
if %p1.arc.sr%==10 set/a p1.arc.sm=14 
if %p1.arc.sr%==10 set/a p1.arc.sc=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==10 set/a p1.arc.se=(%p1.arc.sv% * 140) / 10 
if %p1.arc.sr%==10 set   p1.arc.sd=7 
if %p1.arc.sr%==11 set/a p1.arc.sm=16 
if %p1.arc.sr%==11 set/a p1.arc.sc=(%p1.arc.sv% * 120) / 10 
if %p1.arc.sr%==11 set/a p1.arc.se=(%p1.arc.sv% * 180) / 10 
if %p1.arc.sr%==11 set   p1.arc.sd=6 
if %p1.arc.sr%==12 set/a p1.arc.sm=18 
if %p1.arc.sr%==12 set/a p1.arc.sc=(%p1.arc.sv% * 140) / 10 
if %p1.arc.sr%==12 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==12 set   p1.arc.sd=5 
if %p1.arc.sr%==13 set/a p1.arc.sm=20 
if %p1.arc.sr%==13 set/a p1.arc.sc=(%p1.arc.sv% * 160) / 10 
if %p1.arc.sr%==13 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==13 set   p1.arc.sd=4 
if %p1.arc.sr%==14 set/a p1.arc.sm=24 
if %p1.arc.sr%==14 set/a p1.arc.sc=(%p1.arc.sv% * 240) / 10 
if %p1.arc.sr%==14 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==14 set   p1.arc.sd=3 
if %p1.arc.sr%==15 set/a p1.arc.sm=28 
if %p1.arc.sr%==15 set/a p1.arc.sc=(%p1.arc.sv% * 360) / 10 
if %p1.arc.sr%==15 set/a p1.arc.se=(%p1.arc.sv% * 300) / 10 
if %p1.arc.sr%==15 set   p1.arc.sd=2 
if %p1.arc.sr%==16 set/a p1.arc.sm=34 
if %p1.arc.sr%==16 set/a p1.arc.sc=(%p1.arc.sv% * 480) / 10 
if %p1.arc.sr%==16 set/a p1.arc.se=(%p1.arc.sv% * 400) / 10 
if %p1.arc.sr%==16 set   p1.arc.sd=1 
if %p1.arc.sr%==17 set/a p1.arc.sm=40 
if %p1.arc.sr%==17 set/a p1.arc.sc=0 
if %p1.arc.sr%==17 set/a p1.arc.se=0 
if %p1.arc.sr%==17   set p1.arc.sd=0 
 
 
if %p2.arc.sr%==0 set/a p2.arc.sm=0 
if %p2.arc.sr%==0 set/a p2.arc.sc=1000
if %p2.arc.sr%==0 set/a p2.arc.se=0 
if %p2.arc.sr%==0   set p2.arc.sd=Not Learnt 
if %p2.arc.sr%==1 set/a p2.arc.sm=4 
if %p2.arc.sr%==1 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==1 set/a p2.arc.se=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==1 set   p2.arc.sd=Novice 
if %p2.arc.sr%==2 set/a p2.arc.sm=5 
if %p2.arc.sr%==2 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==2 set/a p2.arc.se=(%p1.arc.sv% * 30) / 10 
if %p2.arc.sr%==2 set   p2.arc.sd=F 
if %p2.arc.sr%==3 set/a p2.arc.sm=6 
if %p2.arc.sr%==3 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==3 set/a p2.arc.se=(%p1.arc.sv% * 40) / 10 
if %p2.arc.sr%==3 set   p2.arc.sd=E 
if %p2.arc.sr%==4 set/a p2.arc.sm=7 
if %p2.arc.sr%==4 set/a p2.arc.sc=(%p1.arc.sv% * 50) / 10 
if %p2.arc.sr%==4 set/a p2.arc.se=(%p1.arc.sv% * 40) / 10 
if %p2.arc.sr%==4 set   p2.arc.sd=D 
if %p2.arc.sr%==5 set/a p2.arc.sm=8 
if %p2.arc.sr%==5 set/a p2.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==5 set/a p2.arc.se=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==5 set   p2.arc.sd=C 
if %p2.arc.sr%==6 set/a p2.arc.sm=9 
if %p2.arc.sr%==6 set/a p2.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==6 set/a p2.arc.se=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==6 set   p2.arc.sd=B 
if %p2.arc.sr%==7 set/a p2.arc.sm=10 
if %p2.arc.sr%==7 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==7 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==7 set   p2.arc.sd=A 
if %p2.arc.sr%==8 set/a p2.arc.sm=11 
if %p2.arc.sr%==8 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==8 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==8 set   p2.arc.sd=9 
if %p2.arc.sr%==9 set/a p2.arc.sm=12 
if %p2.arc.sr%==9 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==9 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==9 set   p2.arc.sd=8 
if %p2.arc.sr%==10 set/a p2.arc.sm=14 
if %p2.arc.sr%==10 set/a p2.arc.sc=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==10 set/a p2.arc.se=(%p1.arc.sv% * 140) / 10 
if %p2.arc.sr%==10 set   p2.arc.sd=7 
if %p2.arc.sr%==11 set/a p2.arc.sm=16 
if %p2.arc.sr%==11 set/a p2.arc.sc=(%p1.arc.sv% * 120) / 10 
if %p2.arc.sr%==11 set/a p2.arc.se=(%p1.arc.sv% * 180) / 10 
if %p2.arc.sr%==11 set   p2.arc.sd=6 
if %p2.arc.sr%==12 set/a p2.arc.sm=18 
if %p2.arc.sr%==12 set/a p2.arc.sc=(%p1.arc.sv% * 140) / 10 
if %p2.arc.sr%==12 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==12 set   p2.arc.sd=5 
if %p2.arc.sr%==13 set/a p2.arc.sm=20 
if %p2.arc.sr%==13 set/a p2.arc.sc=(%p1.arc.sv% * 160) / 10 
if %p2.arc.sr%==13 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==13 set   p2.arc.sd=4 
if %p2.arc.sr%==14 set/a p2.arc.sm=24 
if %p2.arc.sr%==14 set/a p2.arc.sc=(%p1.arc.sv% * 240) / 10 
if %p2.arc.sr%==14 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==14 set   p2.arc.sd=3 
if %p2.arc.sr%==15 set/a p2.arc.sm=28 
if %p2.arc.sr%==15 set/a p2.arc.sc=(%p1.arc.sv% * 360) / 10 
if %p2.arc.sr%==15 set/a p2.arc.se=(%p1.arc.sv% * 300) / 10 
if %p2.arc.sr%==15 set   p2.arc.sd=2 
if %p2.arc.sr%==16 set/a p2.arc.sm=34 
if %p2.arc.sr%==16 set/a p2.arc.sc=(%p1.arc.sv% * 480) / 10 
if %p2.arc.sr%==16 set/a p2.arc.se=(%p1.arc.sv% * 400) / 10 
if %p2.arc.sr%==16 set   p2.arc.sd=1 
if %p2.arc.sr%==17 set/a p2.arc.sm=40 
if %p2.arc.sr%==17 set/a p2.arc.sc=0 
if %p2.arc.sr%==17 set/a p2.arc.se=0 
if %p2.arc.sr%==17   set p2.arc.sd=0 

if %saves.var%==1 goto store
::save
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Autosaving
echo.
echo.                             
ren saves.lmc saves.bat
echo set name1=%name1%> saves.bat
echo set name2=%name2%>> saves.bat
echo set/a p1.set.hl=%p1.set.hl%>> saves.bat
echo set/a p2.set.hl=%p2.set.hl%>> saves.bat
echo set/a p1.set.en=%p1.set.en%>> saves.bat
echo set/a p2.set.en=%p2.set.en%>> saves.bat

echo set/a p1sh=%p1sh% >> saves.bat
echo set/a p2sh=%p2sh% >> saves.bat
echo set/a e1sh=%e1sh% >> saves.bat
echo set/a e2sh=%e2sh% >> saves.bat
echo set/a d1sh=%d1sh% >> saves.bat
echo set/a d2sh=%d2sh% >> saves.bat

echo set/a p1.set.df=%p1.set.df% >> saves.bat
echo set/a p2.set.df=%p2.set.df% >> saves.bat
echo set/a p1.def=%p1.def% >> saves.bat
echo set/a p2.def=%p1.def% >> saves.bat
echo set/a score1=%score1% >> saves.bat
echo set/a score2=%score2% >> saves.bat
echo set/a p1.exp=%p1.exp% >> saves.bat
echo set/a p2.exp=%p2.exp% >> saves.bat

echo set mainselect1=attack>> saves.bat
echo set mainselect2=attack>> saves.bat
echo set store1=next>> saves.bat
echo set store2=next>> saves.bat
echo set p1.ews.vis=%p1.ews.vis% >> saves.bat
echo set p1.las.vis=%p1.ews.vis% >> saves.bat
echo set p1.fas.vis=%p1.ews.vis% >> saves.bat
echo set p2.ews.vis=%p2.ews.vis% >> saves.bat
echo set p2.las.vis=%p2.ews.vis% >> saves.bat
echo set p2.fas.vis=%p2.ews.vis% >> saves.bat
echo set/a p1.lmc.a=%p1.lmc.a% >> saves.bat
echo set/a p2.lmc.a=%p2.lmc.a% >> saves.bat
echo set/a p1.test.a=%p1.test.a% >> saves.bat
echo set/a p2.test.a=%p2.test.a% >> saves.bat

echo set/a p1.ews.a=%p1.ews.a% >> saves.bat
echo set/a p2.ews.a=%p2.ews.a% >> saves.bat
echo set/a p1.las.a=%p1.las.a% >> saves.bat
echo set/a p2.las.a=%p2.las.a% >> saves.bat
echo set/a p1.fas.a=%p1.fas.a% >> saves.bat
echo set/a p2.fas.a=%p2.fas.a% >> saves.bat
echo set/a p1.att.sr=%p1.att.sr% >> saves.bat
echo set/a p2.att.sr=%p2.att.sr% >> saves.bat
echo set/a p1.fus.sr=%p1.fus.sr% >> saves.bat
echo set/a p2.fus.sr=%p2.fus.sr% >> saves.bat
echo set/a p1.hla.sr=%p1.hla.sr% >> saves.bat
echo set/a p2.hla.sr=%p2.hla.sr% >> saves.bat
echo set/a p1.res.sr=%p1.res.sr% >> saves.bat
echo set/a p2.res.sr=%p2.res.sr% >> saves.bat
echo set/a p1.sok.sr=%p1.sok.sr% >> saves.bat
echo set/a p2.sok.sr=%p2.sok.sr% >> saves.bat
echo set/a p1.lig.sr=%p1.lig.sr% >> saves.bat
echo set/a p2.lig.sr=%p2.lig.sr% >> saves.bat
echo set/a p1.hdr.sr=%p1.hdr.sr% >> saves.bat
echo set/a p2.hdr.sr=%p2.hdr.sr% >> saves.bat
echo set/a p1.get.sr=%p1.get.sr% >> saves.bat
echo set/a p2.get.sr=%p2.get.sr% >> saves.bat
echo set/a p1.ice.sr=%p1.ice.sr% >> saves.bat
echo set/a p2.ice.sr=%p2.ice.sr% >> saves.bat
echo set/a p1.msh.sr=%p1.msh.sr% >> saves.bat
echo set/a p2.msh.sr=%p2.msh.sr% >> saves.bat
echo set/a p1.hly.sr=%p1.hly.sr% >> saves.bat
echo set/a p2.hly.sr=%p2.hly.sr% >> saves.bat
echo set/a p1.gen.sr=%p1.gen.sr% >> saves.bat
echo set/a p2.gen.sr=%p2.gen.sr% >> saves.bat
echo set/a p1.llc.sr=%p1.llc.sr% >> saves.bat
echo set/a p2.llc.sr=%p2.llc.sr% >> saves.bat
echo set/a p1.lbr.sr=%p1.lbr.sr% >> saves.bat
echo set/a p2.lbr.sr=%p2.lbr.sr% >> saves.bat
echo set/a p1.llb.sr=%p1.llb.sr% >> saves.bat
echo set/a p2.llb.sr=%p2.llb.sr% >> saves.bat
echo set/a p1.lbl.sr=%p1.lbl.sr% >> saves.bat
echo set/a p2.lbl.sr=%p2.lbl.sr% >> saves.bat
echo set/a p1.smh.sr=%p1.smh.sr% >> saves.bat
echo set/a p2.smh.sr=%p2.smh.sr% >> saves.bat
echo set/a p1.fsh.sr=%p1.fsh.sr% >> saves.bat
echo set/a p2.fsh.sr=%p2.fsh.sr% >> saves.bat
echo set/a p1.fbr.sr=%p1.fbr.sr% >> saves.bat
echo set/a p2.fbr.sr=%p2.fbr.sr% >> saves.bat
echo set/a p1.fsl.sr=%p1.fsl.sr% >> saves.bat
echo set/a p2.fsl.sr=%p2.fsl.sr% >> saves.bat
echo set/a p1.wwt.sr=%p1.wwt.sr% >> saves.bat
echo set/a p2.wwt.sr=%p2.wwt.sr% >> saves.bat
echo set/a p1.blk.sr=%p1.blk.sr% >> saves.bat
echo set/a p2.blk.sr=%p2.blk.sr% >> saves.bat
echo set/a p1.lsh.sr=%p1.lsh.sr% >> saves.bat
echo set/a p2.lsh.sr=%p2.lsh.sr% >> saves.bat
echo set/a p1.wrg.sr=%p1.wrg.sr% >> saves.bat
echo set/a p2.wrg.sr=%p2.wrg.sr% >> saves.bat
echo set/a p1.arc.sr=%p1.arc.sr% >> saves.bat
echo set/a p2.arc.sr=%p2.arc.sr% >> saves.bat

echo set/a ai.a=%ai.a% >> saves.bat
echo set/a ai.dif=%ai.dif% >> saves.bat
echo set ai.dif.v=%ai.dif.v% >> saves.bat
ren saves.bat saves.lmc

goto randc




::==========----------Ability Cooldowns

::only player 2 will acess 1 and vice versa
:1ability.cl
set/a p2.sok.ct-=1
set/a p2.hdr.ct-=1
set/a p2.hly.ct-=1
set/a p2.get.ct-=1
set/a p2.gen.ct-=1
set/a p2.llb.ct-=1
set/a p2.lbl.ct-=1
set/a p2.bla.ct-=1
set/a p2.fbr.ct-=1
set/a p2.fhl.ct-=1
set/a p2.fal.ct-=1
set/a p2.blk.ct-=1
set/a p2.wrg.ct-=1
set/a p2.arc.ct-=1

if %p2.sok.ct% lss 1 set/a p2.sok.ct=0
if %p2.hdr.ct% lss 1 set/a p2.hdr.ct=0
if %p2.hly.ct% lss 1 set/a p2.hly.ct=0
if %p2.get.ct% lss 1 set/a p2.get.ct=0
if %p2.gen.ct% lss 1 set/a p2.gen.ct=0
if %p2.llb.ct% lss 1 set/a p2.llb.ct=0
if %p2.lbl.ct% lss 1 set/a p2.lbl.ct=0
if %p2.bla.ct% lss 1 set/a p2.bla.ct=0
if %p2.fbr.ct% lss 1 set/a p2.fbr.ct=0
if %p2.fhl.ct% lss 1 set/a p2.fhl.ct=0
if %p2.fal.ct% lss 1 set/a p2.fal.ct=0
if %p2.blk.ct% lss 1 set/a p2.blk.ct=0
if %p2.wrg.ct% lss 1 set/a p2.wrg.ct=0
if %p2.arc.ct% lss 1 set/a p2.arc.ct=0
goto 1abl.pass



::==========----------abilitycooldown 2
:2ability.cl
set/a p1.sok.ct-=1
set/a p1.hdr.ct-=1
set/a p1.hly.ct-=1
set/a p1.get.ct-=1
set/a p1.gen.ct-=1
set/a p1.llb.ct-=1
set/a p1.lbl.ct-=1
set/a p1.bla.ct-=1
set/a p1.fbr.ct-=1
set/a p1.fhl.ct-=1
set/a p1.fal.ct-=1
set/a p1.blk.ct-=1
set/a p1.wrg.ct-=1
set/a p1.arc.ct-=1

if %p1.sok.ct% lss 1 set/a p1.sok.ct=0
if %p1.hdr.ct% lss 1 set/a p1.hdr.ct=0
if %p1.hly.ct% lss 1 set/a p1.hly.ct=0
if %p1.get.ct% lss 1 set/a p1.get.ct=0
if %p1.gen.ct% lss 1 set/a p1.gen.ct=0
if %p1.llb.ct% lss 1 set/a p1.llb.ct=0
if %p1.lbl.ct% lss 1 set/a p1.lbl.ct=0
if %p1.bla.ct% lss 1 set/a p1.bla.ct=0
if %p1.fbr.ct% lss 1 set/a p1.fbr.ct=0
if %p1.fhl.ct% lss 1 set/a p1.fhl.ct=0
if %p1.fal.ct% lss 1 set/a p1.fal.ct=0
if %p1.blk.ct% lss 1 set/a p1.blk.ct=0
if %p1.wrg.ct% lss 1 set/a p1.wrg.ct=0
if %p1.arc.ct% lss 1 set/a p1.arc.ct=0
goto 2abl.pass

::=================================----------------==::





:selection1
set/a p1.dtotal+=%p1.damage%
if %p1.def% lss 1 goto dpens1
set/a p1.def.cal=%p1.def% - ((%p1.damage% /2) * %p2.defpen%) / 15
if %p1.def.cal% lss 0 goto dpens1
set/a p1.def.cal=(%p1.def% * %p1.defrate%) / 10
if %p2.defpen%==0 goto dpenk1
if %p1.def.cal% gtr %p1.damage% goto dpenm1
set/a p1.def-=((%p1.damage% /2) * %p2.defpen%) / 15
if %p1.def% lss 0 goto dpens1
goto dpenk1
:dpenm1
set/a p1.def-=((%p1.damage% /2) * %p2.defpen%) / 30
goto sel.1grid
:dpens1
set/a p1.def=0
:dpenk1
set/a p1.dr=(%p1.damage% - %p1.def.cal%)
set/a p1.def.cal=0
set/a p1.damage=%p1.dr%
set/a p1.health-=%p1.damage%
set/a p1.damage=0
:sel.1grid
if %p1.health% lss 1 goto die1
if %p2.health% lss 1 goto die2
goto 1ability.cl
:1abl.pass
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.   -                    -
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
::Locked Skils

if %mainselect1%==getsuga goto getsuga1
if %mainselect1%==sokatsui goto sokat1
if %mainselect1%==light goto light1
if %mainselect1%==hdrain goto hdrain1

::Skillsets

if %p1.test.a%==1 goto p1.test
if %p1.lmc.a%==1 goto p1.lmc
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
if %mainselect1%==cero goto p1.llc
if %mainselect1%==lunar goto p1.llb
if %mainselect1%==msh goto p1.lmsh
if %mainselect1%==blossom goto p1.lbl
if %mainselect1%==blade goto p1.blade

goto p1.na

:p1.fas
if %mainselect1%==smash goto p1.smash
if %mainselect1%==fheal goto p1.fheal
if %mainselect1%==msh goto p1.fmsh
if %mainselect1%==bradish goto p1.fbr
if %mainselect1%==falias goto p1.fwr
goto p1.na


:p1.lmc
if %mainselect1%==wingw goto p1.wwt
if %mainselect1%==black goto p1.blk
if %mainselect1%==lsh goto p1.lsh
if %mainselect1%==wingr goto p1.wrg
if %mainselect1%==arc goto p1.arc
goto p1.na

:p1.test
if %mainselect1%==ice goto icespear1
if %mainselect1%==heal goto eheal1
if %mainselect1%==msh goto p1.emsh
if %mainselect1%==holy goto p1.hly
if %mainselect1%==genesis goto p1.gen
if %mainselect1%==cero goto p1.llc
if %mainselect1%==lunar goto p1.llb
if %mainselect1%==blossom goto p1.lbl
if %mainselect1%==blade goto p1.blade
if %mainselect1%==smash goto p1.smash
if %mainselect1%==fheal goto p1.fheal
if %mainselect1%==brandish goto p1.fbr
if %mainselect1%==falias goto p1.fwr
if %mainselect1%==wingw goto p1.wwt
if %mainselect1%==black goto p1.blk
if %mainselect1%==lsh goto p1.lsh
if %mainselect1%==wingr goto p1.wrg
if %mainselect1%==arc goto p1.arc

goto p1.na


:p1.na

echo. %mainselect1% is not an avaliable skill
timeout 1 >nul
goto selection1


:selection2
cls
set/a p2.dtotal+=%p2.damage%
if %p2.def% lss 1 goto dpens2
set/a p2.def.cal=%p2.def% - ((%p2.damage% /2) * %p1.defpen%) / 15
if %p2.def.cal% lss 0 goto dpens2
set/a p2.def.cal=(%p2.def% * %p2.defrate%) / 10
if %p1.defpen%==0 goto dpenk2
if %p2.def.cal% gtr %p2.damage% goto dpenm2
set/a p2.def-=((%p2.damage% /2) * %p1.defpen%) / 15
if %p2.def% lss 0 goto dpens2
goto dpenk2
:dpenm2
set/a p2.def-=((%p2.damage% /2) * %p1.defpen%) / 30
goto sel.2grid
:dpens2
set/a p2.def=0
:dpenk2
set/a p2.dr=(%p2.damage% - %p2.def.cal%)
set/a p2.def.cal=0
set/a p2.damage=%p2.dr%
set/a p2.health-=%p2.damage%
set/a p2.damage=0
:sel.2grid
if %p2.health% lss 1 goto die2
if %p1.health% lss 1 goto die1
goto 2ability.cl
:2abl.pass
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence
echo.
echo. Input Playername for stats
echo. What skill would you like to use?
echo. %name2%'s turn
if %ai.a%==1 goto ai.select
set/p mainselect2=
:ai.chosen

if %mainselect2%==%name1% goto stat21
if %mainselect2%==%name2% goto stat22

if %mainselect2%==healmin goto healmin2
if %mainselect2%==attack goto att2
if %mainselect2%==rest goto res2
if %mainselect2%==healmax goto healmax2
if %mainselect2%==healmid goto healmid2
if %mainselect2%==endrain goto endrain2
if %mainselect2%==fusion goto fusion2

::Locked Skils

if %mainselect2%==getsuga goto getsuga2
if %mainselect2%==sokatsui goto sokat2
if %mainselect2%==light goto light2
if %mainselect2%==hdrain goto hdrain2

::Skillsets
if %p2.test.a%==1 goto p2.test
if %p2.lmc.a%==1 goto p2.lmc
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
if %mainselect2%==cero goto p2.llc
if %mainselect2%==lunar goto p2.llb
if %mainselect2%==msh goto p2.lmsh
if %mainselect2%==blossom goto p2.lbl
if %mainselect2%==blade goto p2.blade

goto p2.na

:p2.fas
if %mainselect2%==smash goto p2.smash
if %mainselect2%==fheal goto p2.fheal
if %mainselect2%==msh goto p2.fmsh
if %mainselect2%==brandish goto p2.fbr
if %mainselect2%==falias goto p2.fwr
goto p2.na

:p2.lmc
if %mainselect2%==wingw goto p2.wwt
if %mainselect2%==black goto p2.blk
if %mainselect2%==lsh goto p2.lsh
if %mainselect2%==wingr goto p2.wrg
if %mainselect2%==arc goto p2.arc
goto p2.na

:p2.test
if %mainselect2%==ice goto icespear2
if %mainselect2%==heal goto eheal2
if %mainselect2%==msh goto p2.emsh
if %mainselect2%==holy goto p2.hly
if %mainselect2%==genesis goto p2.gen
if %mainselect2%==cero goto p2.llc
if %mainselect2%==lunar goto p2.llb
if %mainselect2%==blossom goto p2.lbl
if %mainselect2%==blade goto p2.blade
if %mainselect2%==smash goto p2.smash
if %mainselect2%==fheal goto p2.fheal
if %mainselect2%==brandish goto p2.fbr
if %mainselect2%==falias goto p2.fwr
if %mainselect2%==wingw goto p2.wwt
if %mainselect2%==black goto p2.blk
if %mainselect2%==lsh goto p2.lsh
if %mainselect2%==wingr goto p2.wrg
if %mainselect2%==arc goto p2.arc
goto p2.na


:p2.na

echo. %mainselect2% is not an avaliable skill
timeout 1 >nul
goto selection2

:no.energy1
echo Not enough energy, sorry.
timeout 2 >nul
goto sel.1grid

:no.energy2
echo Not enough energy, sorry.
timeout 2 >nul
goto sel.2grid

::AI
:ai.select
timeout 1 >nul
set/a ai.p1h=%p1.health%
set ai.choice=0
set/a ai.att=0

::attcheck
set/a att.c=(10 * %random%) / 32768 + 10
set/a att.d=(%att.c% * %p2.att.sm%) / 10
set/a ai.p1h-=%att.d%
if %ai.p1h% lss 0 set ai.att=100
if %ai.p1h% lss 20 set ai.att=60 - (%ai.p1h% * 2)
if %ai.p1h% lss 50 set/a ai.att=30 - %ai.p1h%
if %ai.p1h% lss 100 set/a ai.att=10 - (%ai.p1h% - 100)
if %ai.dif%==1 set/a ai.att-=20
if %ai.dif%==3 set/a ai.att+=20
set/a ai.att+=%p1.att.sr% * 2
if not %ai.dif%==1 set/a ai.att+=(40 * %random%) / 32768 + 1

set/a ai.chance=(3 * %random%) / 32768 + 1
if %ai.chance%==3 set/a ai.att+=30
set/a ai.p1h=%p1.health%

::rescheck
set/a rest.c=%p1.energy% / 3
set/a ai.res=(40 * %random%) / 32768 + 1
if %p2.energy% lss %rest.c% set/a ai.res+=40
if not %ai.dif%==1 set/a ai.res+=20
if %ai.dif%==1 set/a ai.res+=40
if %p2.energy% lss 30 set/a ai.res+=40
if %p2.energy% lss 10 set/a ai.res+=40

::hlcheck
set/a hl.f=%p1.health% / 4 * 3
set/a hl.c=%p1.health% / 2
set/a hl.d=%p1.health% / 4
set/a hl.f=%p1.health% / 4 * 3
set/a ai.hla=(20 * %random%) / 32768 + 1
if %p2.health% lss %hl.c% set/a ai.hla=50
if %p2.health% lss %hl.d% set/a ai.hla=90
if %p2.health% lss %hl.f% set/a ai.hla=120
if %p2.health% lss 30 set/a ai.hla=120
if %ai.dif%==2 set/a ai.hla+=20
if %ai.dif%==3 set/a ai.hla+=20
if not %ai.dif%==1 goto hl.checkp
if %p2.ews.a%==1 (
set/a ai.hla+= 30 
)
if %p2.fas.a%==1 (
set/a ai.hla+= 30 
)
:hl.checkp
set/a hl.e=(60 * %p2.hla.sm%) / 10
if %p2.energy% gtr 20 (
	set ai.hla.c=healmid
) else (
 set ai.hla.c=healmin
)
if %p2.energy% gtr %hl.e% set ai.hla.c=healmax

::fuscheck
if %ai.dif%==1 set/a ai.fus=80
if %ai.dif%==2 set/a ai.fus=40
if %ai.dif%==3 set.a ai.fus=20
set/a ai.fus+=%p2.fus.sr% * 3



::ai.action
:ai.action
set/a ai.nochoice=0
if %ai.res% gtr %ai.att% set/a ai.nochoice=%ai.res%
if %ai.hla% gtr %ai.nochoice% set/a ai.nochoice=%ai.hla%
if %ai.fus% gtr %ai.nochoice% set/a ai.nochoice=%ai.fus%
if %ai.att% gtr %ai.nochoice% set/a ai.nochoice=%ai.att%

if %ai.nochoice%==%ai.att% set mainselect2=attack
if %ai.nochoice%==%ai.res% set mainselect2=rest
if %ai.nochoice%==%ai.fus% set mainselect2=fusion
if %ai.nochoice%==%ai.hla% set mainselect2=%ai.hla.c%

if %p1.ews.a%==1 goto ai.ews.c
if %p1.las.a%==1 goto ai.las.c
if %p1.fas.a%==1 goto ai.fas.c
goto ai.chosen




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
set/a hd.e=2 * %hd.a% - 20
set/a hd.a=(%hd.a% * %p1.fus.sm%) / 10
set/a hd.e=(%hd.e% * %p1.fus.sm%) / 10
if %p1.energy% LSS %hd.a% goto no.energy1
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
set/a hd.e=2 * %hd.a% - 20
set/a hd.a=(%hd.a% * %p2.fus.sm%) / 10
set/a hd.e=(%hd.e% * %p2.fus.sm%) / 10
if %p2.energy% LSS %hd.a% goto no.energy2
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

:: REST

:res1
if %p1.ews.a%==1 goto 1eres
if %p1.las.a%==1 goto 1lres
if %p1.fas.a%==1 goto 1fres
if %p1.lmc.a%==1 goto 1lmrs
if %p1.test.a%==1 goto 1tess

set/a rest=(20 * %p1.res.sm%) / 10
goto res1.c

:1eres
set/a rest=(40 * %p1.res.sm%) / 10
goto res1.c

:1lres
set/a rest=(20 * %p1.res.sm%) / 10
goto res1.c

:1fres
set/a rest=(30 * %p1.res.sm%) / 10
goto res1.c

:1lmrs
set/a rest=(50 * %p1.res.sm%) / 10
goto res1.c

:1tess
set/a rest=500
goto res1.c

:res1.c
cls
echo.
echo.
echo.
echo.
echo. ENERGY + %rest%                  
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
set/a p1.energy+=%rest%
goto selection2

:res2
if %p2.ews.a%==1 goto 2eres
if %p2.las.a%==1 goto 2lres
if %p2.fas.a%==1 goto 2fres
if %p2.lmc.a%==1 goto 2lmrs
if %p2.test.a%==1 goto 2tess

set/a rest=(20 * %p2.res.sm%) / 10
goto res2.c

:2eres
set/a rest=(40 * %p2.res.sm%) / 10
goto res2.c

:2lres
set/a rest=(20 * %p2.res.sm%) / 10
goto res2.c

:2fres
set/a rest=(30 * %p2.res.sm%) / 10
goto res2.c

:2lmrs
set/a rest=(50 * %p2.res.sm%) / 10
goto res2.c

:2tess
set/a rest=500
goto res2.c

:res2.c
cls
echo.
echo.
echo.
echo.
echo.                   ENERGY + %rest%                  
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
set/a p2.energy+=%rest%
goto selection1

:: Normal ATTACK

:att1
set /a crit.c=(3 * %random%) / 32768 + 1
set /a crit.c=(3 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c1
:att.c.1
set /a crit.b=(9 * %random%) / 32768 + 3
set /a crit.d=5 * %crit.b%
set/a crit.d=(%crit.d% * %p1.att.sm%) / 10
set crit.a=CRITICAL:%crit.d%
goto attcrit1

:att.c1
set/a crit.d=(10 * %random%) / 32768 + 10
set/a crit.d=(%crit.d% * %p1.att.sm%) / 10
set crit.a=HEALTH-%crit.d%

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
timeout 0 >nul
set/a p2.damage=%crit.d%
goto selection2

:att2
set /a crit.c=(3 * %random%) / 32768 + 1
set /a crit.c=(3 * %random%) / 32768 + 1
if not %crit.c%==2 goto att.c2
:att.c.2
set /a crit.b=(9 * %random%) / 32768 + 3
set /a crit.d=5 * %crit.b%
set/a crit.d=(%crit.d% * %p2.att.sm%) / 10
set crit.a=CRITICAL:%crit.d%
goto attcrit2

:att.c2
set/a crit.d=(10 * %random%) / 32768 + 10
set/a crit.d=(%crit.d% * %p2.att.sm%) / 10
set crit.a=HEALTH-%crit.d%


:attcrit2
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
timeout 0 >nul
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
set/a hl=(60 * %p2.hla.sm%) /10
if %p2.energy% LSS %hl% goto no.energy2
set/a p2.energy-=%hl%
set/a p2.health+=%hl%
cls
echo.
echo.
echo.
echo.
echo.                     ENERGY -%hl%
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
echo.                      HEALTH +%hl%
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
goto selection1

:healmax1
set/a hl=(60 * %p1.hla.sm%) /10
if %p1.energy% LSS %hl% goto no.energy1
set/a p1.energy-=%hl%
set/a p1.health+=%hl%
cls
echo.
echo.
echo.
echo.
echo.  ENERGY -%hl%
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
echo.  HEALTH + %hl%
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
if %p2.get.ct%==0 goto getsuga2.k
if %p2.test.a%==1 goto getsuga2.k
echo. You have to regain your focus, wait %p2.get.ct% turns.
timeout 2 >nul
goto 2abl.pass

:getsuga2.k
if %p2.test.a%==1 goto getsuga2.c
if %p2.get.sr% gtr 0 goto getsuga2.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:getsuga2.c
set/a gets.c=(8 * %random%) / 32768 + 1
set/a gets.a=160 + (gets.c * 10)
set/a gets.e=200 + (gets.c * 10)

set/a gets.e= (%gets.e% * %p2.get.sm%) / 10
set/a gets.a= (%gets.a% * %p2.get.sm%) / 10

set/a p1.damage=%gets.a%
set/a p2.energy-=%gets.e%
set/a p2.ability.cl=1
set/a p2.get.ct=3

if %p2.energy% LSS %gets.e% goto no.energy2
cls
cls
echo.
echo.
echo.
echo.
echo.                      ENERGY-%gets.e%
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
echo.                      ENERGY-%gets.e%
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
goto selection1


:getsuga1
if %p1.get.ct%==0 goto getsuga1.k
if %p1.test.a%==1 goto getsuga1.k
echo. You have to regain your focus, wait %p1.get.ct% turns.
timeout 2 >nul
goto 1abl.pass

:getsuga1.k
if %p1.test.a%==1 goto getsuga1.c
if %p1.get.sr% gtr 0 goto getsuga1.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:getsuga1.c
set/a gets.c=(8 * %random%) / 32768 + 1
set/a gets.a=160 + (gets.c * 10)
set/a gets.e=200 + (gets.c * 10)
set/a gets.a= (%gets.a% * %p1.get.sm%) / 10
set/a gets.e= (%gets.e% * %p1.get.sm%) / 10

set/a p2.damage=%gets.a%
set/a p1.energy-=%gets.e%
set/a p1.get.ct=3

if %p1.energy% LSS %gets.e% goto no.energy1
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%gets.e%
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
echo. ENERGY-%gets.e%
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
goto selection2


::====--Locked Skill: Hado 33, Sokatsui.

:sokat1
if %p1.sok.ct%==0 goto sokat1.k
if %p1.test.a%==1 goto sokat1.k
echo. You have to regain your focus, wait %p1.sok.ct% turns.
timeout 2 >nul
goto 1abl.pass
:sokat1.k
if %p1.test.a%==1 goto sokat1.c
if not %p1.sok.sr%==0 goto sokat1.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:sokat1.c
set/a sok.dc=(6 * %random%) / 32768 + 1
set/a sok.d= (%sok.dc% * 5) + 30
set/a sok.e= (%sok.dc% * 5) + 40
set/a sok.d= (%sok.d% * %p1.sok.sm%) / 10
set/a sok.e= (%sok.e% * %p1.sok.sm%) /10
if %p1.energy% lss %sok.e% goto no.energy1
set sok.vis=HEALTH
set/a sok.cr=(2 * %random%) / 32768 + 1
if %sok.cr%==1 goto sokat
set/a sok.fd=0
set/a sok.fr=(4 * %random%) / 32768 + 1
set/a sok.fd=(%sok.fr% * 5 * %p1.sok.sm%) / 10
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
set/a p1.sok.ct=2
if %sok.cr%==1 goto selection2
set/a p1.health-=%sok.fd%
set/a p2.health-=%sok.fd%
goto selection2

::p2 Sokatsui

:sokat2
if %p2.sok.ct%==0 goto sokat2.k
if %p2.test.a%==1 goto sokat2.k
echo. You have to regain your focus, wait %p2.sok.ct% turns.
timeout 2 >nul
goto 2abl.pass
:sokat2.k
if %p2.test.a%==1 goto sokat2.c
if not %p2.sok.sr%==0 goto sokat2.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:sokat2.c
set/a sok.dc=(6 * %random%) / 32768 + 1
set/a sok.d= (%sok.dc% * 5) + 30
set/a sok.e= (%sok.dc% * 5) + 40
set/a sok.d= (%sok.d% * %p2.sok.sm%) / 10
set/a sok.e= (%sok.e% * %p2.sok.sm%) / 10
if %p2.energy% lss %sok.e% goto no.energy2
set sok.vis=HEALTH
set/a sok.cr=(2 * %random%) / 32768 + 1
if %sok.cr%==1 goto sokat
set/a sok.fd=0
set/a sok.fr=(4 * %random%) / 32768 + 1
set/a sok.fd=(%sok.fr% * 5 * %p1.sok.sm% ) /10
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
set/a p2.sok.ct=2
if %sok.cr%==1 goto selection1
set/a p2.health-=%sok.fd%
set/a p1.health-=%sok.fd%
goto selection1


::==Light of the Sky, Lightning
::p1

:light1
if %p1.test.a%==1 goto p1.light.c
if %p1.lig.sr% gtr 0 goto p1.light.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.light.c
set/a lig.dc=(20 * %random%) / 32768 + 1
set/a lig.d= (%lig.dc% * 5) + 40
set/a lig.e= (%lig.dc% * 5) + 60
set/a lig.d= (%lig.d% * %p1.lig.sm%) / 10
set/a lig.e= (%lig.e% * %p1.lig.sm%) / 10

if %p1.energy% lss %lig.e% goto no.energy1
set lig.vis=HEALTH
set/a lig.cr=(2 * %random%) / 32768 + 1
if %lig.cr%==2 goto light1.c
set/a lig.fd=0
set/a lig.fr=(8 * %random%) / 32768 + 1
set/a lig.fd=%lig.fr% * 5
set/a lig.fd= (%lig.fd% * %p1.lig.sm%) / 10
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
if %p2.test.a%==1 goto p2.light.c
if %p2.lig.a%==1 goto p2.light.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.light.c
set/a lig.dc=(20 * %random%) / 32768 + 1
set/a lig.d= (%lig.dc% * 5) + 40
set/a lig.e= (%lig.dc% * 5) + 60
set/a lig.d= (%lig.d% * %p1.lig.sm%) / 10
set/a lig.e= (%lig.e% * %p1.lig.sm%) / 10
if %p2.energy% lss %lig.e% goto no.energy2
set lig.vis=HEALTH
set/a lig.cr=(2 * %random%) / 32768 + 1
if %lig.cr%==2 goto light1.c
set/a lig.fd=0
set/a lig.fr=(8 * %random%) / 32768 + 1
set/a lig.fd=%lig.fr% * 5
set/a lig.fd=(%lig.fd% * %p2.lig.sm%) /10
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
if %p1.hdr.ct%==0 goto hdrain1.k
if %p1.test.a%==1 goto hdrain1.k
echo. You have to regain your focus, wait %p1.hdr.ct% turns.
timeout 2 >nul
goto 1abl.pass
:hdrain1.k
if %p1.test.a%==1 goto p1.hdr.c
if %p1.hdr.sr% gtr 0 goto p1.hdr.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.hdr.c
set /a hd=(6 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.r=10 * %hd% - 10
set/a hd.e=10 * %hd% +20
set/a hd.r= (%hd.r% * %p1.hdr.sm%) / 10
set/a hd.e= (%hd.e% * %p1.hdr.sm%) / 10

:hdrain1f
if %p1.energy% LSS %hd.e% goto no.energy2
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
set/a p1.hdr.ct=2
goto selection2

:hdrain2
if %p2.hdr.ct%==0 goto hdrain2.k
if %p2.test.a%==1 goto hdrain2.k
echo. You have to regain your focus, wait %p2.hdr.ct% turns.
timeout 2 >nul
goto 2abl.pass
:hdrain2.k
if %p2.test.a%==1 goto p2.hdr.c
if %p2.hdr.a%==1 goto p2.hdr.c
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.hdr.c
set /a hd=(5 * %random%) / 32768 + 2
set/a hd.a=10 * %hd%
set/a hd.r=10 * %hd% - 10
set/a hd.e=10 * %hd% +20
set/a hd.r= (%hd.r% * %p1.hdr.sm%) / 10
set/a hd.e= (%hd.e% * %p1.hdr.sm%) / 10
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
set/a p2.hdr.ct=2
goto selection1


::=================---------------------------------------------------========================= CLASS SKILLS

::=====-----Ice Spear

:icespear1
if %p1.test.a%==1 goto p1.ice.c
if %p1.ews.a%==1 goto p1.ice.c
echo You do not have the ability to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.ice.c
set /a ie=(6 * %random%) / 32768 + 2
set/a ie.a=10 * %ie% + 10
set/a ie.e=10 * %ie% - 10
set/a ie.a= (%ie.a% * %p1.ice.sm%) / 10
set/a ie.e= (%ie.e% * %p1.ice.sm%) / 10
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
if %p2.test.a%==1 goto p2.ice.c
if %p2.ews.a%==1 goto p2.ice.c
echo You do not have the ability to use this skill.
timeout 2 >nul
goto sel.2grid

:p2.ice.c
set /a ie=(6 * %random%) / 32768 + 2
set/a ie.a=10 * %ie% + 10
set/a ie.e=10 * %ie% - 10
set/a ie.a= (%ie.a% * %p2.ice.sm%) / 10
set/a ie.e= (%ie.e% * %p2.ice.sm%) / 10
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
set/a hl.p=(%hlvar% * %p2.hla.sm%) /10
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
set/a hl.p=(%hlvar% * %p1.hla.sm%) /10
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
set/a me.a=(%mv.a% * %p1.msh.sm% ) /10
set/a me.e=(%mv.e% * %p1.msh.sm% ) /10
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
set/a me.a=(%mv.a% * %p2.msh.sm% ) /10
set/a me.e=(%mv.e% * %p2.msh.sm% ) /10
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
if %p1.hly.ct%==0 goto p1.hly.k
if %p2.tes.a%==1 goto p1.hly.k
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
set/a ha.e=(%ha.e% * %p1.hly.sm%) / 10
set/a ha.h=(%ha.h% * %p1.hly.sm%) / 10
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
set/a p1.hly.ct=4
goto selection2


::Eweca Holy Arrow2

:p2.hly
if %p2.hly.ct%==0 goto p2.hly.k
if %p2.tes.a%==1 goto p2.hly.k
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
set/a ha.e=(%ha.e% * %p2.hly.sm%) / 10
set/a ha.h=(%ha.h% * %p2.hly.sm%) / 10
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
set/a p2.hly.ct=4
goto selection1

::===============================------------------------------------==Eweca Genesis

:p1.gen
if %p1.gen.ct%==0 goto p1.gen.k
if %p1.test.a%==1 goto p1.gen.k
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
set/a ge.a=(%ge.a% * %p1.gen.sm%) / 10

set/a p2.damage = %ge.a%
set/a p1.energy-= %ge.e%
set/a p1.health-= %ge.h%
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
echo.  /             
echo.  \
echo.   +                     -
echo.  /
echo.  \
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
echo.  /
echo.  //             
echo.  \
echo.   +                     -
echo.  /
echo.  \\
echo.  \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.     
echo.   /
echo.  //
echo.  //             
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.  \\
echo.   \
echo.     
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.     /
echo.   //
echo.  ///
echo.  //             
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.  \\\
echo.   \\
echo.     \
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.    //               \       /
echo.  //
echo. ///
echo.  //             
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo. \\\
echo.  \\
echo.    \\               /       \
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.  //                 \       /
echo.  //                  \     /
echo. ///                  \     /
echo.  //             
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo. \\\                  /     \
echo.  \\                  /     \
echo.  \\                 /       \
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.  /                  \       /
echo.  /                   \     /
echo. //                   \     /
echo.  /                   \\   //
echo.  \/                   // \\
echo.   +                     -
echo.  /\                   \\ //
echo.  \                   //   \\
echo. \\                   /     \
echo.  \                   /     \
echo.  \                  /       \
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       \   /
echo.                       \   /
echo. /                     \   /
echo.                       \\ //
echo.  \                    // \\
echo.   +                     -
echo.  /                    \\ //
echo.                       // \\
echo. \                     /   \
echo.                       /   \
echo.                       /   \
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.                        \ /
echo.                       \   /
echo.                       \\ //
echo.                       // \\
echo.   +                     -
echo.                       \\ //
echo.                       // \\
echo.                       /   \
echo.                        / \
echo.                       
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.                        
echo.                        \ /
echo.                       \\ //
echo.                       // \\
echo.   +                     -
echo.                       \\ //
echo.                       // \\
echo.                        / \
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
echo.                        \ /
echo.                       // \\
echo.   +                     -
echo.                       \\ //
echo.                        / \
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
echo.                        / \
echo.   +                     -
echo.                        \ /
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

:p2.gen
if %p2.gen.ct%==0 goto p2.gen.k
if %p2.tes.a%==1 goto p2.gen.k
echo. You have to regain your focus, wait %p2.gen.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.gen.k

if %p2.energy% lss 150 goto no.energy2
set/a ge.e=%p2.energy%
set/a ge.h=%p2.health% - 40
set/a ge=(3 * %random%) / 32768 + 1
set/a ge.v=(10 * %random%) / 32768 + 1
set/a ge.a=(50 * %ge%) + (%ge.v% * 10) + (%ge.h%/2) + (%ge.e%/3)
set/a ge.a=(%ge.a% * %p2.gen.sm%) / 10

set/a p1.damage = %ge.a%
set/a p2.energy-= %ge.e%
set/a p2.health-= %ge.h%
set/a p2.gen.ct=6

cls
echo.
echo.
echo.
echo.
echo.                  ENERGY -%ge.e%                
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
echo.                  ENERGY -%ge.e%                
echo.     
echo.   +                     -
echo.
echo.                  HEALTH -%ge.h%
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
echo.                          \             
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /
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
echo.                          \
echo.                         \\             
echo.                          /
echo.   +                     -
echo.                          \
echo.                         //
echo.                          /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                         \
echo.                         \\
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo.                         //
echo.                         /
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       \
echo.                        \\
echo.                        \\\
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo.                        ///
echo.                        //
echo.                       /
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.\     /                \\
echo.                         \\
echo.                         \\\
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo.                         ///
echo.                         //
echo./     \                //
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.\     /                  \\
echo. \   /                   \\
echo. \   /                   \\\
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo. /   \                   ///
echo. /   \                   //
echo./     \                  //
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.\     /                   \
echo. \   /                    \
echo. \   /                    \\
echo. \\ //                    \
echo. // \\                   \/
echo.   +                     -
echo. \\ //                   /\
echo. // \\                    /
echo. /   \                    //
echo. /   \                    /
echo./     \                   /
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo. \   /                    
echo. \   /                     
echo. \   /                     \
echo. \\ //                    
echo. // \\                    /
echo.   +                     -
echo. \\ //                    \
echo. // \\                    
echo. /   \                     /
echo. /   \                    
echo. /   \                   
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.  \ /                    
echo. \   /                     
echo. \   /                     
echo. \\ //                    
echo. // \\                    
echo.   +                     -
echo. \\ //                    
echo. // \\                    
echo. /   \                     
echo. /   \                    
echo.  / \                   
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                    
echo.  \ /                     
echo. \   /                     
echo. \\ //                    
echo. // \\                    
echo.   +                     -
echo. \\ //                    
echo. // \\                    
echo. /   \                     
echo.  / \                    
echo.                   
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                    
echo.                       
echo.  \ /                     
echo.  \ /                   
echo. // \\                    
echo.   +                     -
echo. \\ //                    
echo.  / \                     
echo.  / \                     
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
echo.   +                     -
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
echo.HEALTH -%ge.a%       
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
goto selection1

::==================----------------------------===LACEDA CLASS

::Laceda Lunar Cero


:p1.llc
set/a llc=(5 * %random%) / 32768 + 1
set/a llc.c=%llc% * 10 + 50
set/a llc.e=%llc% * 10 + 10
set llc.v=HEALTH
if %p1.energy% lss %llc.e% goto no.energy1
set/a llc=(10 * %random%) / 32768 + 1
if not %llc%==10 goto p1.llc.k
set/a llc.c+=30
set llc.v=CRITICAL
set/a llc=(20 * %random%) / 32768 + 1
if not %llc%==10 goto p1.llc.k
set/a llc.c+=100
set llc.v=ANNIHILATION!

:p1.llc.k
set/a llc.c=(%llc.c% * %p1.llc.sm%) / 10
set/a llc.e=(%llc.e% * %p1.llc.sm%) / 10
set/a p2.damage=%llc.c%
set/a p1.energy-=%llc.e%
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%llc.e%
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
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo. 
echo.  \
echo.   +                    -
echo.  /
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
echo.  /
echo.  \/
echo.   +                    -
echo.  /\
echo.  \
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
echo.  /
echo.  //
echo.  \/
echo.   +                    -
echo.  /\
echo.  \\
echo.  \
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.  /
echo.  //
echo.  \/
echo.   + =                  -
echo.  /\
echo.  \\
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
echo.  //
echo.  \/
echo.   + 0                  -
echo.  /\
echo.  \\
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
echo.  \/
echo.   + O                  -
echo.  /\
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
echo.   + 0                  -
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
echo.  /
echo.  //
echo.  \/ 
echo.   +    =---           -
echo.  /\
echo.  \\
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
echo.  
echo.  
echo.   +           =-=-     -
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
echo.   +                    -
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
echo.                          /
echo.                        / /
echo.   +                    -
echo.                        \ \
echo.                          \
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
echo.   +                    -
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
echo.                   %llc.v%-%llc.c%       
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
goto selection2

:p2.llc
set/a llc=(5 * %random%) / 32768 + 1
set/a llc.c=%llc% * 10 + 50
set/a llc.e=%llc% * 10 + 10
set llc.v=HEALTH
if %p2.energy% lss %llc.e% goto no.energy2
set/a llc=(10 * %random%) / 32768 + 1
if not %llc%==10 goto p2.llc.k
set/a llc.c+=30
set llc.v=CRITICAL
set/a llc=(20 * %random%) / 32768 + 1
if not %llc%==10 goto p2.llc.k
set/a llc.c+=100
set llc.v=ANNIHILATION!

:p2.llc.k
set/a llc.c=(%llc.c% * %p2.llc.sm%) / 10
set/a llc.e=(%llc.e% * %p2.llc.sm%) / 10
set/a p1.damage=%llc.c%
set/a p2.energy-=%llc.e%
cls
echo.
echo.
echo.
echo.
echo.                 ENERGY-%llc.e%
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
timeout 0 >nul
cls
echo.
echo.
echo.
echo.
echo. 
echo.                         /
echo.   +                    -
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
echo.                         \
echo.                        \/
echo.   +                    -
echo.                        /\
echo.                         /
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
echo.                         \
echo.                        \\
echo.                        \/
echo.   +                    -
echo.                        /\
echo.                        //
echo.                         /
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
cls
echo.
echo.
echo.
echo.                         \
echo.                        \\
echo.                        \/
echo.   +                 =  -
echo.                        /\
echo.                        //
echo.                         /
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
echo.                        \\
echo.                        \/
echo.   +                 0  -
echo.                        /\
echo.                        //
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
echo.                        \/
echo.   +                 O  -
echo.                        /\
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
echo.   +                 0  -
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
echo.                         \
echo.                        \\
echo.                        \/
echo.   +            ---=    -
echo.                        /\
echo.                        //
echo.                         /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                         \
echo.                        \\
echo.                        \/
echo.   +    ---=            -
echo.                        /\
echo.                        //
echo.                         /
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
echo.   +                    -
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
echo. \
echo. \ \
echo.   +                    -
echo. / /
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
echo.                          
echo.  \                      
echo.   +                    -
echo.  /                      
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
echo. %llc.v%-%llc.c%       
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
goto selection1

::Laceda Lunar Brandish


:p1.llb
if %p1.llb.ct%==0 goto p1.llb.k
if %p1.test.a%==1 goto p1.llb.k
echo. You have to regain your focus, wait %p1.llb.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.llb.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 70
set/a llb.e=%llb% * 10 + 30
set llb.v=HEALTH
if %p1.energy% lss %llb.e% goto no.energy1
set/a llb=(10 * %random%) / 32768 + 1
if not %llb%==10 goto p1.llb.k
set/a llb.c+=80
set llb.v=CRITICAL
set/a llb=(20 * %random%) / 32768 + 1
if not %llb%==10 goto p1.llb.k
set/a llb.c+=100
set llb.v=ANNIHILATION!

:p1.llb.k
set/a llb.c=(%llb.c% * %p1.lbr.sm%) / 10
set/a llb.e=(%llb.e% * %p1.lbr.sm%) / 10
set/a p2.damage=%llb.c%
set/a p1.energy-=%llb.e%
set/a p1.llb.ct=2
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%llb.e%
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
echo.   --
echo.                         -
echo.  --
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
echo. --
echo.                         -
echo.    --
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
echo.                                --
echo.                         -      +
echo.                              --
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
echo.                         -        +_
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
echo.                         -   +_____
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
echo.                        \         
echo.                         - 
echo.                          \      
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
echo.             +______     - 
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
echo.                --                  
echo.                         - 
echo.             --                 
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
echo.            --                  
echo.                         - 
echo.               --                 
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
echo.          _____+         - 
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
echo.               _____+    - 
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
echo.                           /       
echo.                          - 
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
echo. 
echo.                                  
echo.                          -   __+
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
echo.                                 -- 
echo.                          -   
echo.                              -- 
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
echo.                             -- 
echo.                          -    
echo.                               -- 
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
echo.    -- 
echo.                          -   
echo. -- 
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
echo. -- 
echo.                          -   
echo.    -- 
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
echo.                   %llb.v%-%llb.c%
echo.   
echo.   +                      -   
echo.     
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto selection2

::Laceda Lunar Brandish


:p2.llb
if %p2.llb.ct%==0 goto p2.llb.k
if %p2.tes.a%==1 goto p2.llb.k
echo. You have to regain your focus, wait %p1.llb.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.llb.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 70
set/a llb.e=%llb% * 10 + 30
set llb.v=HEALTH
if %p2.energy% lss %llb.e% goto no.energy2
set/a llb=(10 * %random%) / 32768 + 1
if not %llb%==10 goto p2.llb.k
set/a llb.c+=80
set llb.v=CRITICAL
set/a llb=(20 * %random%) / 32768 + 1
if not %llb%==10 goto p2.llb.k
set/a llb.c+=100
set llb.v=ANNIHILATION!

:p2.llb.k
set/a llb.c=(%llb.c% * %p2.lbr.sm%) / 10
set/a llb.e=(%llb.e% * %p2.lbr.sm%) / 10
set/a p1.damage=%llb.c%
set/a p2.energy-=%llb.e%
set/a p2.llb.ct=2
cls
echo.
echo.
echo.
echo.
echo.                  ENERGY-%llb.e%
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
echo.                          --
echo.   +                     
echo.                       --
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
echo.                       --
echo.   +                     
echo.                           --
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
echo.--
echo.   +                     
echo. --
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
echo._- +                     
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
echo.    /
echo.   +                     
echo.  /
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
echo.   +    _____-                 
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
echo.             --
echo.   +                      
echo.           --
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
echo.          --
echo.   +                      
echo.              --
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
echo.   +        -___             
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
echo.   +  -_____             
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
echo.  \      
echo.   +              
echo.    \         
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
echo.-_ +              
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
echo.--        
echo.   +              
echo.  --           
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
echo.  --        
echo.   +              
echo.--           
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
echo.                             -- 
echo.                          -    
echo.                               -- 
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
echo.                          --
echo.   +                     
echo.                       --
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
echo.                       --
echo.   +                     
echo.                           --
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
echo. %llb.v%-%llb.c%
echo.   
echo.   +                      -   
echo.     
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto selection1

:: Laceda Mana Shield


:p1.lmsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 2
set/a me.a=(%me.a% * %p1.msh.sm%) / 10
set/a me.e=(%me.e% * %p1.msh.sm%) / 10
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


:p2.lmsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 2
set/a me.a=(%me.a% * %p2.msh.sm%) / 10
set/a me.e=(%me.e% * %p2.msh.sm%) / 10
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

::Laceda Lunar Blossom


:p1.lbl
if %p1.llb.ct%==0 goto p1.lbl.k
if %p1.test.a%==1 goto p1.lbl.k
echo. You have to regain your focus, wait %p1.lbl.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.lbl.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 120
set/a llb.e=%llb% * 10 + 50
set llb.v=HEALTH
if %p1.energy% lss %llb.e% goto no.energy1
set/a llb=(10 * %random%) / 32768 + 1
if not %llb%==10 goto p1.lbl.c
set/a llb.c+=80
set llb.v=CRITICAL
set/a llb=(20 * %random%) / 32768 + 1
if not %llb%==10 goto p1.lbl.c
set/a llb.c+=200
set llb.v=ANNIHILATION!

:p1.lbl.c
set/a llb.c=(%me.a% * %p1.llb.sm%) / 10
set/a llb.e=(%me.e% * %p1.llb.sm%) / 10
set/a p2.damage=%llb.c%
set/a p1.energy-=%llb.e%
set/a p1.lbl.ct=4

cls
echo.
echo.
echo.
echo.
echo. ENERGY-%llb.e%
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
echo.  \
echo.   +                     -
echo.  /
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
echo.  /
echo.  \/
echo.   +                     -
echo.  /\
echo.  \
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
echo.   \
echo.  //
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.   /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   \
echo.  //
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.   /
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.   \/\
echo.  //
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.   /\/
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  \                    -----
echo.  //
echo.  \/
echo.   +     .               -
echo.  /\
echo.  \\
echo.  /                    -----
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                        ---
echo.  //                      /
echo.  \/
echo.   +                .    -
echo.  /\
echo.  \\                      \
echo.                        ---
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                        ---
echo.  /                       /
echo.  \/                     \
echo.   +                     -
echo.  /\                     /
echo.  \                       \
echo.                        ---
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                        ---
echo.                         /
echo.  \/                     \
echo.   +                     -
echo.  /\                     /
echo.                         \
echo.                        ---
echo. 
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                        ---
echo.                        \/
echo.                         \
echo.   +                     -
echo.                         /
echo.                        /\
echo.                        ---
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
echo.                     /--/ \--\
echo.   +                [==[ - ]==]
echo.                     \--\ /--/
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
echo.                   /----/ \----\
echo.   +              [====[ - ]====]
echo.                   \----\ /----/
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
echo.                   /--/     \--\
echo.   +              [==[   -   ]==]
echo.                   \--\     /--/
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
echo.                   HEALTH-%llb.c%
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

:p2.lbl
if %p2.llb.ct%==0 goto p2.lbl.k
if %p2.tes.a%==1 goto p2.lbl.k
echo. You have to regain your focus, wait %p2.lbl.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.lbl.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 120
set/a llb.e=%llb% * 10 + 50
set llb.v=HEALTH
if %p2.energy% lss %llb.e% goto no.energy2
set/a llb=(10 * %random%) / 32768 + 1
if not %llb%==10 goto p2.lbl.c
set/a llb.c+=80
set llb.v=CRITICAL
set/a llb=(20 * %random%) / 32768 + 1
if not %llb%==10 goto p2.lbl.c
set/a llb.c+=200
set llb.v=ANNIHILATION!

:p2.lbl.c
set/a llb.c=(%me.a% * %p2.llb.sm%) / 10
set/a llb.e=(%me.e% * %p2.llb.sm%) / 10
set/a p1.damage=%llb.c%
set/a p2.energy-=%llb.e%
set/a p2.lbl.ct=4

cls
echo.
echo.
echo.
echo.
echo.                    ENERGY-%llb.e%
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
echo.                          /
echo.   +                     -
echo.                          \
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
echo.                          \
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                          /
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
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
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
echo.                       /\/
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo.                       \/\
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo. -----                    /
echo.                         \\
echo.                         \/
echo.   +               .     -
echo.                         /\
echo.                         //
echo. -----                    \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  ---                    
echo.  \                      \\
echo.                         \/
echo.   +     .               -
echo.                         /\
echo.  /                      //
echo.  ---                    
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  ---                    
echo.  \                       \
echo.   /                     \/
echo.   +                     -
echo.   \                     /\
echo.  /                       /
echo.  ---                    
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  ---                    
echo.   \                      
echo.   /                     \/
echo.   +                     -
echo.   \                     /\
echo.   /                      
echo.  ---                    
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.  ---                    
echo.   \/                     
echo.   /                     
echo.   +                     -
echo.   \                     
echo.   /\                     
echo.  ---                    
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
echo. /-/ \-\                      
echo.[==[+]==]                -
echo. \-\ /-/              
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
echo. /-   -\                      
echo.[== + ==]                -
echo. \-   -/              
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
echo. /     \                      
echo.[=  +  =]                -
echo. \     /              
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
echo.    +                    -
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
echo. HEALTH-%llb.c%
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
goto selection1


::========------------------------------------------==Laceda Blade

:p1.blade
if %p1.bla.ct%==0 goto p1.blade.k
if %p1.test.a%==1 goto p1.blade.k
echo. You have to regain your focus, wait %p1.bla.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.blade.k

if %p1.energy% lss 100 goto no.energy1
set/a bl.e=%p1.energy%
set/a bl.h=%p1.health% - 10
set/a bl.r=(3 * %random%) / 32768 + 1
set/a bl.d=(%bl.r% * 50) + (%bl.h% / 2) + (%bl.e% / 2)
set bl.v=HEALTH
set/a bl.c=(10 * %random%) / 32768 + 1
if not %bl.c%==7 goto p1.blade.c
set/a bl.d+=150
set bl.v=CRITICAL
set/a bl.c=(20 * %random%) / 32768 + 1
if not %bl.c%==13 goto p1.blade.c
set/a bl.d= %bl.d% * 2
set bl.v=ANNIHILATION!

:p1.blade.c
set/a bl.d=(%bl.d% * %p1.lbl.sm%) / 10
set/a p2.damage=%bl.d%
set/a p1.energy-=%bl.e%
set/a p1.health-=%bl.h%
set/a p1.bla.ct=6

cls
echo.
echo.
echo.
echo.
echo.ENERGY-%bl.e%
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
echo.HEALTH-%bl.h%
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
echo.Laceda,
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
echo.Laceda, who has provided
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
echo.For all life on Erinn,
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
echo.Let your wrath be known...
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
echo. Laceda, final symphony,
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
echo. Laceda Blade.
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
echo.   +=---\                -
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
echo.   +=------\             -
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
echo.   +=--------\           -
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
echo.       ________
echo.   + =]________)          -
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
echo.     \ ________
echo.   + =]________)          -
echo.     /
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
echo.  -
echo.                         -
echo.      -
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
echo.       -
echo.                         -
echo.   -
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
echo.                          /
echo.                         -
echo.                        /
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
echo.                         -   ___
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
echo.                        \
echo.               ___       -
echo.                          \
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
echo.                          /
echo.                         -     ___
echo.                        /
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
echo.                 ___     -
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
echo.                        \
echo.                         -
echo.                          \
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
echo.                          /
echo.                         -
echo.                        /
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
echo.                         -
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
echo.                        \
echo.         +_________      -
echo.                          \
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
echo.    _________+           -
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
echo.                         -
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
echo.                        \
echo.                         -
echo.                          \
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
echo.                         -      ___+
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
echo.                          /
echo.                         -
echo.                        /
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
echo.           +_____        -
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
echo.    -                      
echo.                         -
echo.                        
echo.  -
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
echo.                %bl.v% - %bl.d%
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

:p2.blade
if %p2.bla.ct%==0 goto p2.blade.k
if %p2.tes.a%==1 goto p2.blade.k
echo. You have to regain your focus, wait %p2.bla.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.blade.k

if %p2.energy% lss 100 goto no.energy2
set/a bl.e=%p2.energy%
set/a bl.h=%p2.health% - 10
set/a bl.r=(3 * %random%) / 32768 + 1
set/a bl.d=(%bl.r% * 50) + (%bl.h% / 2) + (%bl.e% / 2)
set bl.v=HEALTH
set/a bl.c=(10 * %random%) / 32768 + 1
if not %bl.c%==7 goto p2.blade.c
set/a bl.d+=150
set bl.v=CRITICAL
set/a bl.c=(20 * %random%) / 32768 + 1
if not %bl.c%==13 goto p2.blade.c
set/a bl.d= %bl.d% * 2
set bl.v=ANNIHILATION!

:p2.blade.c
set/a bl.d=(%bl.d% * %p2.lbl.sm%) / 10
set/a p1.damage=%bl.d%
set/a p2.energy-=%bl.e%
set/a p2.health-=%bl.h%
set/a p2.bla.ct=6

cls
echo.
echo.
echo.
echo.
echo.                   ENERGY-%bl.e%
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
echo.                   HEALTH-%bl.h%
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
echo.                 Laceda,
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
echo.                 Laceda, who has provided
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
echo.                 For all life on Erinn,
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
echo.                 Let your wrath be known...
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
echo.                 Laceda, final symphony,
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
echo.                  Laceda Blade.
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
echo.   +                /---=-
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
echo.   +             /------=-
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
echo.   +           /--------=-
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
echo.              ________
echo.   +         (________[= -
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
echo.              ________/
echo.   +         (________[= -
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
echo.                      -
echo.
echo.   +                     
echo.                            -
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
echo.                            -
echo.
echo.   +                     
echo.                      -
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
echo.  \
echo.   +                     
echo.    \                 
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
echo.__ +                     
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
echo.    /
echo.   +                     
echo.  /                   
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
echo.   +    ___             
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
echo.  \
echo.   +                     
echo.    \                 
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
echo.__ +                     
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
echo.    /
echo.   +                     
echo.  /                   
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
echo.  \
echo.   +                     
echo.    \                   
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
echo.    /
echo.   +                     
echo.  /                   
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
echo.  \
echo.   +                     
echo.    \                   
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
echo.    /
echo.   +                     
echo.  /                   
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
echo.  \
echo.   +                     
echo.    \                   
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
echo.    /
echo.   +                     
echo.  /                   
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
echo.   +            _____        
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
echo.                            -
echo.   +                     
echo.                       -
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
echo.                       -
echo.   +                     
echo.                            -
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
echo.%bl.v% - %bl.d%
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
goto selection1


::=======================------------------------------------==Falias Class

::Falias Smash

:p1.smash
set/a sm.r=(3 * %random%) / 32768 + 1
set/a sm.a=%sm.r% * 10 + 20
set/a sm.e=%sm.a% - 10
set/a sm.a=(%sm.a% * %p1.smh.sm%) / 10
set/a sm.e=(%sm.a% * %p1.smh.sm%) / 10
set/a p2.damage=%sm.a%
set/a p1.energy-=%sm.e%
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%sm.e%
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
echo.   ___+                  -
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
echo.       ___+              -
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
echo.             ___+        -
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
echo.                  _____+ -
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
echo.                          /
echo.                         -
echo.                        /
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
echo.                         -
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
echo.     -                      
echo.                         -
echo.   -                     
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
echo.  -                      
echo.                         -
echo.      -                     
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
echo.                    HEALTH-%sm.a% 
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

:p2.smash
set/a sm.r=(3 * %random%) / 32768 + 1
set/a sm.a=%sm.r% * 10 + 20
set/a sm.e=%sm.a% - 10
set/a sm.a=(%sm.a% * %p2.smh.sm%) / 10
set/a sm.e=(%sm.a% * %p2.smh.sm%) / 10
set/a p1.damage=%sm.a%
set/a p2.energy-=%sm.e%
cls
echo.
echo.
echo.
echo.
echo.                    ENERGY-%sm.e%
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
echo.   +                 -____
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
echo.   +           -____
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
echo.   + -____
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
echo.  \
echo.   +                 
echo.    \
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
echo.   +                 
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
echo.                        -
echo.   +                     
echo.                          -
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
echo.                           -
echo.   +                     
echo.                       -
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
echo. HEALTH-%sm.a% 
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
goto selection1

::Falias Heal

:p2.fheal
if %p2.fhl.ct%==0 goto p2.fhl.k
echo. You have to regain your focus, wait %p2.fhl.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.fhl.k
set/a sm.r=(3 * %random%) / 32768 + 1
set/a sm.a=%sm.r% * 10 + 40
set/a sm.e=%sm.a% - 10
set/a sm.a=(%sm.a% * %p1.hla.sm%) / 10
set/a sm.e=(%sm.e% * %p1.hla.sm%) / 10
set/a p2.health+=%sm.a%
set/a p2.energy-=%sm.e%
set/a p2.fhl.ct=2
cls
echo.
echo.
echo.
echo.
echo.                    ENERGY-%sm.e%
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
echo.                        / \
echo.   +                     -
echo.                        \ /
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
echo.   +                    (-)
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
echo.                     HEALTH+%sm.a% 
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
goto selection1



:p1.fheal
if %p1.fhl.ct%==0 goto p1.fhl.k
echo. You have to regain your focus, wait %p1.fhl.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.fhl.k
set/a sm.r=(3 * %random%) / 32768 + 1
set/a sm.a=%sm.r% * 10 + 40
set/a sm.e=%sm.a% - 10
set/a sm.a=(%sm.a% * %p2.hla.sm%) / 10
set/a sm.e=(%sm.e% * %p2.hla.sm%) / 10
set/a p1.health+=%sm.a%
set/a p1.energy-=%sm.e%
set/a p1.fhl.ct=2
cls
echo.
echo.
echo.
echo.
echo.ENERGY-%sm.e%
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
echo.  / \
echo.   +                     -
echo.  \ /
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
echo.  (+)                    -
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
echo.HEALTH+%sm.a% 
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

::falias mana sheild
:p1.fmsh
set/a mv=(5 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 4
set/a me.a=(%me.a% * %p1.fsh.sm%) / 10
set/a me.e=(%me.e% * %p1.fsh.sm%) / 10
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


:p2.fmsh
set/a mv=(5 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=5 * %mv% * 4
set/a me.a=(%me.a% * %p2.fsh.sm%) / 10
set/a me.e=(%me.e% * %p2.fsh.sm%) / 10
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

::Falias Brandish


:p1.fbr
if %p1.fbr.ct%==0 goto p1.fbr.k
if %p1.test.a%==1 goto p1.fbr.k
echo. You have to regain your focus, wait %p1.fbr.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.fbr.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 50
set/a llb.e=%llb% * 10 + 30
set/a llb.c=(%llb.c% * %p1.fbr.sm%) / 10
set/a llb.e=(%llb.a% * %p1.fbr.sm%) / 10
set/a p2.damage=%llb.c%
set/a p1.energy-=%llb.e%
set/a p1.fbr.ct=2
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%llb.e%
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
echo.   --
echo.                         -
echo.  --
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
echo. --
echo.                         -
echo.    --
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
echo.                                --
echo.                         -      +
echo.                              --
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
echo.                         -        +_
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
echo.                         -   +_____
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
echo.                        \         
echo.                         - 
echo.                          \      
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
echo.             +______     - 
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
echo.                --                  
echo.                         - 
echo.             --                 
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
echo.            --                  
echo.                         - 
echo.               --                 
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
echo.          _____+         - 
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
echo.               _____+    - 
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
echo.                           /       
echo.                          - 
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
echo. 
echo.                                  
echo.                          -   __+
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
echo.                                 -- 
echo.                          -   
echo.                              -- 
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
echo.                             -- 
echo.                          -    
echo.                               -- 
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
echo.    -- 
echo.                          -   
echo. -- 
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
echo. -- 
echo.                          -   
echo.    -- 
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
echo.                   HEALTH-%llb.c%
echo.   
echo.   +                      -
echo.     
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto selection2




:p2.fbr
if %p2.fbr.ct%==0 goto p2.fbr.k
if %p2.test.a%==1 goto p2.fbr.k
echo. You have to regain your focus, wait %p1.fbr.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.fbr.k
set/a llb=(5 * %random%) / 32768 + 1
set/a llb.c=%llb% * 10 + 50
set/a llb.e=%llb% * 10 + 30
set/a llb.c=(%llb.c% * %p2.fbr.sm%) / 10
set/a llb.e=(%llb.a% * %p2.fbr.sm%) / 10
set/a p2.energy-=%llb.e%
set/a p2.llb.ct=2
cls
echo.
echo.
echo.
echo.
echo.                  ENERGY-%llb.e%
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
echo.                          --
echo.   +                     
echo.                       --
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
echo.                       --
echo.   +                     
echo.                           --
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
echo.--
echo.   +                     
echo. --
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
echo._- +                     
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
echo.    /
echo.   +                     
echo.  /
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
echo.   +    _____-                 
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
echo.             --
echo.   +                      
echo.           --
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
echo.          --
echo.   +                      
echo.              --
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
echo.   +        -___             
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
echo.   +  -_____             
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
echo.  \      
echo.   +              
echo.    \         
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
echo.-_ +              
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
echo.--        
echo.   +              
echo.  --           
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
echo.  --        
echo.   +              
echo.--           
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
echo.                             -- 
echo.                          -    
echo.                               -- 
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
echo.                          --
echo.   +                     
echo.                       --
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
echo.                       --
echo.   +                     
echo.                           --
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
echo. HEALTH-%llb.c%
echo.   
echo.   +                      -   
echo.     
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto selection1

:Falias Seal


:p1.fwr
if %p1.fal.ct%==0 goto p1.fal.k
if %p1.test.a%==1 goto p1.fal.k
echo. You have to regain your energy, wait %p1.fal.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.fal.k
set/a fal=(4 * %random%) / 32768 + 1
set/a fal.hd=%p1.health% - 50
set/a fal.ed=%p1.energy%
set/a fal.dd=%p1.def%
set/a fal.d=%fal% * 50 + (%fal.hd% / 2) + (%fal.ed% / 2) + (%fal.dd% * 10)
set/a fal.d=(%fal.d% * %p1.fsl.sm%) / 10
set/a p2.damage=%fal.d%
set/a p1.energy-=%fal.ed%
set/a p1.health-=%fal.hd%
set/a p1.fal.ct=5
cls
echo.
echo.
echo.
echo.
echo. ENERGY-%fal.ed%
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
echo. HEALTH-%fal.hd%
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
echo. DEFENCE-%fal.dd%
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
echo.      H
echo.   +   D                 -
echo.      E
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
echo.     (=)
echo.   +  (=)                -
echo.     (=)
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
echo.   =
echo.  / \   
echo.   +                     -
echo.  \ /   
echo.   =
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.   \/
echo.  \/ 
echo.  /
echo.  \
echo.   =
echo.  / \   
echo.   +                     -
echo.  \ /   
echo.   =
echo.  /
echo.  \
echo.  /\
echo.   /\
echo.-----------------------------------
timeout 0 >nul
cls
echo.   
echo.  
echo.  /
echo.  \
echo.   =
echo.  / \   
echo.   +                     -
echo.  \ /   
echo.   =
echo.  /
echo.  \
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
echo.   +                     -
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
echo.  -   
echo.   +                     -
echo.  -  
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
echo.    Wrath of Falias.
echo.   
echo.  - 
echo.   +                     -
echo.  -
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
echo.  -   
echo.   +                     -
echo.  -  
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
echo.                      -   
echo.   +                     -
echo.                      -  
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
echo.                        / \
echo.   +                     -
echo.                        \ /
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
echo.   +                   ([-])
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
echo.    Falias Seal.
echo.                        
echo.   +                    [I]
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
echo.   +                     .
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
echo.   +                     
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
echo.   +                     0
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
echo.                        \ /
echo.   +                     
echo.                        / \
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
echo.                        \/
echo.                        /
echo.                        \ 
echo.   +                     
echo.                        / 
echo.                        \
echo.                        /\
echo.  
echo.  
echo.   
echo.-----------------------------------
timeout 0 >nul
cls
echo.   
echo.  
echo.                         \/
echo.                        \/
echo.                        
echo.                         
echo.   +                     -
echo.                         
echo.                        
echo.                        /\
echo.                         /\
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
echo.                     HEALTH-%fal.d%
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


:p2.fwr
if %p2.fal.ct%==0 goto p2.fal.k
if %p2.tes.a%==1 goto p2.fal.k
echo. You have to regain your energy, wait %p2.fal.ct% turns.
timeout 2 >nul
goto 2abl.pass

:p2.fal.k
set/a fal=(4 * %random%) / 32768 + 1
set/a fal.hd=%p2.health% - 50
set/a fal.ed=%p2.energy%
set/a fal.dd=%p2.def%
set/a fal.d=%fal% * 50 + (%fal.hd% / 2) + (%fal.ed% / 2) + (%fal.dd% * 10)
set/a fal.d=(%fal.d% * %p2.fsl.sm%) / 10
set/a p1.damage=%fal.d%
set/a p2.energy-=%fal.ed%
set/a p2.health-=%fal.hd%
set/a p2.fal.ct=5
cls
echo.
echo.
echo.
echo.
echo.                ENERGY-%fal.ed%
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
echo.                HEALTH-%fal.hd%
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
echo.                DEFENCE-%fal.dd%
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
echo.                       H
echo.   +                  D  -
echo.                       E
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
echo.                     (=)
echo.   +                (=)  -
echo.                     (=)
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
echo.                         =
echo.                        / \   
echo.   +                     -
echo.                        \ /   
echo.                         =
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.                       \/
echo.                        \/ 
echo.                         \
echo.                         /
echo.                         =
echo.                        / \   
echo.   +                     -
echo.                        \ /   
echo.                         =
echo.                          \
echo.                          /
echo.                         /\
echo.                        /\
echo.-----------------------------------
timeout 0 >nul
cls
echo.                       
echo.                        
echo.                         \
echo.                         /
echo.                         =
echo.                        / \   
echo.   +                     -
echo.                        \ /   
echo.                         =
echo.                          \
echo.                          /
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
echo.                        / \   
echo.   +                     -
echo.                        \ /   
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
echo.                          -   
echo.   +                     -
echo.                          -  
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
echo.                 Wrath of Falias.
echo.   
echo.                          - 
echo.   +                     -
echo.                          -
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
echo.                          -   
echo.   +                     -
echo.                          -  
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
echo.      -   
echo.   +                     -
echo.      -  
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
echo.   +                     -
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
echo. [(+)]                   -
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
echo.                 Falias Seal.
echo.                        
echo.  [I]                    -
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
echo.   .                     -
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
echo.                         -
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
echo.   0                     -
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
echo.  \ /
echo.                         -
echo.  / \
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
echo.  \/
echo.   \
echo.   / 
echo.                         -          
echo.   \ 
echo.   /
echo.  /\
echo.  
echo.  
echo.   
echo.-----------------------------------
timeout 0 >nul
cls
echo.   
echo.  
echo. \/
echo.  \/
echo.  
echo.   
echo.                         -                     
echo.   
echo.   
echo.  /\
echo. /\
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
echo.HEALTH-%fal.d%
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
goto selection1

::======================================================================-----------------------------------------------------================ LUMINOUS CLASS SKILLS

::=====================---------------------=====Luminous Wings of White

:p1.wwt
if %p1.test.a%==1 goto p1.wwt.e
if %p1.wwt.sr% gtr 0 goto p1.wwt.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:p1.wwt.e
set/a lmc.d=(10 * %random%) / 32768 + 1
set/a lmc.d+=1
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=%lmc.d% / 2
set/a lmc.d= (%lmc.d% * %p1.wwt.sm%) / 10
set/a lmc.e= (%lmc.e% * %p1.wwt.sm%) / 10
if %p1.energy% lss %lmc.e% goto no.energy1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p1.wwt.c
set/a p1.energy-=%lmc.e%
set/a p2.damage=%lmc.d%
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
echo. Energy -%lmc.e%
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
echo.  /
echo.  \
echo.   +                     -
echo.  /
echo.  \
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
echo.  /
echo.  \\
echo.   +                     -
echo.  //
echo.  \
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
echo.  /
echo.  //
echo.  \\
echo.   +                     -
echo.  //
echo.  \\
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
echo. /
echo. //
echo.  \\
echo.   +           --        -
echo.  //
echo. \\
echo. \
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
echo. /
echo.  \\                      /
echo.   +                     -
echo.  //                      \
echo. \
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
echo.                          /
echo.  \                        /
echo.   +                     -
echo.  /                        \
echo.                          \
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
echo.                    %lmc.v%
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


::======----P2

::Luminous Wings of White

:p2.wwt
if %p2.test.a%==1 goto p2.wwt.e
if %p2.wwt.sr% gtr 0 goto p2.wwt.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:p2.wwt.e
set/a lmc.d=(10 * %random%) / 32768 + 1
set/a lmc.d+=1
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=%lmc.d% / 2
set/a lmc.d= (%lmc.d% * %p2.wwt.sm%) / 10
set/a lmc.e= (%lmc.e% * %p2.wwt.sm%) / 10
if %p2.energy% lss %lmc.e% goto no.energy1

::Max Damage for this skill at Rank Legendary (Luminous Only 800% Damage) is 1,319,413,935,331,200 (1.3 Quadrillion Damage)

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p2.wwt.c

set/a p2.energy-=%lmc.e%
set/a p1.damage=%lmc.d%
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
echo.                 Energy -%lmc.e%
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
echo.                          \
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /
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
echo.                         \
echo.                          \
echo.                         //
echo.   +                     -
echo.                         \\
echo.                          /
echo.                         /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                          \
echo.                         \\
echo.                         //
echo.   +                     -
echo.                         \\
echo.                         //
echo.                          /
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
echo.                          \\
echo.                         //
echo.   +      --             -
echo.                         \\
echo.                          //
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
echo.                           \
echo.  \                      //
echo.   +                     -
echo.  /                      \\
echo.                           /
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
echo. \                        /
echo.   +                     -
echo. /                        \
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
echo. %lmc.v%
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
goto selection1


::===============------------===Luminous Black Light


:p1.blk
if %p1.test.a%==1 goto p1.blk.e
if %p1.blk.sr% gtr 0 goto p1.blk.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p1.blk.e
if %p1.blk.ct%==0 goto p1.blk.k
if %p1.test.a%==1 goto p1.blk.k
echo. You have to regain your focus, wait %p1.blk.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p1.blk.k
set/a lmc.d=(18 * %random%) / 32768 + 1
set/a lmc.d+=2
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=(%lmc.d% / 3) * 2
set/a lmc.d= (%lmc.d% * %p1.blk.sm%) / 10
set/a lmc.e= (%lmc.e% * %p1.blk.sm%) / 10
if %p1.energy% lss %lmc.e% goto no.energy1
::Max Damage for this skill at Rank Legendary (Luminous Only 800% Damage) is 1,652,828,620,375,824,793,600 (1.6 Septillion Damage)

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p1.blk.c
cls
echo.
echo.
echo.
echo.
echo. ENERGY -%lmc.e%
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
echo.    /
echo.  //
echo.   +                     -
echo.  \\
echo.    \
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
echo.     /
echo. //
echo.   +                     -
echo. \\
echo.     \
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.  /
echo.   /
echo.   \
echo.   +                     -
echo.   /
echo.   \
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
echo.  /                          / 
echo.  \                       /
echo.   +=====================-
echo.  /                       \
echo.  \                          \
echo.  
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.   /
echo.  //
echo.  \
echo.   +                     -
echo.  /
echo.  \\
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
echo.   
echo.  /
echo.  \
echo.   +                     -
echo.  /
echo.  \
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
echo.  \
echo.   +                     -
echo.  /
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
echo.                     %lmc.v%
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


::p2 Luminous Black Light

:p2.blk
if %p2.test.a%==1 goto p2.blk.e
if %p2.blk.sr% gtr 0 goto p2.blk.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid

:p2.blk.e
if %p2.blk.ct%==0 goto p2.blk.k
if %p2.test.a%==1 goto p2.blk.k
echo. You have to regain your focus, wait %p2.blk.ct% turns.
timeout 2 >nul
goto 1abl.pass

:p2.blk.k
set/a lmc.d=(18 * %random%) / 32768 + 1
set/a lmc.d+=2
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=(%lmc.d% / 3) * 2
set/a lmc.d= (%lmc.d% * %p2.blk.sm%) / 10
set/a lmc.e= (%lmc.e% * %p2.blk.sm%) / 10
if %p2.energy% lss %lmc.e% goto no.energy1

::Max Damage for this skill at Rank Legendary (Luminous Only 800% Damage) is 1,652,828,620,375,824,793,600 (1.6 Septillion Damage)

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.blk.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p2.blk.c
cls
echo.
echo.
echo.
echo.
echo.                   ENERGY -%lmc.e%
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
echo.                        \
echo.   +                     -
echo.                        /
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
echo.                        \
echo.                         \\
echo.   +                     -
echo.                         //
echo.                        /
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
echo.                          \
echo.                       \
echo.                          \\
echo.   +                     -
echo.                          //
echo.                       /
echo.                          /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.                           \
echo.                          \
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /
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
echo.\                           
echo.                          \
echo.  \                       /
echo.   +=====================-
echo.  /                       \
echo.                          /
echo./                           
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
color F0
timeout 0 >nul
color 0F
cls
echo.
echo.
echo.
echo.                         \
echo.                         \\
echo.                          /
echo.   +                     -
echo.                          \
echo.                         //
echo.                         /
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
echo.                          \
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /
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
echo.                          /
echo.   +                     -
echo.                          \
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
echo. %lmc.v%
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
goto selection1

:p1.lsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=(5 * %mv% * 15) / 10
set/a me.a=(%mv.a% * %p1.lsh.sm% ) /10
set/a me.e=(%mv.e% * %p1.lsh.sm% ) /10
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


:p2.lsh
set/a mv=(3 * %random%) / 32768 + 1
set/a me.a=5 * %mv%
set/a me.e=(5 * %mv% * 15) / 10
set/a me.a=(%mv.a% * %p2.lsh.sm% ) /10
set/a me.e=(%mv.e% * %p2.lsh.sm% ) /10
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

::==========================------------------==Luminous wings of rage

:p1.wrg
if %p1.test.a%==1 goto p1.wrg.e
if %p1.wrg.sr% gtr 0 goto p1.wrg.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:p1.wrg.e
if %p1.wrg.ct%==0 goto p1.wrg.k
if %p1.test.a%==1 goto p1.wrg.k
echo. You have to regain your focus, wait %p1.wrg.ct% turns.
timeout 2 >nul
goto 1abl.pass
:p1.wrg.k
set/a lmc.d=(27 * %random%) / 32768 + 1
set/a lmc.d+=8
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=%lmc.d% / 2
set/a lmc.d= (%lmc.d% * %p1.wrg.sm%) / 10
set/a lmc.e= (%lmc.e% * %p1.wrg.sm%) / 10
if %p1.energy% lss %lmc.e% goto no.energy1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.wrg.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p1.wrg.c
set/a p1.energy-=%lmc.e%
set/a p2.damage=%lmc.d%
set/a p1.wrg.ct=3
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
echo. Energy -%lmc.e%
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
echo. 
echo.  \
echo.   +                     -
echo.  /
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
echo. \/
echo.  \
echo.   +                     -
echo.  /
echo. /\
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
echo. /
echo. \/
echo.  \/
echo.   +                     -
echo.  /\
echo. /\
echo. \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo. //
echo. \//
echo.  \/
echo.   +                     -
echo.  /\
echo. /\\
echo. \\
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo. / -
echo. /
echo. \//
echo.  \/
echo.   +                     -
echo.  /\
echo. /\\
echo. \
echo. \ -
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.    /   -
echo.   /
echo.  ///
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\\
echo.   \
echo.    \   -
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.   /          -
echo. //           \
echo. \//           \\
echo.  \/
echo.   +                     -
echo.  /\
echo. /\\           //
echo. \\           /
echo.   \          -
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                    
echo.                    
echo. \/                    \
echo.  \/                    \\
echo.   +                     -
echo.  /\                    //
echo. /\                    /
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
echo.  \/                      /
echo.   +                     -
echo.  /\                      \
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
echo.                        /
echo.                            /
echo.   +                     -
echo.                            \
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
echo.                      %lmc.v%
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

::p2

:p2.wrg
if %p2.test.a%==1 goto p2.wrg.e
if %p2.wrg.sr% gtr 0 goto p2.wrg.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:p2.wrg.e
if %p2.wrg.ct%==0 goto p2.wrg.k
if %p2.test.a%==1 goto p2.wrg.k
echo. You have to regain your focus, wait %p2.wrg.ct% turns.
timeout 2 >nul
goto 2abl.pass
:p2.wrg.k
set/a lmc.d=(27 * %random%) / 32768 + 1
set/a lmc.d+=8
set/a lmc.d=%lmc.d% * 10
set/a lmc.e=%lmc.d% / 2
set/a lmc.d= (%lmc.d% * %p2.wrg.sm%) / 10
set/a lmc.e= (%lmc.e% * %p2.wrg.sm%) / 10
if %p2.energy% lss %lmc.e% goto no.energy2

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wwt.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.wrg.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%

:p2.wrg.c
set/a p2.energy-=%lmc.e%
set/a p1.damage=%lmc.d%
set/a p2.wrg.ct=3
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
echo.                 Energy -%lmc.e%
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
echo. 
echo.                          /
echo.   +                     -
echo.                          \
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
echo.                          \/
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /\
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
echo.                           \
echo.                          \/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                          /\
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
echo.                          \\
echo.                         \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //\
echo.                          //
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                        -  \
echo.                           \
echo.                         \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //\
echo.                           /
echo.                        -  /
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       \
echo.                   -    \
echo.                         \
echo.                        \\\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                        ///
echo.                         /
echo.                   -    /
echo.                       /
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.            -            \
echo.            /             \\
echo.          //             \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.          \\             //\
echo.            \             //
echo.            -            /
echo.                       
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.                       
echo.                        
echo.                         
echo.     /                   \/
echo.   //                   \/
echo.   +                     -
echo.   \\                   /\
echo.     \                   /\
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
echo.  \                      \/
echo.   +                     -
echo.  /                      /\
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
echo.                        
echo.\                      
echo.   +                     -
echo./                      
echo.                        
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
echo.
echo. %lmc.v%
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
goto selection1

::================================================================------------------------------------=====Luminonus Arc
:p1.arc
if %p1.test.a%==1 goto p1.arc.e
if %p1.arc.sr% gtr 0 goto p1.arc.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.1grid
:p1.arc.e
if %p1.arc.ct%==0 goto p1.arc.k
if %p1.test.a%==1 goto p1.arc.k
echo. You have to regain your focus, wait %p1.arc.ct% turns.
timeout 2 >nul
goto 1abl.pass
:p1.arc.k
if %p1.energy% lss 250 goto no.energy1
set/a lmc.h=%p1.health% / 4 * 3
set/a p1.health-=%lmc.h%

set/a lmc.e=%p1.energy%
set/a p1.energy=0

set/a lmc.a=(%lmc.e% + %lmc.h%) / 4
set/a lmc.r=0
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
echo. Energy -%lmc.e%
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
echo. Health -%lmc.h%
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
echo. Darkha selim meder dau sabi,
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
echo. Luminous Arc.
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
echo. 
echo.  \
echo.   +                     -
echo.  /
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
echo.   /
echo.  /
echo.  \
echo.   +                     -
echo.  /
echo.  \
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
echo.   /
echo.  //
echo.  \/
echo.   +                     -
echo.  /\
echo.  \\
echo.   \
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. //
echo. \//
echo.  \/
echo.   +                     -
echo.  /\
echo. /\\
echo. \\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
timeout 0 >nul

:p1.arc.r
if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(60 * %random%) / 32768 + 1
set/a lmc.d=(%lmc.d% * %p1.arc.sm%) / 10

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +  -              -   - %lmc.v%
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total


if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(60 * %random%) / 32768 + 1
set/a lmc.d=(%lmc.d% * %p1.arc.sm%) / 10

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.      /
echo.    //
echo.   //
echo.  ///
echo.  //
echo. /\//
echo.   +        -            - %lmc.v%
echo. \/\\
echo.  \\
echo.  \\\
echo.   \\
echo.    \\
echo.      \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total

if %lmc.r%==%lmc.a% goto p1.arc.f
set/a lmc.r+=1
set/a lmc.d=(60 * %random%) / 32768 + 1
set/a lmc.d=(%lmc.d% * %p1.arc.sm%) / 10

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p1.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p1.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.      /
echo.    //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +      -          -   - %lmv.v%
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.    \\
echo.      \
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total
goto p1.arc.r

:p1.arc.f
cls
echo.     /
echo.   //
echo.  //
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \\
echo.   \\
echo.     \
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. ///
echo. \//
echo. /\//
echo.   +                     -
echo. \/\\
echo. /\\
echo. \\\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  /
echo. //
echo. \/
echo.  \/
echo.   +                     -
echo.  /\
echo. /\
echo. \\
echo.  \
echo.   
echo.     
echo.-----------------------------------
timeout 0 >nul
cls
echo.     
echo.   
echo.  
echo. 
echo. \
echo.  \/
echo.   +                     -
echo.  /\
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
echo. 
echo.  \
echo.   +                     -
echo.  /
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
echo.                 Total Damage -%lmc.g%
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
set/a p1.energy-=%lmc.e%
set/a p2.damage=%lmc.g%
set/a p1.arc.ct=3
goto selection2




:p2.arc
if %p2.test.a%==1 goto p2.arc.e
if %p2.arc.sr% gtr 0 goto p2.arc.e
echo You do not have the knowledge to use this skill.
timeout 2 >nul
goto sel.2grid
:p2.arc.e
if %p2.arc.ct%==0 goto p2.arc.k
if %p2.test.a%==1 goto p2.arc.k
echo. You have to regain your focus, wait %p2.arc.ct% turns.
timeout 2 >nul
goto 2abl.pass
:p2.arc.k
if %p2.energy% lss 250 goto no.energy1
set/a lmc.h=%p2.health% / 4 * 3
set/a p2.health-=%lmc.h%

set/a lmc.e=%p2.energy%
set/a p2.energy=0

set/a lmc.a=(%lmc.e% + %lmc.h%) / 8
set/a lmc.r=0
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
echo.                     Energy -%lmc.e%
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
echo.                     Health -%lmc.h%
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
echo.                     Darkha selim meder dau sabi,
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
echo.                     Luminous Arc.
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
echo. 
echo.                          /
echo.   +                     -
echo.                          \
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
echo.                         \
echo.                          \
echo.                          /
echo.   +                     -
echo.                          \
echo.                          /
echo.                         /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                         \
echo.                         \\
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //
echo.                         /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.                          \
echo.                          \\
echo.                         \\/
echo.                         \/
echo.   +                     -
echo.                         /\
echo.                         //\
echo.                          //
echo.                          /
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.                       \
echo.                        \\
echo.                         \\
echo.                         \\\
echo.                         \\/
echo.                        \\\/
echo.   +                     -
echo.                        //\/
echo.                         //\
echo.                         ///
echo.                         //
echo.                        //
echo.                       /
echo.-----------------------------------
timeout 0 >nul

:p2.arc.r
if %lmc.r%==%lmc.a% goto p2.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p2.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.                       \
echo.                        \\
echo.                         \\
echo.                         \\\
echo.                         \\/
echo.                        \\/\
echo.   +  -           -      -
echo.                        //\/
echo.                         //\
echo.                         ///
echo.                         //
echo.                        //
echo.                       /
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total %lmc.v%

:p2.arc.r
if %lmc.r%==%lmc.a% goto p2.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p2.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.                       \
echo.                        \\
echo.                        \\
echo.                        \\\
echo.                         \\
echo.                        \\/\
echo.   +           -         -
echo.                        //\/
echo.                         //
echo.                        ///
echo.                        //
echo.                        //
echo.                       /
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total %lmc.v%

:p2.arc.r
if %lmc.r%==%lmc.a% goto p2.arc.f
set/a lmc.r+=1
set/a lmc.d=(40 * %random%) / 32768 + 1

set lmc.v=HEALTH -%lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=CRITICAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=FATAL! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=DEADLY! - %lmc.d%
set/a lmc.cr=(3 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 2
set lmc.v=GODLY! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=OVERKILL! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=ANNIHILATION! - %lmc.d%
set/a lmc.cr=(4 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 4
set lmc.v=INCINERATION! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=FINAL HIT! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 32
set lmc.v=LEGENDARY! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 64
set lmc.v=Final Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 128
set lmc.v=Final Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Light! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 256
set lmc.v=Demonic Darkness! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 512
set lmc.v=Final Luminous! - %lmc.d%
set/a lmc.cr=(2 * %random%) / 32768 + 1
if not %lmc.cr%==2 goto p2.arc.c
set/a lmc.d=%lmc.d% * 1024
set lmc.v=End Luminous - %lmc.d%
:p2.arc.c
set/a lmc.g+=%lmc.d%
cls
echo.                     \
echo.                      \\
echo.                        \\
echo.                         \\\
echo.                         \\/
echo.                        \\/\
echo.   +      -    -         -
echo.                        //\/
echo.                         //\
echo.                         ///
echo.                        //
echo.                      //
echo.                     /
echo.-----------------------------------
echo. %lmc.r% Hits
echo. %lmc.a% Total %lmc.v%
goto p2.arc.r

:p1.arc.f
cls
echo.                       \
echo.                        \\
echo.                         \\
echo.                         \\\
echo.                         \\/
echo.                        \\/\
echo.   +                     -
echo.                        //\/
echo.                         //\
echo.                         ///
echo.                         //
echo.                        //
echo.                       /
echo.-----------------------------------
timeout 0 >nul
cls
echo.                       
echo.                         
echo.                          \
echo.                         \\\
echo.                         \\/
echo.                        \\/\
echo.   +                     -
echo.                        //\/
echo.                         //\
echo.                         ///
echo.                          /
echo.                         
echo.                       
echo.-----------------------------------
timeout 0 >nul
cls
echo.                       
echo.                         
echo.                           
echo.                          \\
echo.                          \/
echo.                         \/ 
echo.   +                     -
echo.                         /\ 
echo.                          /\
echo.                          //
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
echo.                           /
echo.                         \/ 
echo.   +                     -
echo.                         /\ 
echo.                           \
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
echo.                          / 
echo.   +                     -
echo.                          \ 
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
echo. Total Damage -%lmc.g%
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
set/a p2.energy-=%lmc.e%
set/a p1.damage=%lmc.g%
set/a p2.arc.ct=5
goto selection1


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
echo.
echo.    +                     -
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
echo.   / \
echo.    +                     -
echo.   \ /
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
echo.   / \
echo.  /   \
echo.    +                     -
echo.  \   /
echo.   \ /
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
echo.   / \
echo.   / \
echo.                          
echo.                          -
echo.                          
echo.   \ /
echo.   \ /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo. /     \
echo.                           
echo.                          
echo.                          - 
echo.                          
echo.                           
echo. \     /
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
echo.                          -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
::cal
set/a p2.dxp=30
set/a p1.dxp=75
set/a p1.exp.c=%p1.dxp% + (%p1.dtotal% / 5)
set/a p2.exp.c=%p2.dxp% + (%p2.dtotal% / 5)
set/a p1.gold.c=%p1.dtotal% / 5 + 100
set/a p2.gold.c=%p2.dtotal% / 5 + 200
set/a score1+=%p1.gold.c%
set/a score2+=%p2.gold.c%

cls
echo.
echo.
echo.
echo.    %name2% WINS!
echo.                         
echo.                       
echo.                           -
echo.                     
echo.    %name2% +%p2.gold.c% Gold +%p2.exp.c% EXP
echo.    %name1% +%p1.gold.c% Gold +%p1.exp.c% EXP
echo.
echo.
echo.
echo.-----------------------------------
timeout 2 >nul
cls
echo.
echo.
echo.
echo.    %name2% WINS!
echo.                         
echo.                       
echo.                           -
echo.                     
echo.    %name2% +%p2.gold.c% Gold +%p2.exp.c% EXP
echo.    %name1% +%p1.gold.c% Gold +%p1.exp.c% EXP
echo.
echo.   [Press any key]
echo.
echo.-----------------------------------
pause >nul
goto prestore

:die2
if %p1.health% LSS 1 goto draw
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.    +                     -
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
echo.                         / \
echo.    +                     -
echo.                         \ /
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
echo.                         / \
echo.                        /   \
echo.    +                      
echo.                        \   /
echo.                         \ /
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
echo.                         / \
echo.                         / \
echo.                          
echo.    +                        
echo.                          
echo.                         \ /
echo.                         \ /
echo.
echo.
echo.
echo.-----------------------------------
timeout 0 >nul
cls
echo.
echo.
echo.
echo.                       /     \
echo.                           
echo.                          
echo.    +                        
echo.                          
echo.                           
echo.                       \     /
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
echo.    +                       
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 1 >nul
::cal
set/a p1.dxp=30
set/a p2.dxp=75

set/a p1.exp.c=%p1.dxp% + (%p1.dtotal% / 5)
set/a p2.exp.c=%p2.dxp% + (%p2.dtotal% / 5)
set/a p1.gold.c=%p1.dtotal% / 5 + 200
set/a p2.gold.c=%p2.dtotal% / 5 + 100
set/a score1+=%p1.gold.c%
set/a score2+=%p2.gold.c%

cls
echo.
echo.
echo.
echo.    
echo.    %name1% WINS!                     
echo.                          
echo.  +                        
echo.                          
echo.    %name1% +%p1.gold.c% Gold +%p1.exp.c% EXP
echo.    %name2% +%p2.gold.c% Gold +%p2.exp.c% EXP
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
echo.    %name1% WINS!                     
echo.                          
echo.  +                        
echo.                          
echo.    %name1% +%p1.gold.c% Gold +%p1.exp.c% EXP
echo.    %name2% +%p2.gold.c% Gold +%p2.exp.c% EXP
echo. 
echo.    [Press any key]
echo.
echo.-----------------------------------
pause >nul
goto prestore

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
echo.        %name1% +G100 +XP40
echo.        %name2% +G100 +XP40
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
echo.        %name1% +G100 +XP40
echo.        %name2% +G100 +XP40
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
set/a p1.dxp=40
set/a p2.dxp=40
goto prestore


::Storefiles


::==========--------------------==PlayerStats

:stat11
cls
echo.-----------------------------------
echo._____
echo.     ] PLAYERNAME: %NAME1%
echo.  +  ] GOLD:       %SCORE1%
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence %p1.defpen% Defpen %p1.defrate% Defrate
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence %p2.defpen% Defpen %p1.defrate% Defrate
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
echo.  -  ] GOLD:       %SCORE2%
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence %p1.defpen% Defpen %p1.defrate% Defrate
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence %p2.defpen% Defpen %p1.defrate% Defrate
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
echo.  +  ] GOLD:       %SCORE1%
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence %p1.defpen% Defpen %p1.defrate% Defrate
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence %p2.defpen% Defpen %p1.defrate% Defrate
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
echo.  -  ] GOLD:       %SCORE2%
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
echo. %name1%: %p1.health% Health %p1.energy% Energy %p1.def% Defence %p1.defpen% Defpen %p1.defrate% Defrate
echo. %name2%: %p2.health% Health %p2.energy% Energy %p2.def% Defence %p2.defpen% Defpen %p1.defrate% Defrate
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


:prestore
set/a p1.exp+=%p1.exp.c%
set/a p1.dxp=0
set/a p1.dtotal=0
set/a p2.exp+=%p2.exp.c%
set/a p2.dxp=0
set/a p2.dtotal=0

::save
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Autosaving
echo.
echo.                             
ren saves.lmc saves.bat
echo set name1=%name1%> saves.bat
echo set name2=%name2%>> saves.bat
echo set/a p1.set.hl=%p1.set.hl%>> saves.bat
echo set/a p2.set.hl=%p2.set.hl%>> saves.bat
echo set/a p1.set.en=%p1.set.en%>> saves.bat
echo set/a p2.set.en=%p2.set.en%>> saves.bat

echo set/a p1sh=%p1sh% >> saves.bat
echo set/a p2sh=%p2sh% >> saves.bat
echo set/a e1sh=%e1sh% >> saves.bat
echo set/a e2sh=%e2sh% >> saves.bat
echo set/a d1sh=%d1sh% >> saves.bat
echo set/a d2sh=%d2sh% >> saves.bat

echo set/a p1.set.df=%p1.set.df% >> saves.bat
echo set/a p2.set.df=%p2.set.df% >> saves.bat
echo set/a p1.def=%p1.def% >> saves.bat
echo set/a p2.def=%p1.def% >> saves.bat
echo set/a score1=%score1% >> saves.bat
echo set/a score2=%score2% >> saves.bat
echo set/a p1.exp=%p1.exp% >> saves.bat
echo set/a p2.exp=%p2.exp% >> saves.bat

echo set mainselect1=attack>> saves.bat
echo set mainselect2=attack>> saves.bat
echo set store1=next>> saves.bat
echo set store2=next>> saves.bat
echo set p1.ews.vis=%p1.ews.vis% >> saves.bat
echo set p1.las.vis=%p1.ews.vis% >> saves.bat
echo set p1.fas.vis=%p1.ews.vis% >> saves.bat
echo set p2.ews.vis=%p2.ews.vis% >> saves.bat
echo set p2.las.vis=%p2.ews.vis% >> saves.bat
echo set p2.fas.vis=%p2.ews.vis% >> saves.bat
echo set/a p1.lmc.a=%p1.lmc.a% >> saves.bat
echo set/a p2.lmc.a=%p2.lmc.a% >> saves.bat
echo set/a p1.test.a=%p1.test.a% >> saves.bat
echo set/a p2.test.a=%p2.test.a% >> saves.bat

echo set/a p1.ews.a=%p1.ews.a% >> saves.bat
echo set/a p2.ews.a=%p2.ews.a% >> saves.bat
echo set/a p1.las.a=%p1.las.a% >> saves.bat
echo set/a p2.las.a=%p2.las.a% >> saves.bat
echo set/a p1.fas.a=%p1.fas.a% >> saves.bat
echo set/a p2.fas.a=%p2.fas.a% >> saves.bat
echo set/a p1.att.sr=%p1.att.sr% >> saves.bat
echo set/a p2.att.sr=%p2.att.sr% >> saves.bat
echo set/a p1.fus.sr=%p1.fus.sr% >> saves.bat
echo set/a p2.fus.sr=%p2.fus.sr% >> saves.bat
echo set/a p1.hla.sr=%p1.hla.sr% >> saves.bat
echo set/a p2.hla.sr=%p2.hla.sr% >> saves.bat
echo set/a p1.res.sr=%p1.res.sr% >> saves.bat
echo set/a p2.res.sr=%p2.res.sr% >> saves.bat
echo set/a p1.sok.sr=%p1.sok.sr% >> saves.bat
echo set/a p2.sok.sr=%p2.sok.sr% >> saves.bat
echo set/a p1.lig.sr=%p1.lig.sr% >> saves.bat
echo set/a p2.lig.sr=%p2.lig.sr% >> saves.bat
echo set/a p1.hdr.sr=%p1.hdr.sr% >> saves.bat
echo set/a p2.hdr.sr=%p2.hdr.sr% >> saves.bat
echo set/a p1.get.sr=%p1.get.sr% >> saves.bat
echo set/a p2.get.sr=%p2.get.sr% >> saves.bat
echo set/a p1.ice.sr=%p1.ice.sr% >> saves.bat
echo set/a p2.ice.sr=%p2.ice.sr% >> saves.bat
echo set/a p1.msh.sr=%p1.msh.sr% >> saves.bat
echo set/a p2.msh.sr=%p2.msh.sr% >> saves.bat
echo set/a p1.hly.sr=%p1.hly.sr% >> saves.bat
echo set/a p2.hly.sr=%p2.hly.sr% >> saves.bat
echo set/a p1.gen.sr=%p1.gen.sr% >> saves.bat
echo set/a p2.gen.sr=%p2.gen.sr% >> saves.bat
echo set/a p1.llc.sr=%p1.llc.sr% >> saves.bat
echo set/a p2.llc.sr=%p2.llc.sr% >> saves.bat
echo set/a p1.lbr.sr=%p1.lbr.sr% >> saves.bat
echo set/a p2.lbr.sr=%p2.lbr.sr% >> saves.bat
echo set/a p1.llb.sr=%p1.llb.sr% >> saves.bat
echo set/a p2.llb.sr=%p2.llb.sr% >> saves.bat
echo set/a p1.lbl.sr=%p1.lbl.sr% >> saves.bat
echo set/a p2.lbl.sr=%p2.lbl.sr% >> saves.bat
echo set/a p1.smh.sr=%p1.smh.sr% >> saves.bat
echo set/a p2.smh.sr=%p2.smh.sr% >> saves.bat
echo set/a p1.fsh.sr=%p1.fsh.sr% >> saves.bat
echo set/a p2.fsh.sr=%p2.fsh.sr% >> saves.bat
echo set/a p1.fbr.sr=%p1.fbr.sr% >> saves.bat
echo set/a p2.fbr.sr=%p2.fbr.sr% >> saves.bat
echo set/a p1.fsl.sr=%p1.fsl.sr% >> saves.bat
echo set/a p2.fsl.sr=%p2.fsl.sr% >> saves.bat
echo set/a p1.wwt.sr=%p1.wwt.sr% >> saves.bat
echo set/a p2.wwt.sr=%p2.wwt.sr% >> saves.bat
echo set/a p1.blk.sr=%p1.blk.sr% >> saves.bat
echo set/a p2.blk.sr=%p2.blk.sr% >> saves.bat
echo set/a p1.lsh.sr=%p1.lsh.sr% >> saves.bat
echo set/a p2.lsh.sr=%p2.lsh.sr% >> saves.bat
echo set/a p1.wrg.sr=%p1.wrg.sr% >> saves.bat
echo set/a p2.wrg.sr=%p2.wrg.sr% >> saves.bat
echo set/a p1.arc.sr=%p1.arc.sr% >> saves.bat
echo set/a p2.arc.sr=%p2.arc.sr% >> saves.bat

echo set/a ai.a=%ai.a% >> saves.bat
echo set/a ai.dif=%ai.dif% >> saves.bat
echo set ai.dif.v=%ai.dif.v% >> saves.bat
ren saves.bat saves.lmc

:store
if %d1sh% geq 5 set/a p1.defcost=%d1sh% / 5 * 100
if %saves.var%==1 set/a saves.var=0
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp 
echo.    
echo.                       Gold  / Inp
echo. +10%% Starting Health   100     h 
echo. +10%% Starting Energy   100     e 
echo. +5 Defence:            %p1.defcost%     d 
echo.       
echo. Classes                       cls
echo.
echo. Skills                        srk
echo.
echo. H+%p1sh% E+%e1sh% D+%d1sh%
echo.-----------------------------------
set/p store1=

if %store1%==h goto sh1
if %store1%==e goto se1
if %store1%==d goto sd1
if %store1%==cls goto store1.skl
if %store1%==srk goto store1.srk
if %store1%==next goto store2

goto store

:sh1
if %score1% lss 100 goto store
set/a score1-=100
set/a p1sh=((%p1sh% + 100) * 11) / 10 - 100
if %p1sh% lss %p1.hllimit% goto store
set/a p1sh=%p1.hllimit%
set/a score1+=100
goto store

:se1
if %score1% lss 100 goto store
set/a score1-=100
set/a e1sh=((%e1sh% + 100) * 11) / 10 - 100
if %e1sh% lss %p1.enlimit% goto store
set/a e1sh=%p1.enlimit%
set/a score1+=100
goto store

:sd1
if %d1sh% geq 5 set/a p1.defcost=%d1sh% / 5 * 100
if %score1% lss %p1.defcost% goto store
set/a score1-=%p1.defcost%
set/a d1sh+=5
set/a cal=%p1.deflimit% + 1
if %d1sh% lss %cal% goto store
set/a d1sh=%p1.deflimit%
set/a score1+=%p1.defcost%
goto store


:store1.skl
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.     Input 'back' to go back
echo.                        EXP / Inp
echo. Eweca Class            400    e 
echo.  %p1.ews.vis%       
echo. 
echo. Laceda Class           400    l
echo.  %p1.las.vis%
echo. 
echo. Fallias Class          400    f
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
if %p1.exp% lss 400 goto store1.skl
if %p1.las.a%==1 store1.skl
if %p1.lmc.a%==1 store1.skl
if %p1.fas.a%==1 store1.skl
set/a p1.exp-=400
set/a p1.ews.a=1
set/a p1.set.hl=100
set/a p1.set.en=200
set/a p1.defrate=10
set/a p1.defpen=4
set/a p1.deflimit=40
set/a p1.hllimit=1500
set/a p1.enlimit=3000
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
set skl.v= You have been blessed with the essence of Eweca
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
echo.  [ ]
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
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  / \
echo.  / \
echo.  / \
echo.  / \
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  \ /
echo.  \ /
echo.  \ /
echo.  \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.  / \
echo.  / \
echo.  / \
echo.   +                   -
echo.  \ /
echo.  \ /
echo.  \ /
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
echo.   +                   -
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
echo. %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store1.skl

:p1.las
if %p1.las.a%==1 goto store1.skl
if %p1.exp% lss 400 goto store1.skl
if %p1.ews.a%==1 goto store1.skl
if %p1.lmc.a%==1 store1.skl
if %p1.fas.a%==1 goto store1.skl
set/a p1.exp-=400
set/a p1.las.a=1
set/a p1.set.hl=100
set/a p1.set.en=50
set/a p1.defrate=20
set/a p1.defpen=4
set/a p1.deflimit=30
set/a p1.hllimit=3000
set/a p1.enlimit=2000
set p1.sta.sk1=Lunar Cero     (cero)
set p1.sta.sk2=Lunar Brandish (lunar)
set p1.sta.sk3=Mana Shield    (msh)
set p1.sta.sk4=Laceda Blossom (blossom)
set p1.sta.sk5=Laceda Blade   (blade)
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
set skl.v=You have been blessed with the power of Laceda
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
echo.  [ ]
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
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  / \
echo.  / \
echo.  / \
echo.  / \
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  \ /
echo.  \ /
echo.  \ /
echo.  \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.  / \
echo.  / \
echo.  / \
echo.   +                   -
echo.  \ /
echo.  \ /
echo.  \ /
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
echo.   +                   -
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
echo. %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store1.skl

:p1.fas
if %p1.fas.a%==1 goto store1.skl
if %p1.exp% lss 400 goto store1.skl
if %p1.ews.a%==1 goto store1.skl
if %p1.las.a%==1 goto store1.skl
if %p1.lmc.a%==1 store1.skl
set/a p1.exp-=400
set/a p1.fas.a=1
set/a p1.set.hl=150
set/a p1.set.en=100
set/a p1.defrate=30
set/a p1.defpen=2
set/a p1.deflimit=50
set/a p1.hllimit=5000
set/a p1.enlimit=2000
set p1.sta.sk1=Smash          (smash)
set p1.sta.sk2=Falias Heal    (fheal)
set p1.sta.sk3=Falias Sheild  (msh)
set p1.sta.sk4=Light Brandish (brandish)
set p1.sta.sk5=Falias' Wrath  (falias)
set p1.skd.sk1[Defence Class]
set p1.skd.sk2=Bestowed with the force of Falias, you know have superior defence capabilities.
set p1.skd.sk3=Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
set p1.skd.sk4=[Difference] Huge defence, huge health, low attack, this means that Falias is the ultimate survivor
set p1.skd.sk5=[Technical] Huge defrate, minimal def peneratration, not just anyone can beat a failias.
set p1.skd.sk6=.
set p1.skd.sk7=.
set p1.sta.vis=Falias
set p1.ews.vis=Locked
set p1.fas.vis=Active
set p1.las.vis=Locked
set skl.v=You have inherited the fury of Falias
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
echo.  [ ]
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
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  / \
echo.  / \
echo.  / \
echo.  / \
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  \ /
echo.  \ /
echo.  \ /
echo.  \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.  / \
echo.  / \
echo.  / \
echo.   +                   -
echo.  \ /
echo.  \ /
echo.  \ /
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
echo.   +                   -
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
echo. %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store1.skl

::Admn Skillset
:p1.lmc
if exist "G:\lmc.admnlock\key.lmc" goto p1.lmckey
if exist "D:\lmc.admnlock\key.lmc" goto p1.lmckey
if exist "H:\lmc.admnlock\key.lmc" goto p1.lmckey
goto store1.skl
:p1.lmckey
if not %name1%==Wolfe goto store1.skl
if %p1.lmc.a%==1 goto store1.skl
if %p1.exp% lss 400 goto store1.skl
if %p1.ews.a%==1 goto store1.skl
if %p1.las.a%==1 goto store1.skl
if %p1.fas.a%==1 goto store1.skl
set/a p1.exp-=400
set/a p1.lmc.a=1
set/a p1.set.hl=180
set/a p1.set.en=200
set/a p1.set.df=8
set/a p1.defrate=20
set/a p1.defpen=15
set/a p1.deflimit=30
set/a p1.hllimit=3500
set/a p1.enlimit=8000
set p1.sta.sk1=Wings of White  (wingw)
set p1.sta.sk2=Black Light     (black)
set p1.sta.sk3=Luminous Shield (lsh)
set p1.sta.sk4=Wings of Rage   (wingr)
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
set skl.v=You have inherited the light of lights
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
echo.  [ ]
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
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.  [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.  / \
echo.  / \
echo.  / \
echo.  / \
echo. /   \
echo. /   \
echo.   +                   -
echo. \   /
echo. \   /
echo.  \ /
echo.  \ /
echo.  \ /
echo.  \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.  / \
echo.  / \
echo.  / \
echo.   +                   -
echo.  \ /
echo.  \ /
echo.  \ /
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
echo.   +                   -
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
echo. %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store1.skl


::Skill ranks
:store1.ski
:store1.srk
if %p1.ews.a%==1 goto store1.srk.eweca
if %p1.las.a%==1 goto store1.srk.laceda
if %p1.fas.a%==1 goto store1.srk.falias
if %p1.lmc.a%==1 goto store1.srk.luminous

:store1.srk.normal
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.              Rank    G/E   Input
echo. Attack        %p1.att.sd%     %p1.att.sc%/%p1.att.se%   A
echo. 
echo. Heal          %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Fusion        %p1.fus.sd%     %p1.fus.sc%/%p1.fus.se%   F
echo. 
echo. Rest          %p1.res.sd%     %p1.res.sc%/%p1.res.se%   R
echo.
echo. Class: Adventurer
echo ==============-----------------===
echo.
echo. Sokatsui      %p1.sok.sd%     %p1.sok.sc%/%p1.sok.se%   S
echo. 
echo. Lightning     %p1.lig.sd%     %p1.lig.sc%/%p1.lig.se%   L
echo.       
echo. Getsuga       %p1.get.sd%     %p1.get.sc%/%p1.get.se%   G
echo. 
echo. Health Drain  %p1.hdr.sd%     %p1.hdr.sc%/%p1.hdr.se%   HD
echo.
echo =============------------------===
set/p store1.skr=
if %store1.skr%==a goto store1.srk.att
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==f goto store1.srk.fus
if %store1.skr%==r goto store1.srk.res
if %store1.skr%==s goto store1.srk.sok
if %store1.skr%==l goto store1.srk.lig
if %store1.skr%==g goto store1.srk.get
if %store1.skr%==hd goto store1.srk.hdr
if %store1.skr%==back goto store
goto store1.srk.normal

::Skill modifiers

:store1.ski.max
echo Your skill cannot go any higher than Rank 0.
timeout 1 >nul
goto store1.srk

:store1.ski.nom
echo Not enough Gold, sorry.
timeout 1 >nul
goto store1.srk

:store1.srk.get
if %p1.get.sr% gtr 16 goto store1.ski.max
if not %p1.get.sr%==0 goto ski1.get.r
if %score1% lss 600 goto store1.ski.nom
set/a p1.get.sr=1
call :get.dec
set/a score1-=600
echo You have inherited the Legendary
echo         GETSUGA TENSHOU!
timeout 2 >nul
echo The input for this skill is "getsuga"
echo    Getsuga is now rank %p1.get.sd%
timeout 3 >nul
goto store1.srk

:ski1.get.r
if %score1% gtr %p1.get.sc% goto store1.ski.getc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.getc
if %p1.exp% gtr %p1.get.se% goto store1.ski.getd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.getd
set/a score1-=%p1.get.sc%
set/a p1.exp-=%p1.get.se%
set/a p1.get.sr+=1
call :get.dec
echo. Getsuga has been increased to Rank %p1.get.sd%!
timeout 2 >nul
goto store1.srk


:store1.srk.sok
if %p1.sok.sr% gtr 16 goto store1.ski.max
if not %p1.sok.sr%==0 goto ski1.sok.r
if %score1% lss 150 goto store1.ski.nom
set/a p1.sok.sr=1
call :sok.dec
set/a score1-=150
echo You have inherited Hado 33
echo         SOKATSUI
timeout 2 >nul
echo The input for this skill is "sokatsui"
echo   Sokatui is now rank %p1.sok.sd%
timeout 3 >nul
goto store1.srk

:ski1.sok.r
if %score1% gtr %p1.sok.sc% goto store1.ski.sokc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.sokc
if %p1.exp% gtr %p1.sok.se% goto store1.ski.sokd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.sokd
set/a score1-=%p1.sok.sc%
set/a p1.exp-=%p1.sok.se%
set/a p1.sok.sr+=1
call :sok.dec
echo. Sokatsui has been increased to Rank %p1.sok.sd%!
timeout 2 >nul
goto store1.srk



:store1.srk.lig
if %p1.lig.sr% gtr 16 goto store1.ski.max
if not %p1.lig.sr%==0 goto ski1.lig.r
if %score1% lss 450 goto store1.ski.nom
set/a p1.lig.sr=1
set/a score1-=450
echo You have inherited the Light of the sky,
echo              LIGHTNING
timeout 2 >nul
echo The input for this skill is "light"
timeout 3 >nul
goto store1.srk

:ski1.lig.r
if %score1% gtr %p1.lig.sc% goto store1.ski.ligc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.ligc
if %p1.exp% gtr %p1.lig.se% goto store1.ski.ligd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.ligd
set/a score1-=%p1.lig.sc%
set/a p1.exp-=%p1.lig.se%
set/a p1.lig.sr+=1
call :lig.dec
echo. Lightning has been increased to Rank %p1.lig.sd%!
timeout 2 >nul
goto store1.srk


:store1.srk.hdr
if %p1.hdr.sr% gtr 16 goto store1.ski.max
if not %p1.hdr.sr%==0 goto ski1.hdr.r
if %score1% lss 450 goto store1.ski.nom
set/a p1.hdr.sr=1
set/a score1-=450
echo You have inherited the thirst of blood,
echo             Health Drain
timeout 2 >nul
echo The input for this skill is "hdrain"
timeout 3 >nul
goto store1.srk

:ski1.hdr.r
if %score1% gtr %p1.hdr.sc% goto store1.ski.hdrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.hdrc
if %p1.exp% gtr %p1.hdr.se% goto store1.ski.hdrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.hdrd
set/a score1-=%p1.hdr.sc%
set/a p1.exp-=%p1.hdr.se%
set/a p1.lig.sr+=1
call :hdr.dec
echo. Health Drain has been increased to Rank %p1.hdr.sd%!
timeout 2 >nul
goto store1.srk


:store1.srk.att
if %p1.att.sr% gtr 16 goto store1.srk
if %score1% gtr %p1.att.sc% goto store1.srk.attc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.srk.attc
if %p1.exp% gtr %p1.att.se% goto store1.srk.attd
echo. You do not have enough EXP
timeout 2 >nul
goto store1.srk
:store1.srk.attd
set/a score1-=%p1.att.sc%
set/a p1.exp-=%p1.att.se%
set/a p1.att.sr+=1
call :att.dec
echo. Your Attack Skill has increased to %p1.att.sd%
timeout 2 >nul
goto store1.srk

:store1.srk.res
if %p1.res.sr% gtr 16 goto store1.srk
if %score1% gtr %p1.res.sc% goto store1.srk.resc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.srk.resc
if %p1.exp% gtr %p1.res.se% goto store1.srk.resd
echo. You do not have enough EXP
timeout 2 >nul
goto store1.srk
:store1.srk.resd
set/a score1-=%p1.res.sc%
set/a p1.exp-=%p1.res.se%
set/a p1.res.sr+=1
call :res.dec
echo. Your Rest Skill has increased to %p1.res.sd%
timeout 2 >nul
goto store1.srk

:store1.srk.fus
if %p1.fus.sr% gtr 16 goto store1.srk
if %score1% gtr %p1.fus.sc% goto store1.srk.fusc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.srk.fusc
if %p1.exp% gtr %p1.fus.se% goto store1.srk.fusd
echo. You do not have enough EXP
timeout 2 >nul
goto store1.srk
:store1.srk.fusd
set/a score1-=%p1.fus.sc%
set/a p1.exp-=%p1.fus.se%
set/a p1.fus.sr+=1
call :fus.dec
echo. Your Fusion Skill has increased to %p1.fus.sd%
timeout 2 >nul
goto store1.srk

:store1.srk.hla
if %p1.hla.sr% gtr 16 goto store1.srk
if %score1% gtr %p1.hla.sc% goto store1.srk.hlac
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.srk.hlac
if %p1.exp% gtr %p1.hla.se% goto store1.srk.hlad
echo. You do not have enough EXP
timeout 2 >nul
goto store1.srk
:store1.srk.hlad
set/a score1-=%p1.hla.sc%
set/a p1.exp-=%p1.hla.se%
set/a p1.hla.sr+=1
call :hla.dec
echo. Your Healing Skill has increased to %p1.hla.sd%
timeout 2 >nul
goto store1.srk

::=====-----eweca

:store1.srk.ice
if %p1.ice.sr% gtr 16 goto store1.ski.max
if not %p1.ice.sr%==0 goto ski1.ice.r
if %score1% lss %p1.msh.sc% goto store1.ski.nom
set/a p1.ice.sr=1
set/a score1-=%p1.msh.sc%
echo You have inherited the frozen spear,
echo              Ice Spear
timeout 2 >nul
echo The input for this skill is "ice"
timeout 3 >nul
goto store1.srk

:ski1.ice.r
if %score1% gtr %p1.ice.sc% goto store1.ski.icec
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.icec
if %p1.exp% gtr %p1.ice.se% goto store1.ski.iced
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.iced
set/a score1-=%p1.ice.sc%
set/a p1.exp-=%p1.ice.se%
set/a p1.ice.sr+=1
call :ice.dec
echo. Ice Spear has been increased to Rank %p1.ice.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.msh
if %p1.msh.sr% gtr 16 goto store1.ski.max
if not %p1.msh.sr%==0 goto ski1.msh.r
if %score1% lss %p1.msh.sc% goto store1.ski.nom
set/a p1.msh.sr=1
set/a score1-=%p1.msh.sc%
echo You have inherited the essence of Inrid,
echo              Mana Shield
timeout 2 >nul
echo The input for this skill is "msh"
timeout 3 >nul
goto store1.srk

:ski1.msh.r
if %score1% gtr %p1.msh.sc% goto store1.ski.mshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.mshc
if %p1.exp% gtr %p1.msh.se% goto store1.ski.mshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.mshd
set/a score1-=%p1.msh.sc%
set/a p1.exp-=%p1.msh.se%
set/a p1.msh.sr+=1
call :msh.dec
echo. Mana Shield has been increased to Rank %p1.msh.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.hly
if %p1.hly.sr% gtr 16 goto store1.ski.max
if not %p1.hly.sr%==0 goto ski1.hly.r
if %score1% lss %p1.hly.sc% goto store1.ski.nom
set/a p1.hly.sr=1
set/a score1-=%p1.hly.sc%
echo You have inherited the arrow of light,
echo               Holy Arrow
timeout 2 >nul
echo The input for this skill is "holy"
timeout 3 >nul
goto store1.srk

:ski1.hly.r
if %score1% gtr %p1.hly.sc% goto store1.ski.hlyc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.hlyc
if %p1.exp% gtr %p1.hly.se% goto store1.ski.hlyd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.hlyd
set/a score1-=%p1.hly.sc%
set/a p1.exp-=%p1.hly.se%
set/a p1.hly.sr+=1
call :hly.dec
echo. Holy Arrow has been increased to Rank %p1.hly.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.gen
if %p1.gen.sr% gtr 16 goto store1.ski.max
if not %p1.gen.sr%==0 goto ski1.gen.r
if %score1% lss %p1.gen.sc% goto store1.ski.nom
set/a p1.gen.sr=1
set/a score1-=%p1.gen.sc%
echo You have inherited the origin of light,
echo                Genesis
timeout 2 >nul
echo The input for this skill is "holy"
timeout 3 >nul
goto store1.srk

:ski1.gen.r
if %score1% gtr %p1.gen.sc% goto store1.ski.genc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.genc
if %p1.exp% gtr %p1.gen.se% goto store1.ski.gend
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.gend
set/a score1-=%p1.gen.sc%
set/a p1.exp-=%p1.gen.se%
set/a p1.gen.sr+=1
call :gen.dec
echo. Genesis has been increased to Rank %p1.gen.sd%!
timeout 2 >nul
goto store1.srk

::=====-----Laceda

:store1.srk.llc
if %p1.llc.sr% gtr 16 goto store1.ski.max
if not %p1.llc.sr%==0 goto ski1.llc.r
if %score1% lss %p1.llc.sc% goto store1.ski.nom
set/a p1.llc.sr=1
set/a score1-=%p1.llc.sc%
echo You have inherited the condensation of energy,
echo              Lunar Laceda Cero
timeout 2 >nul
echo The input for this skill is "cero"
timeout 3 >nul
goto store1.srk

:ski1.llc.r
if %score1% gtr %p1.llc.sc% goto store1.ski.llcc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.llcc
if %p1.exp% gtr %p1.llc.se% goto store1.ski.llcd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.llcd
set/a score1-=%p1.llc.sc%
set/a p1.exp-=%p1.llc.se%
set/a p1.llc.sr+=1
call :llc.dec
echo. Laceda Cero has been increased to Rank %p1.llc.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.lbr
if %p1.lbr.sr% gtr 16 goto store1.ski.max
if not %p1.lbr.sr%==0 goto ski1.lbr.r
if %score1% lss %p1.lbr.sc% goto store1.ski.nom
set/a p1.lbr.sr=1
set/a score1-=%p1.lbr.sc%
echo You have inherited the condensation of speed,
echo               Lunar Brandish
timeout 2 >nul
echo The input for this skill is "lunar"
timeout 3 >nul
goto store1.srk

:ski1.lbr.r
if %score1% gtr %p1.lbr.sc% goto store1.ski.lbrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.lbrc
if %p1.exp% gtr %p1.lbr.se% goto store1.ski.lbrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.lbrd
set/a score1-=%p1.lbr.sc%
set/a p1.exp-=%p1.lbr.se%
set/a p1.lbr.sr+=1
call :lbr.dec
echo. Lunar Brandish has been increased to Rank %p1.lbr.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.llb
if %p1.llb.sr% gtr 16 goto store1.ski.max
if not %p1.llb.sr%==0 goto ski1.llb.r
if %score1% lss %p1.llb.sc% goto store1.ski.nom
set/a p1.llb.sr=1
set/a score1-=%p1.llb.sc%
echo You have inherited the flower of Laceda,
echo               Laceda Blossom
timeout 2 >nul
echo The input for this skill is "blossom"
timeout 3 >nul
goto store1.srk

:ski1.llb.r
if %score1% gtr %p1.llb.sc% goto store1.ski.llbc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.llb
if %p1.exp% gtr %p1.llb.se% goto store1.ski.llbd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.llbd
set/a score1-=%p1.llb.sc%
set/a p1.exp-=%p1.llb.se%
set/a p1.llb.sr+=1
call :llb.dec
echo. Laceda Blossom has been increased to Rank %p1.llb.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.lbl
if %p1.lbl.sr% gtr 16 goto store1.ski.max
if not %p1.lbl.sr%==0 goto ski1.lbl.r
if %score1% lss %p1.lbl.sc% goto store1.ski.nom
set/a p1.lbl.sr=1
set/a score1-=%p1.lbl.sc%
echo You have inherited the edge of Laceda,
echo               Laceda Blade
timeout 2 >nul
echo The input for this skill is "blade"
timeout 3 >nul
goto store1.srk

:ski1.lbl.r
if %score1% gtr %p1.lbl.sc% goto store1.ski.lblc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.srk
:store1.ski.lbl
if %p1.exp% gtr %p1.lbl.se% goto store1.ski.lbld
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.srk
:store1.ski.lbld
set/a score1-=%p1.lbl.sc%
set/a p1.exp-=%p1.lbl.se%
set/a p1.lbl.sr+=1
call :lbl.dec
echo. Laceda Blade has been increased to Rank %p1.lbl.sd%!
timeout 2 >nul
goto store1.srk



::=====-----Falias

:store1.srk.smh
if %p1.smh.sr% gtr 16 goto store1.ski.max
if not %p1.smh.sr%==0 goto ski1.smh.r
if %score1% lss %p1.smh.sc% goto store1.ski.nom
set/a p1.smh.sr=1
set/a score1-=%p1.smh.sc%
echo You have inherited the power of Falias,
echo                  Smash
timeout 2 >nul
echo The input for this skill is "smash"
timeout 3 >nul
goto store1.srk

:ski1.smh.r
if %score1% gtr %p1.smh.sc% goto store1.ski.smhc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.smh
if %p1.exp% gtr %p1.smh.se% goto store1.ski.smhd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.smhd
set/a score1-=%p1.smh.sc%
set/a p1.exp-=%p1.smh.se%
set/a p1.smh.sr+=1
call :smh.dec
echo. Smash has been increased to Rank %p1.smh.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.fsh
if %p1.fsh.sr% gtr 16 goto store1.ski.max
if not %p1.fsh.sr%==0 goto ski1.fsh.r
if %score1% lss %p1.fsh.sc% goto store1.ski.nom
set/a p1.fsh.sr=1
set/a score1-=%p1.fsh.sc%
echo You have inherited the defence of Falias,
echo                 Falias Shield
timeout 2 >nul
echo The input for this skill is "smash"
timeout 3 >nul
goto store1.srk

:ski1.fsh.r
if %score1% gtr %p1.fsh.sc% goto store1.ski.fshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.fshbra
if %p1.exp% gtr %p1.fsh.se% goto store1.ski.fshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.fshd
set/a score1-=%p1.fsh.sc%
set/a p1.exp-=%p1.fsh.se%
set/a p1.fsh.sr+=1
call :fsh.dec
echo. Smash has been increased to Rank %p1.fsh.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.fbr
if %p1.fbr.sr% gtr 16 goto store1.ski.max
if not %p1.fbr.sr%==0 goto ski1.fbr.r
if %score1% lss %p1.fbr.sc% goto store1.ski.nom
set/a p1.fbr.sr=1
set/a score1-=%p1.fbr.sc%
echo You have inherited the speed of Falias,
echo                 Falias Brandish
timeout 2 >nul
echo The input for this skill is "brandish"
timeout 3 >nul
goto store1.srk

:ski1.fbr.r
if %score1% gtr %p1.fbr.sc% goto store1.ski.fbrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.fbr
if %p1.exp% gtr %p1.fbr.se% goto store1.ski.fbrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.fbrd
set/a score1-=%p1.fbr.sc%
set/a p1.exp-=%p1.fbr.se%
set/a p1.fbr.sr+=1
call :fbr.dec
echo. Brandish has been increased to Rank %p1.fbr.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.fsl
if %p1.fsl.sr% gtr 16 goto store1.ski.max
if not %p1.fsl.sr%==0 goto ski1.fsl.r
if %score1% lss %p1.fsl.sc% goto store1.ski.nom
set/a p1.fsl.sr=1
set/a score1-=%p1.fsl.sc%
echo You have inherited the Seal of Falias,
echo                 Falias Seal
timeout 2 >nul
echo The input for this skill is "falias"
timeout 3 >nul
goto store1.srk

:ski1.fsl.r
if %score1% gtr %p1.fsl.sc% goto store1.ski.fslc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.fsl
if %p1.exp% gtr %p1.fsl.se% goto store1.ski.fsld
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.fsld
set/a score1-=%p1.fsl.sc%
set/a p1.exp-=%p1.fsl.se%
set/a p1.fsl.sr+=1
call :fsl.dec
echo. Falias Seal has been increased to Rank %p1.fsl.sd%!
timeout 2 >nul
goto store1.srk

::======------Luminous

:store1.srk.wwt
if %p1.wwt.sr% gtr 16 goto store1.ski.max
if not %p1.wwt.sr%==0 goto ski1.wwt.r
if %score1% lss %p1.wwt.sc% goto store1.ski.nom
set/a p1.wwt.sr=1
call :wwr.dec
set/a score1-=%p1.wwt.sc%
echo You have inherited the Feathers of Light,
echo                Wings of White
timeout 2 >nul
echo The input for this skill is "wingw"
timeout 3 >nul
goto store1.srk

:ski1.wwt.r
if %score1% gtr %p1.wwt.sc% goto store1.ski.wwtc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.wwtc
if %p1.exp% gtr %p1.wwt.se% goto store1.ski.wwtd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.wwtd
set/a score1-=%p1.wwt.sc%
set/a p1.exp-=%p1.wwt.se%
set/a p1.wwt.sr+=1
call :wwt.dec
echo. Wings of White has been increased to Rank %p1.wwt.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.blk
if %p1.blk.sr% gtr 16 goto store1.ski.max
if not %p1.blk.sr%==0 goto ski1.blk.r
if %score1% lss %p1.blk.sc% goto store1.ski.nom
set/a p1.blk.sr=1
call :blk.dec
set/a score1-=%p1.blk.sc%
echo You have inherited the Night of Whites,
echo                Black Light
timeout 2 >nul
echo The input for this skill is "black"
timeout 3 >nul
goto store1.srk

:ski1.blk.r
if %score1% gtr %p1.blk.sc% goto store1.ski.blkc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.blkc
if %p1.exp% gtr %p1.blk.se% goto store1.ski.blkd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.blkd
set/a score1-=%p1.blk.sc%
set/a p1.exp-=%p1.blk.se%
set/a p1.blk.sr+=1
call :blk.dec
echo. Black Light has been increased to Rank %p1.blk.sd%!
timeout 2 >nul
goto store1.srk


:store1.srk.lsh
if %p1.lsh.sr% gtr 16 goto store1.ski.max
if not %p1.lsh.sr%==0 goto ski1.lsh.r
if %score1% lss %p1.lsh.sc% goto store1.ski.nom
set/a p1.lsh.sr=1
call :lsh.dec
set/a score1-=%p1.lsh.sc%
echo You have inherited the Light of Abundance,
echo                Luminous Shield
timeout 2 >nul
echo The input for this skill is "lsh"
timeout 3 >nul
goto store1.srk

:ski1.lsh.r
if %score1% gtr %p1.lsh.sc% goto store1.ski.lshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.lsh
if %p1.exp% gtr %p1.lsh.se% goto store1.ski.lshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.lshd
set/a score1-=%p1.lsh.sc%
set/a p1.exp-=%p1.lsh.se%
set/a p1.lsh.sr+=1
call :lsh.dec
echo. Luminous Shield has been increased to Rank %p1.lsh.sd%!
timeout 2 >nul
goto store1.srk

:store1.srk.wrg
if %p1.wrg.sr% gtr 16 goto store1.ski.max
if not %p1.wrg.sr%==0 goto ski1.wrg.r
if %score1% lss %p1.wrg.sc% goto store1.ski.nom
set/a p1.wrg.sr=1
call :wrg.dec
set/a score1-=%p1.wrg.sc%
echo You have inherited the flight of the feather,
echo                 Wings of Rage
timeout 2 >nul
echo The input for this skill is "wingr"
timeout 3 >nul
goto store1.srk

:ski1.wrg.r
if %score1% gtr %p1.wrg.sc% goto store1.ski.wrgc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.wrg
if %p1.exp% gtr %p1.wrg.se% goto store1.ski.wrgd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.wrgd
set/a score1-=%p1.wrg.sc%
set/a p1.exp-=%p1.wrg.se%
set/a p1.wrg.sr+=1
call :wrg.dec
echo. Wings of Rage has been increased to Rank %p1.wrg.sd%!
timeout 2 >nul
goto store1.srk


:store1.srk.arc
if %p1.arc.sr% gtr 16 goto store1.ski.max
if not %p1.arc.sr%==0 goto ski1.arc.r
if %score1% lss %p1.arc.sc% goto store1.ski.nom
set/a p1.arc.sr=1
call :arc.dec
set/a score1-=%p1.arc.sc%
echo You have inherited the Luminous Light,
echo                 Luminous Arc
timeout 2 >nul
echo The input for this skill is "arc"
timeout 3 >nul
goto store1.srk

:ski1.arc.r
if %score1% gtr %p1.arc.sc% goto store1.ski.arcc
echo. You do not have enough Gold.
timeout 2 >nul
goto store1.ski
:store1.ski.arc
if %p1.exp% gtr %p1.arc.se% goto store1.ski.arcd
echo. You do not have enough Experience.
timeout 2 >nul
goto store1.ski
:store1.ski.arcd
set/a score1-=%p1.arc.sc%
set/a p1.exp-=%p1.arc.se%
set/a p1.arc.sr+=1
call :arc.dec
echo. Luminous Arc has been increased to Rank %p1.arc.sd%!
timeout 2 >nul
goto store1.srk

::Stores


:store1.srk.eweca
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.              Rank    G/E   Input
echo. Ice Spear     %p1.ice.sd%     %p1.ice.sc%/%p1.ice.se%   I
echo. 
echo. EHeal         %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Mana Sheild   %p1.msh.sd%     %p1.msh.sc%/%p1.msh.se%   M
echo. 
echo. Holy Arrow    %p1.hly.sd%     %p1.hly.sc%/%p1.hly.se%   HA
echo.
echo. Genesis       %p1.gen.sd%     %p1.gen.sc%/%p1.gen.se%   G
echo.
echo ==============-----------------===
echo.
echo. Attack        %p1.att.sd%     %p1.att.sc%/%p1.att.se%   A
echo. 
echo. Heal          %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Fusion        %p1.fus.sd%     %p1.fus.sc%/%p1.fus.se%   F
echo. 
echo. Rest          %p1.res.sd%     %p1.res.sc%/%p1.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p1.sok.sd%     %p1.sok.sc%/%p1.sok.se%   S
echo. 
echo. Lightning     %p1.lig.sd%     %p1.lig.sc%/%p1.lig.se%   L
echo.       
echo. Getsuga       %p1.get.sd%     %p1.get.sc%/%p1.get.se%   G
echo. 
echo. Health Drain  %p1.hdr.sd%     %p1.hdr.sc%/%p1.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Eweca
echo. Enter skillname (input)
echo.-----------------------------------
set/p store1.skr=
if %store1.skr%==i goto store1.srk.ice
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==m goto store1.srk.msh
if %store1.skr%==ha goto store1.srk.hly
if %store1.skr%==g goto store1.srk.gen
if %store1.skr%==a goto store1.srk.att
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==f goto store1.srk.fus
if %store1.skr%==r goto store1.srk.res
if %store1.skr%==s goto store1.srk.sok
if %store1.skr%==l goto store1.srk.lig
if %store1.skr%==g goto store1.srk.get
if %store1.skr%==hd goto store1.srk.hdr
if %store1.skr%==back goto store
goto store1.srk.normal


:store1.srk.laceda
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.              Rank     G/E   Input
echo. Lunar Cero     %p1.llc.sd%     %p1.llc.sc%/%p1.llc.se%   LLC
echo. 
echo. Lunar Brandish %p1.lbr.sd%     %p1.lbr.sc%/%p1.hla.se%   LBR
echo.       
echo. Mana Sheild    %p1.msh.sd%     %p1.msh.sc%/%p1.msh.se%   M
echo. 
echo. Laceda Blossom %p1.llb.sd%     %p1.llb.sc%/%p1.llb.se%   LLB
echo.
echo. Laceda Blade   %p1.lbl.sd%     %p1.lbl.sc%/%p1.lbl.se%   LBL
echo.
echo ==============-----------------===
echo.
echo. Attack        %p1.att.sd%     %p1.att.sc%/%p1.att.se%   A
echo. 
echo. Heal          %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Fusion        %p1.fus.sd%     %p1.fus.sc%/%p1.fus.se%   F
echo. 
echo. Rest          %p1.res.sd%     %p1.res.sc%/%p1.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p1.sok.sd%     %p1.sok.sc%/%p1.sok.se%   S
echo. 
echo. Lightning     %p1.lig.sd%     %p1.lig.sc%/%p1.lig.se%   L
echo.       
echo. Getsuga       %p1.get.sd%     %p1.get.sc%/%p1.get.se%   G
echo. 
echo. Health Drain  %p1.hdr.sd%     %p1.hdr.sc%/%p1.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Laceda
echo. Enter skillname (input)
echo.-----------------------------------
set/p store1.skr=
if %store1.skr%==llc goto store1.srk.llc
if %store1.skr%==lbr goto store1.srk.lbr
if %store1.skr%==m goto store1.srk.msh
if %store1.skr%==llb goto store1.srk.llb
if %store1.skr%==lbl goto store1.srk.lbl
if %store1.skr%==a goto store1.srk.att
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==f goto store1.srk.fus
if %store1.skr%==r goto store1.srk.res
if %store1.skr%==s goto store1.srk.sok
if %store1.skr%==l goto store1.srk.lig
if %store1.skr%==g goto store1.srk.get
if %store1.skr%==hd goto store1.srk.hdr
if %store1.skr%==back goto store
goto store1.srk.normal

:store1.srk.falias
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.              Rank     G/E   Input
echo. Smash          %p1.llc.sd%     %p1.llc.sc%/%p1.llc.se%   LLC
echo. 
echo. Falias Heal    %p1.lbr.sd%     %p1.lbr.sc%/%p1.hla.se%   LBR
echo.       
echo. Falias Sheild  %p1.msh.sd%     %p1.msh.sc%/%p1.msh.se%   M
echo. 
echo. Light Brandish %p1.llb.sd%     %p1.llb.sc%/%p1.llb.se%   LLB
echo.
echo. Falias Seal    %p1.lbl.sd%     %p1.lbl.sc%/%p1.lbl.se%   LBL
echo.
echo ==============-----------------===
echo.
echo. Attack        %p1.att.sd%     %p1.att.sc%/%p1.att.se%   A
echo. 
echo. Heal          %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Fusion        %p1.fus.sd%     %p1.fus.sc%/%p1.fus.se%   F
echo. 
echo. Rest          %p1.res.sd%     %p1.res.sc%/%p1.res.se%   R
echo.
echo =============------------------===
echo. Class: Falias
echo. Enter skillname (input)
echo.-----------------------------------
set/p store1.skr=
if %store1.skr%==llc goto store1.srk.llc
if %store1.skr%==lbr goto store1.srk.lbr
if %store1.skr%==m goto store1.srk.msh
if %store1.skr%==llb goto store1.srk.llb
if %store1.skr%==lbl goto store1.srk.lbl
if %store1.skr%==a goto store1.srk.att
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==f goto store1.srk.fus
if %store1.skr%==r goto store1.srk.res
if %store1.skr%==back goto store
goto store1.srk.normal

:store1.srk.luminous
cls
echo.             %name1%
echo.             Store
echo.      %score1% Gold / %p1.exp% Exp  
echo.              Rank      G/E   Input
echo. Wings of White  %p1.wwt.sd%     %p1.wwt.sc%/%p1.wwt.se%   WW
echo. 
echo. Black Light     %p1.blk.sd%     %p1.blk.sc%/%p1.blk.se%   BL
echo.       
echo. Luminous Shield %p1.lsh.sd%     %p1.lsh.sc%/%p1.lsh.se%   LS
echo. 
echo. Wings of Rage   %p1.wrg.sd%     %p1.wrg.sc%/%p1.wrg.se%   WR
echo.
echo. Luminous Arc    %p1.arc.sd%     %p1.arc.sc%/%p1.arc.se%   ARC
echo.
echo ==============-----------------===
echo.
echo. Attack        %p1.att.sd%     %p1.att.sc%/%p1.att.se%   A
echo. 
echo. Heal          %p1.hla.sd%     %p1.hla.sc%/%p1.hla.se%   H
echo.       
echo. Fusion        %p1.fus.sd%     %p1.fus.sc%/%p1.fus.se%   F
echo. 
echo. Rest          %p1.res.sd%     %p1.res.sc%/%p1.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p1.sok.sd%     %p1.sok.sc%/%p1.sok.se%   S
echo. 
echo. Lightning     %p1.lig.sd%     %p1.lig.sc%/%p1.lig.se%   L
echo.       
echo. Getsuga       %p1.get.sd%     %p1.get.sc%/%p1.get.se%   G
echo. 
echo. Health Drain  %p1.hdr.sd%     %p1.hdr.sc%/%p1.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Luminous
echo. Enter skillname (input)
echo.-----------------------------------
set/p store1.skr=
if %store1.skr%==ww goto store1.srk.wwt
if %store1.skr%==bl goto store1.srk.blk
if %store1.skr%==ls goto store1.srk.lsh
if %store1.skr%==wr goto store1.srk.wwr
if %store1.skr%==arc goto store1.srk.arc
if %store1.skr%==a goto store1.srk.att
if %store1.skr%==h goto store1.srk.hla
if %store1.skr%==f goto store1.srk.fus
if %store1.skr%==r goto store1.srk.res
if %store1.skr%==s goto store1.srk.sok
if %store1.skr%==l goto store1.srk.lig
if %store1.skr%==g goto store1.srk.get
if %store1.skr%==hd goto store1.srk.hdr
if %store1.skr%==back goto store
goto store1.srk.normal

::==========================================================================================================--------------------==Player Store2
:store2
if %d2sh% geq 5 set/a p2.defcost=%d2sh% / 5 * 100
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp 
echo.
echo.                       Gold  / Inp
echo. +10%% Starting Health   100     h 
echo. +10%% Starting Energy   100     e 
echo. +5 Defence:            %p2.defcost%     d 
echo.       
echo. Classes                       cls
echo.
echo. Skills                        srk
echo.
echo. H+%p2sh% E+%e2sh% D+%d2sh%
echo.-----------------------------------
set/p store2=

if %store2%==h goto sh2
if %store2%==e goto se2
if %store2%==d goto sd2
if %store2%==cls goto store2.skl
if %store2%==srk goto store2.srk
if %store2%==next goto starti
if %store2%==back goto store

goto store2

:sh2
if %score2% lss 100 goto store2
set/a score2-=100
set/a p2sh=((%p2sh% + 100) * 11) / 10 - 100
if %p2sh% lss %p2.hllimit% goto store2
set/a p2sh=%p2.hllimit%
set/a score2+=100
goto store2

:se2
if %score2% lss 100 goto store2
set/a score2-=100
set/a e2sh=((%e2sh% + 100) * 11) / 10 - 100
if %e2sh% lss %p2.enlimit% goto store2
set/a e2sh=%p2.enlimit%
set/a score2+=100
goto store2

:sd2
if %d2sh% geq 5 set/a p2.defcost=%d1sh% / 5 * 100
if %score2% lss %p2.defcost% goto store2
set/a score2-=%p2.defcost%
set/a d2sh+=5
set/a cal=%p2.deflimit% + 1
if %d2sh% lss %cal% goto store2
set/a d2sh=%p2.deflimit%
set/a score2+=%p2.defcost%
goto store2


:store2.skl
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.     Input 'back' to go back
echo.                        EXP / Inp
echo. Eweca Class            400    e 
echo.  %p2.ews.vis%       
echo. 
echo. Laceda Class           400    l
echo.  %p2.las.vis%
echo. 
echo. Fallias Class          400    f
echo.  %p2.fas.vis%
echo.
echo.-----------------------------------
set/p store2.skl=

if %store2.skl%==e goto p2.ews
if %store2.skl%==l goto p2.las
if %store2.skl%==f goto p2.fas
if %store2.skl%==lmc goto p2.lmc
if %store2.skl%==back goto store2
goto store2.skl

:p2.ews
if %p2.ews.a%==1 goto store2.skl
if %p2.exp% lss 400 goto store2.skl
if %p2.las.a%==1 store2.skl
if %p2.fas.a%==1 store2.skl
set/a p2.exp-=400
set/a p2.ews.a=1
set/a p2.set.hl=100
set/a p2.set.en=200
set/a p2.defrate=10
set/a p2.defpen=4
set/a p2.deflimit=50
set/a p2.hllimit=1500
set/a p2.enlimit=3000
set/a p2.deflimit=40
set p2.sta.vis=Eweca
set p2.sta.sk1=Ice Spear   (ice)
set p2.sta.sk2=Eweca Heal  (heal)
set p2.sta.sk3=Mana Sheild (msh)
set p2.sta.sk4=Holy Arrow  (holy)
set p2.sta.sk5=Genesis     (genesis)
set p2.skd.sk1=[Energy Class]
set p2.skd.sk2=Blessed with the energy of Eweca, you now have mythical magic abilities,
set p2.skd.sk3=Overwhelming anyone who gets in your way, you are a descendant of Eweca.
set p2.skd.sk4=[Di\fference] The difference between Eweca and other classes is their power to keep going.
set p2.skd.sk5=- They are able to keep going and keep on throwing huge attacks at no stop.
set p2.skd.sk6=[Technical] Eweca attacks cost a lot less energy than the damage, unlike all the other classes.
set p2.skd.sk7=- this gives the eweca class to be able to hugely damage anything with little effort
set p2.ews.vis=Active
set p2.fas.vis=Locked
set p2.las.vis=Locked
set skl.v=You have been blessed with the essence of Eweca
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
echo.                      [ ]
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
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      / \
echo.                      / \
echo.                      / \
echo.                      / \
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.                      / \
echo.                      / \
echo.                      / \
echo.   +                   -
echo.                      \ /
echo.                      \ /
echo.                      \ /
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
echo.   +                   -
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
echo.                     %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store2.skl

:p2.las
if %p2.las.a%==1 goto store2.skl
if %p2.exp% lss 400 goto store2.skl
if %p2.ews.a%==1 store2.skl
if %p2.fas.a%==1 store2.skl
set/a p2.exp-=400
set/a p2.las.a=1
set/a p2.set.hl=150
set/a p2.set.en=50
set/a p2.defrate=20
set/a p2.defpen=4
set/a p2.deflimit=50
set/a p2.hllimit=3000
set/a p2.enlimit=2000
set/a p2.deflimit=40
set p2.sta.vis=Laceda
set p2.sta.sk1=Lunar Cero     (cero)
set p2.sta.sk2=Lunar Brandish (lunar)
set p2.sta.sk3=Mana Sheild    (msh)
set p2.sta.sk4=Laceda Blossom (blossom)
set p2.sta.sk5=Laceda Blade   (blade)
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
set skl.v=You have been blessed with the power of Laceda
goto store2.skl

:p2.fas
if %p2.fas.a%==2 goto store2.skl
if %p2.exp% lss 400 goto store.skl
if %p2.ews.a%==1 goto store2.skl
if %p2.las.a%==1 goto store2.skl
set/a p2.exp-=400
set/a p2.fas.a=1
set/a p2.set.hl=150
set/a p2.set.en=100
set/a p2.defrate=30
set/a p2.defpen=2
set/a p2.deflimit=50
set/a p2.hllimit=5000
set/a p2.enlimit=2000
set/a p2.deflimit=50
set p2.sta.vis=Falias
set p2.sta.sk1=Smash          (smash)
set p2.sta.sk2=Falias Heal    (fheal)
set p2.sta.sk3=Falias Sheild  (msh)
set p2.sta.sk4=Light Brandish (brandish)
set p2.sta.sk5=Falias' Wrath  (falias)
set p2.skd.sk1=[Defence Class]
set p2.skd.sk2=Bestowed with the force of Falias, you know have superior defence capabilities.
set p2.skd.sk3=Avenging Falias herself, nothing can stop such a force. You are the true heir to Falias.
set p2.skd.sk4=[Difference] Huge defence, huge health, low attack, this means that Falias is the ultimate survivor
set p2.skd.sk5=[Technical] Huge defrate, minimal def peneratration, not just anyone can beat a failias.
set p2.skd.sk6=.
set p2.skd.sk7=.
set p2.ews.vis=Locked
set p2.fas.vis=Active
set p2.las.vis=Locked
set skl.v=You have inherited the fury of Falias
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
echo.                      [ ]
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
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      / \
echo.                      / \
echo.                      / \
echo.                      / \
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.                      / \
echo.                      / \
echo.                      / \
echo.   +                   -
echo.                      \ /
echo.                      \ /
echo.                      \ /
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
echo.   +                   -
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
echo.                     %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store2.skl

::Admn Skillset
:p2.lmc
if exist "G:\lmc.admnlock\key.lmc" goto p2.lmckey
if exist "D:\lmc.admnlock\key.lmc" goto p2.lmckey
if exist "H:\lmc.admnlock\key.lmc" goto p2.lmckey
goto store2.skl
:p2.lmckey
if not %name2%==Wolfe goto store2.skl
if %p2.lmc.a%==1 goto store2.skl
if %p2.exp% lss 400 goto store2.skl
if %p2.ews.a%==1 goto store2.skl
if %p2.las.a%==1 goto store2.skl
if %p2.fas.a%==1 goto store2.skl
set/a p2.exp-=400
set/a p2.lmc.a=1
set/a p2.set.hl=180
set/a p2.set.en=200
set/a p2.set.df=8
set/a p2.defrate=20
set/a p2.defpen=15
set/a p2.deflimit=20
set/a p2.hllimit=350
set/a p2.enlimit=800
set p2.sta.sk1=Wings of White  (wingw)
set p2.sta.sk2=Black Light     (black)
set p2.sta.sk3=Luminous Sheild (lsh)
set p2.sta.sk4=Wings of Rage   (wingr)
set p2.sta.sk5=Luminous Arc    (luminous)
set p2.sta.sk1=[Attack Class]
set p2.sta.sk2=Through the hidden power of the Goddess' Morringhan and Neamhein, nothing is impossible.
set p2.sta.sk3=Letting the wrath of the deities into the world, you are a true diety yourself.
set p2.sta.sk4=[Difference] The difference between the Luminous and the Other classes is that the luminous
set p2.sta.sk5=- has the strongest atack of all the classes, but the attacks are not stable like Laceda.
set p2.sta.sk6=[Technical] The Luminous also has the strongest defpen rate of of all the classes.
set p2.sta.sk7=- Low health and huge energy. Simple as that.
set p2.sta.vis=Luminous
set p2.ews.vis=Locked
set p2.fas.vis=Locked
set p2.las.vis=Locked
set skl.v=You have inherited the light of lights
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
echo.                      [ ]
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
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.
echo.
echo.   +                   -
echo.
echo.
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.                      [ ]
echo.-----------------------------------
timeout 0 >nul
cls
echo.                      / \
echo.                      / \
echo.                      / \
echo.                      / \
echo.                     /   \
echo.                     /   \
echo.   +                   -
echo.                     \   /
echo.                     \   /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.                      \ /
echo.-----------------------------------
timeout 0 >nul
cls
echo.  
echo.  
echo.  
echo.                      / \
echo.                      / \
echo.                      / \
echo.   +                   -
echo.                      \ /
echo.                      \ /
echo.                      \ /
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
echo.   +                   -
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
echo.                     %skl.v%
echo.
echo.   +                   -
echo.
echo.
echo.
echo.
echo.
echo.
echo.-----------------------------------
timeout 3 >nul
goto store2.skl


::Skill ranks
:store2.ski
:store2.srk
if %p2.ews.a%==1 goto store2.srk.eweca
if %p2.las.a%==1 goto store2.srk.laceda
if %p2.fas.a%==1 goto store2.srk.falias
if %p2.lmc.a%==1 goto store2.srk.luminous

:store2.srk.normal
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.              Rank    G/E   Input
echo. Attack        %p2.att.sd%     %p2.att.sc%/%p2.att.se%   A
echo. 
echo. Heal          %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Fusion        %p2.fus.sd%     %p2.fus.sc%/%p2.fus.se%   F
echo. 
echo. Rest          %p2.res.sd%     %p2.res.sc%/%p2.res.se%   R
echo.
echo. Class: Adventurer
echo ==============-----------------===
echo.
echo. Sokatsui      %p2.sok.sd%     %p2.sok.sc%/%p2.sok.se%   S
echo. 
echo. Lightning     %p2.lig.sd%     %p2.lig.sc%/%p2.lig.se%   L
echo.       
echo. Getsuga       %p2.get.sd%     %p2.get.sc%/%p2.get.se%   G
echo. 
echo. Health Drain  %p2.hdr.sd%     %p2.hdr.sc%/%p2.hdr.se%   HD
echo.
echo =============------------------===
set/p store2.skr=
if %store2.skr%==a goto store2.srk.att
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==f goto store2.srk.fus
if %store2.skr%==r goto store2.srk.res
if %store2.skr%==s goto store2.srk.sok
if %store2.skr%==l goto store2.srk.lig
if %store2.skr%==g goto store2.srk.get
if %store2.skr%==hd goto store2.srk.hdr
if %store2.skr%==back goto store2
goto store2.srk.normal

::Skill modifiers

:store2.ski.max
echo Your skill cannot go any higher than Rank 0.
timeout 1 >nul
goto store2.srk

:store2.ski.nom
echo Not enough Gold, sorry.
timeout 1 >nul
goto store2.srk

:store2.srk.get
if %p2.get.sr% gtr 16 goto store2.ski.max
if not %p2.get.sr%==0 goto ski2.get.r
if %score2% lss 600 goto store2.ski.nom
set/a p2.get.sr=1
call :get.dec
set/a score2-=600
echo You have inherited the Legendary
echo         GETSUGA TENSHOU!
timeout 2 >nul
echo The input for this skill is "getsuga"
echo    Getsuga is now rank %p2.get.sd%
timeout 3 >nul
goto store2.srk

:ski2.get.r
if %score2% gtr %p2.get.sc% goto store2.ski.getc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.getc
if %p2.exp% gtr %p2.get.se% goto store2.ski.getd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.getd
set/a score2-=%p2.get.sc%
set/a p2.exp-=%p2.get.se%
set/a p2.get.sr+=1
call :get.dec
echo. Getsuga has been increased to Rank %p2.get.sd%!
timeout 2 >nul
goto store2.srk


:store2.srk.sok
if %p2.sok.sr% gtr 16 goto store2.ski.max
if not %p2.sok.sr%==0 goto ski2.sok.r
if %score2% lss 150 goto store2.ski.nom
set/a p2.sok.sr=1
call :sok.dec
set/a score2-=150
echo You have inherited Hado 33
echo         SOKATSUI
timeout 2 >nul
echo The input for this skill is "sokatsui"
echo   Sokatui is now rank %p2.sok.sd%
timeout 3 >nul
goto store2.srk

:ski2.sok.r
if %score2% gtr %p2.sok.sc% goto store2.ski.sokc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.sokc
if %p2.exp% gtr %p2.sok.se% goto store2.ski.sokd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.sokd
set/a score2-=%p2.sok.sc%
set/a p2.exp-=%p2.sok.se%
set/a p2.sok.sr+=1
call :sok.dec
echo. Sokatsui has been increased to Rank %p2.sok.sd%!
timeout 2 >nul
goto store2.srk



:store2.srk.lig
if %p2.lig.sr% gtr 16 goto store2.ski.max
if not %p2.lig.sr%==0 goto ski2.lig.r
if %score2% lss 450 goto store2.ski.nom
set/a p2.lig.sr=1
set/a score2-=450
echo You have inherited the Light of the sky,
echo              LIGHTNING
timeout 2 >nul
echo The input for this skill is "light"
timeout 3 >nul
goto store2.srk

:ski2.lig.r
if %score2% gtr %p2.lig.sc% goto store2.ski.ligc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.ligc
if %p2.exp% gtr %p2.lig.se% goto store2.ski.ligd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.ligd
set/a score2-=%p2.lig.sc%
set/a p2.exp-=%p2.lig.se%
set/a p2.lig.sr+=1
call :lig.dec
echo. Lightning has been increased to Rank %p2.lig.sd%!
timeout 2 >nul
goto store2.srk


:store2.srk.hdr
if %p2.hdr.sr% gtr 16 goto store2.ski.max
if not %p2.hdr.sr%==0 goto ski2.hdr.r
if %score2% lss 450 goto store2.ski.nom
set/a p2.hdr.sr=1
set/a score2-=450
echo You have inherited the thirst of blood,
echo             Health Drain
timeout 2 >nul
echo The input for this skill is "hdrain"
timeout 3 >nul
goto store2.srk

:ski2.hdr.r
if %score2% gtr %p2.hdr.sc% goto store2.ski.hdrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.hdrc
if %p2.exp% gtr %p2.hdr.se% goto store2.ski.hdrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.sk2.hdrd
set/a score2-=%p2.hdr.sc%
set/a p2.exp-=%p2.hdr.se%
set/a p2.lig.sr+=1
call :hdr.dec
echo. Health Drain has been increased to Rank %p2.hdr.sd%!
timeout 2 >nul
goto store2.srk


:store2.srk.att
if %p2.att.sr% gtr 16 goto store2.srk
if %score2% gtr %p2.att.sc% goto store2.srk.attc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.srk
:store2.srk.attc
if %p2.exp% gtr %p2.att.se% goto store2.srk.attd
echo. You do not have enough EXP
timeout 2 >nul
goto store2.srk
:store2.srk.attd
set/a score2-=%p2.att.sc%
set/a p2.exp-=%p2.att.se%
set/a p2.att.sr+=1
call :att.dec
echo. Your Attack Skill has increased to %p2.att.sd%
timeout 2 >nul
goto store2.srk

:store2.srk.res
if %p2.res.sr% gtr 16 goto store2.srk
if %score2% gtr %p2.res.sc% goto store2.srk.resc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.srk
:store2.srk.resc
if %p2.exp% gtr %p2.res.se% goto store2.srk.resd
echo. You do not have enough EXP
timeout 2 >nul
goto store2.srk
:store2.srk.resd
set/a score2-=%p2.res.sc%
set/a p2.exp-=%p2.res.se%
set/a p2.res.sr+=1
call :res.dec
echo. Your Rest Skill has increased to %p2.res.sd%
timeout 2 >nul
goto store2.srk


:store2.srk.fus
if %p2.fus.sr% gtr 16 goto store2.srk
if %score2% gtr %p2.fus.sc% goto store2.srk.fusc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.srk
:store2.srk.fusc
if %p2.exp% gtr %p2.fus.se% goto store2.srk.fusd
echo. You do not have enough EXP
timeout 2 >nul
goto store2.srk
:store2.srk.fusd
set/a score2-=%p2.fus.sc%
set/a p2.exp-=%p2.fus.se%
set/a p2.fus.sr+=1
call :fus.dec
echo. Your Fusion Skill has increased to %p2.fus.sd%
timeout 2 >nul
goto store2.srk

:store2.srk.hla
if %p2.hla.sr% gtr 16 goto store.2srk
if %score2% gtr %p2.hla.sc% goto store2.srk.hlac
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.srk
:store2.srk.hlac
if %p2.exp% gtr %p2.hla.se% goto store2.srk.hlad
echo. You do not have enough EXP
timeout 2 >nul
goto store2.srk
:store2.srk.hlad
set/a score2-=%p2.hla.sc%
set/a p2.exp-=%p2.hla.se%
set/a p2.hla.sr+=1
call :hla.dec
echo. Your Healing Skill has increased to %p2.hla.sd%
timeout 2 >nul
goto store2.srk

::=====-----eweca

:store2.srk.ice
if %p2.ice.sr% gtr 16 goto store2.ski.max
if not %p2.ice.sr%==0 goto ski1.ice.r
if %score2% lss %p2.msh.sc% goto store2.ski.nom
set/a p2.ice.sr=1
set/a score2-=%p2.msh.sc%
echo You have inherited the frozen spear,
echo              Ice Spear
timeout 2 >nul
echo The input for this skill is "ice"
timeout 3 >nul
goto store2.srk

:ski1.ice.r
if %score2% gtr %p2.ice.sc% goto store2.ski.icec
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.icec
if %p2.exp% gtr %p2.ice.se% goto store2.ski.iced
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.iced
set/a score2-=%p2.ice.sc%
set/a p2.exp-=%p2.ice.se%
set/a p2.ice.sr+=1
call :ice.dec
echo. Ice Spear has been increased to Rank %p2.ice.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.msh
if %p2.msh.sr% gtr 16 goto store2.ski.max
if not %p2.msh.sr%==0 goto ski1.msh.r
if %score2% lss %p2.msh.sc% goto store2.ski.nom
set/a p2.msh.sr=1
set/a score2-=%p2.msh.sc%
echo You have inherited the essence of Inrid,
echo              Mana Shield
timeout 2 >nul
echo The input for this skill is "msh"
timeout 3 >nul
goto store2.srk

:ski1.msh.r
if %score2% gtr %p2.msh.sc% goto store2.ski.mshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.mshc
if %p2.exp% gtr %p2.msh.se% goto store2.ski.mshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.mshd
set/a score2-=%p2.msh.sc%
set/a p2.exp-=%p2.msh.se%
set/a p2.msh.sr+=1
call :msh.dec
echo. Mana Shield has been increased to Rank %p2.msh.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.hly
if %p2.hly.sr% gtr 16 goto store2.ski.max
if not %p2.hly.sr%==0 goto ski1.hly.r
if %score2% lss %p2.hly.sc% goto store2.ski.nom
set/a p2.hly.sr=1
set/a score2-=%p2.hly.sc%
echo You have inherited the arrow of light,
echo               Holy Arrow
timeout 2 >nul
echo The input for this skill is "holy"
timeout 3 >nul
goto store2.srk

:ski1.hly.r
if %score2% gtr %p2.hly.sc% goto store2.ski.hlyc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.hlyc
if %p2.exp% gtr %p2.hly.se% goto store2.ski.hlyd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.hlyd
set/a score2-=%p2.hly.sc%
set/a p2.exp-=%p2.hly.se%
set/a p2.hly.sr+=1
call :hly.dec
echo. Holy Arrow has been increased to Rank %p2.hly.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.gen
if %p2.gen.sr% gtr 16 goto store2.ski.max
if not %p2.gen.sr%==0 goto ski1.gen.r
if %score2% lss %p2.gen.sc% goto store2.ski.nom
set/a p2.gen.sr=1
set/a score2-=%p2.gen.sc%
echo You have inherited the origin of light,
echo                Genesis
timeout 2 >nul
echo The input for this skill is "holy"
timeout 3 >nul
goto store2.srk

:ski1.gen.r
if %score2% gtr %p2.gen.sc% goto store2.ski.genc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.genc
if %p2.exp% gtr %p2.gen.se% goto store2.ski.gend
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.gend
set/a score2-=%l2.gen.sc%
set/a p2.exp-=%p2.gen.se%
set/a p2.gen.sr+=1
call :gen.dec
echo. Genesis has been increased to Rank %p2.gen.sd%!
timeout 2 >nul
goto store2.srk

::=====-----Laceda

:store2.srk.llc
if %p2.llc.sr% gtr 16 goto store2.ski.max
if not %p2.llc.sr%==0 goto ski1.llc.r
if %score2% lss %p2.llc.sc% goto store2.ski.nom
set/a p2.llc.sr=1
set/a score2-=%p2.llc.sc%
echo You have inherited the condensation of energy,
echo              Lunar Laceda Cero
timeout 2 >nul
echo The input for this skill is "cero"
timeout 3 >nul
goto store2.srk

:ski1.llc.r
if %score2% gtr %p2.llc.sc% goto store2.ski.llcc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.llcc
if %p2.exp% gtr %p2.llc.se% goto store2.ski.llcd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.llcd
set/a score2-=%p2.llc.sc%
set/a p2.exp-=%p2.llc.se%
set/a p2.llc.sr+=1
call :llc.dec
echo. Laceda Cero has been increased to Rank %p2.llc.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.lbr
if %p2.lbr.sr% gtr 16 goto store2.ski.max
if not %p2.lbr.sr%==0 goto ski1.lbr.r
if %score2% lss %p2.lbr.sc% goto store2.ski.nom
set/a p2.lbr.sr=1
set/a score2-=%p2.lbr.sc%
echo You have inherited the condensation of speed,
echo               Lunar Brandish
timeout 2 >nul
echo The input for this skill is "lunar"
timeout 3 >nul
goto store2.srk

:ski1.lbr.r
if %score2% gtr %p2.lbr.sc% goto store2.ski.lbrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.lbrc
if %p2.exp% gtr %p2.lbr.se% goto store2.ski.lbrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.lbrd
set/a score2-=%p2.lbr.sc%
set/a p2.exp-=%p2.lbr.se%
set/a p2.lbr.sr+=1
call :lbr.dec
echo. Lunar Brandish has been increased to Rank %p2.lbr.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.llb
if %p2.llb.sr% gtr 16 goto store2.ski.max
if not %p2.llb.sr%==0 goto ski1.llb.r
if %score2% lss %p2.llb.sc% goto store2.ski.nom
set/a p2.llb.sr=1
set/a score2-=%p2.llb.sc%
echo You have inherited the flower of Laceda,
echo               Laceda Blossom
timeout 2 >nul
echo The input for this skill is "blossom"
timeout 3 >nul
goto store2.srk

:ski2.llb.r
if %score2% gtr %p2.llb.sc% goto store2.ski.llbc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.llb
if %v.exp% gtr %p2.llb.se% goto store2.ski.llbd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.llbd
set/a score2-=%p2.llb.sc%
set/a p2.exp-=%p2.llb.se%
set/a p2.llb.sr+=1
call :llb.dec
echo. Laceda Blossom has been increased to Rank %p2.llb.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.lbl
if %p2.lbl.sr% gtr 16 goto store2.ski.max
if not %p2.lbl.sr%==0 goto ski1.lbl.r
if %score2% lss %p2.lbl.sc% goto store2.ski.nom
set/a p2.lbl.sr=1
set/a score2-=%p2.lbl.sc%
echo You have inherited the edge of Laceda,
echo               Laceda Blade
timeout 2 >nul
echo The input for this skill is "blade"
timeout 3 >nul
goto store2.srk

:ski2.lbl.r
if %score2% gtr %p2.lbl.sc% goto store2.ski.lblc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.lbl
if %p2.exp% gtr %p2.lbl.se% goto store2.ski.lbld
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.lbld
set/a score2-=%p2.lbl.sc%
set/a p2.exp-=%p2.lbl.se%
set/a p2.lbl.sr+=1
call :lbl.dec
echo. Laceda Blade has been increased to Rank %p2.lbl.sd%!
timeout 2 >nul
goto store2.srk



::=====-----Falias

:store2.srk.smh
if %p2.smh.sr% gtr 16 goto store2.ski.max
if not %p2.smh.sr%==0 goto ski1.smh.r
if %score2% lss %v.smh.sc% goto store2.ski.nom
set/a p2.smh.sr=1
set/a score2-=%p2.smh.sc%
echo You have inherited the power of Falias,
echo                  Smash
timeout 2 >nul
echo The input for this skill is "smash"
timeout 3 >nul
goto store2.srk

:ski2.smh.r
if %score2% gtr %p2.smh.sc% goto store2.ski.smhc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.smh
if %p2.exp% gtr %p2.smh.se% goto store2.ski.smhd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.smhd
set/a score2-=%p2.smh.sc%
set/a p2.exp-=%p2.smh.se%
set/a p2.smh.sr+=1
call :smh.dec
echo. Smash has been increased to Rank %p2.smh.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.fsh
if %p2.fsh.sr% gtr 16 goto store2.ski.max
if not %p2.fsh.sr%==0 goto ski1.fsh.r
if %score2% lss %p2.fsh.sc% goto store2.ski.nom
set/a p2.fsh.sr=1
set/a score2-=%p2.fsh.sc%
echo You have inherited the defence of Falias,
echo                 Falias Shield
timeout 2 >nul
echo The input for this skill is "smash"
timeout 3 >nul
goto store2.srk

:ski2.fsh.r
if %score2% gtr %p2.fsh.sc% goto store2.ski.fshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.fshbra
if %p2.exp% gtr %p2.fsh.se% goto store2.ski.fshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.fshd
set/a score2-=%p2.fsh.sc%
set/a p2.exp-=%p2.fsh.se%
set/a p2.fsh.sr+=1
call :fsh.dec
echo. Smash has been increased to Rank %p2.fsh.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.fbr
if %p2.fbr.sr% gtr 16 goto store2.ski.max
if not %p2.fbr.sr%==0 goto ski1.fbr.r
if %score2% lss %p2.fbr.sc% goto store2.ski.nom
set/a p2.fbr.sr=1
set/a score2-=%p2.fbr.sc%
echo You have inherited the speed of Falias,
echo                 Falias Brandish
timeout 2 >nul
echo The input for this skill is "brandish"
timeout 3 >nul
goto store2.srk

:ski2.fbr.r
if %score2% gtr %p2.fbr.sc% goto store2.ski.fbrc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.fbr
if %p2.exp% gtr %p2.fbr.se% goto store2.ski.fbrd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.fbrd
set/a score2-=%p2.fbr.sc%
set/a p2.exp-=%p2.fbr.se%
set/a p2.fbr.sr+=1
call :fbr.dec
echo. Brandish has been increased to Rank %p2.fbr.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.fsl
if %p2.fsl.sr% gtr 16 goto store2.ski.max
if not %p2.fsl.sr%==0 goto ski1.fsl.r
if %score2% lss %p2.fsl.sc% goto store2.ski.nom
set/a p2.fsl.sr=1
set/a score2-=%p2.fsl.sc%
echo You have inherited the Seal of Falias,
echo                 Falias Seal
timeout 2 >nul
echo The input for this skill is "falias"
timeout 3 >nul
goto store2.srk

:ski2.fsl.r
if %score2% gtr %p2.fsl.sc% goto store2.ski.fslc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.fsl
if %p2.exp% gtr %p2.fsl.se% goto store2.ski.fsld
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.fsld
set/a score2-=%p2.fsl.sc%
set/a p2.exp-=%p2.fsl.se%
set/a p2.fsl.sr+=1
call :fsl.dec
echo. Falias Seal has been increased to Rank %p2.fsl.sd%!
timeout 2 >nul
goto store2.srk

::======------Luminous

:store2.srk.wwt
if %p2.wwt.sr% gtr 16 goto store2.ski.max
if not %p2.wwt.sr%==0 goto ski1.wwt.r
if %score2% lss %p2.wwt.sc% goto store2.ski.nom
set/a p2.wwt.sr=1
set/a score2-=%p2.wwt.sc%
echo You have inherited the Feathers of Light,
echo                Wings of White
timeout 2 >nul
echo The input for this skill is "wingw"
timeout 3 >nul
goto store2.srk

:ski2.wwt.r
if %score2% gtr %p2.wwt.sc% goto store2.ski.wwtc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.wwtc
if %p2.exp% gtr %p2.wwt.se% goto store2.ski.wwtd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.wwtd
set/a score2-=%p2.wwt.sc%
set/a p2.exp-=%p2.wwt.se%
set/a p2.wwt.sr+=1
call :wwt.dec
echo. Wings of White has been increased to Rank %p2.wwt.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.blk
if %p2.blk.sr% gtr 16 goto store2.ski.max
if not %p2.blk.sr%==0 goto ski1.blk.r
if %score2% lss %p2.blk.sc% goto store2.ski.nom
set/a p2.blk.sr=1
set/a score2-=%p2.blk.sc%
echo You have inherited the Night of Whites,
echo                Black Light
timeout 2 >nul
echo The input for this skill is "black"
timeout 3 >nul
goto store2.srk

:ski2.blk.r
if %score2% gtr %p2.blk.sc% goto store2.ski.blkc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.blkc
if %p2.exp% gtr %p2.blk.se% goto store2.ski.blkd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.blkd
set/a score2-=%p2.blk.sc%
set/a p2.exp-=%p2.blk.se%
set/a p2.blk.sr+=1
call :blk.dec
echo. Black Light has been increased to Rank %p2.blk.sd%!
timeout 2 >nul
goto store2.srk


:store2.srk.lsh
if %p2.lsh.sr% gtr 16 goto store2.ski.max
if not %p2.lsh.sr%==0 goto ski1.lsh.r
if %score2% lss %p2.lsh.sc% goto store2.ski.nom
set/a p2.lsh.sr=1
set/a score2-=%p2.lsh.sc%
echo You have inherited the Light of Abundance,
echo                Luminous Shield
timeout 2 >nul
echo The input for this skill is "lsh"
timeout 3 >nul
goto store2.srk

:ski1.lsh.r
if %score2% gtr %p2.lsh.sc% goto store2.ski.lshc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.lsh
if %p2.exp% gtr %p2.lsh.se% goto store2.ski.lshd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.lshd
set/a score2-=%p2.lsh.sc%
set/a p2.exp-=%p2.lsh.se%
set/a p2.lsh.sr+=1
call :lsh.dec
echo. Luminous Shield has been increased to Rank %p2.lsh.sd%!
timeout 2 >nul
goto store2.srk

:store2.srk.wrg
if %p2.wrg.sr% gtr 16 goto store2.ski.max
if not %p2.wrg.sr%==0 goto ski1.wrg.r
if %score2% lss %p2.wrg.sc% goto store2.ski.nom
set/a p2.wrg.sr=1
set/a score2-=%p2.wrg.sc%
echo You have inherited the flight of the feather,
echo                 Wings of Rage
timeout 2 >nul
echo The input for this skill is "wingr"
timeout 3 >nul
goto store2.srk

:ski2.wrg.r
if %score2% gtr %p2.wrg.sc% goto store2.ski.wrgc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.wrg
if %p2.exp% gtr %p2.wrg.se% goto store2.ski.wrgd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.wrgd
set/a score2-=%p2.wrg.sc%
set/a p2.exp-=%p2.wrg.se%
set/a p2.wrg.sr+=1
call :wrg.dec
echo. Wings of Rage has been increased to Rank %p2.wrg.sd%!
timeout 2 >nul
goto store2.srk


:store2.srk.arc
if %p2.arc.sr% gtr 16 goto store2.ski.max
if not %p2.arc.sr%==0 goto ski1.arc.r
if %score2% lss %p2.arc.sc% goto store2.ski.nom
set/a p2.arc.sr=1
set/a score2-=%p2.arc.sc%
echo You have inherited the Luminous Light,
echo                 Luminous Arc
timeout 2 >nul
echo The input for this skill is "arc"
timeout 3 >nul
goto store2.srk

:ski2.arc.r
if %score2% gtr %p2.arc.sc% goto store2.ski.arcc
echo. You do not have enough Gold.
timeout 2 >nul
goto store2.ski
:store2.ski.arc
if %p2.exp% gtr %p2.arc.se% goto store1.ski.arcd
echo. You do not have enough Experience.
timeout 2 >nul
goto store2.ski
:store2.ski.arcd
set/a score2-=%p2.arc.sc%
set/a p2.exp-=%p2.arc.se%
set/a p2.arc.sr+=1
call :arc.dec
echo. Luminous Arc has been increased to Rank %p2.arc.sd%!
timeout 2 >nul
goto store2.srk

::Stores


:store2.srk.eweca
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.              Rank    G/E   Input
echo. Ice Spear     %p2.ice.sd%     %p2.ice.sc%/%p2.ice.se%   I
echo. 
echo. EHeal         %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Mana Sheild   %p2.msh.sd%     %p2.msh.sc%/%p2.msh.se%   M
echo. 
echo. Holy Arrow    %p2.hly.sd%     %p2.hly.sc%/%p2.hly.se%   HA
echo.
echo. Genesis       %p2.gen.sd%     %p2.gen.sc%/%p2.gen.se%   G
echo.
echo ==============-----------------===
echo.
echo. Attack        %p2.att.sd%     %p2.att.sc%/%p2.att.se%   A
echo. 
echo. Heal          %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Fusion        %p2.fus.sd%     %p2.fus.sc%/%p2.fus.se%   F
echo. 
echo. Rest          %p2.res.sd%     %p2.res.sc%/%p2.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p2.sok.sd%     %p2.sok.sc%/%p2.sok.se%   S
echo. 
echo. Lightning     %p2.lig.sd%     %p2.lig.sc%/%p2.lig.se%   L
echo.       
echo. Getsuga       %p2.get.sd%     %p2.get.sc%/%p2.get.se%   G
echo. 
echo. Health Drain  %p2.hdr.sd%     %p2.hdr.sc%/%p2.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Eweca
echo. Enter skillname (input)
echo.-----------------------------------
set/p store2.skr=
if %store2.skr%==i goto store2.srk.ice
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==m goto store2.srk.msh
if %store2.skr%==ha goto store2.srk.hly
if %store2.skr%==g goto store2.srk.gen
if %store2.skr%==a goto store2.srk.att
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==f goto store2.srk.fus
if %store2.skr%==r goto store2.srk.res
if %store2.skr%==s goto store2.srk.sok
if %store2.skr%==l goto store2.srk.lig
if %store2.skr%==g goto store2.srk.get
if %store2.skr%==hd goto store2.srk.hdr
if %store2.skr%==back goto store2
goto store2.srk.normal


:store2.srk.laceda
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.              Rank     G/E   Input
echo. Lunar Cero     %p2.llc.sd%     %p2.llc.sc%/%p2.llc.se%   LLC
echo. 
echo. Lunar Brandish %p2.lbr.sd%     %p2.lbr.sc%/%p2.hla.se%   LBR
echo.       
echo. Mana Sheild    %p2.msh.sd%     %p2.msh.sc%/%p2.msh.se%   M
echo. 
echo. Laceda Blossom %p2.llb.sd%     %p2.llb.sc%/%p2.llb.se%   LLB
echo.
echo. Laceda Blade   %p2.lbl.sd%     %p2.lbl.sc%/%p2.lbl.se%   LBL
echo.
echo ==============-----------------===
echo.
echo. Attack        %p2.att.sd%     %p2.att.sc%/%p2.att.se%   A
echo. 
echo. Heal          %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Fusion        %p2.fus.sd%     %p2.fus.sc%/%p2.fus.se%   F
echo. 
echo. Rest          %p2.res.sd%     %p2.res.sc%/%p2.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p2.sok.sd%     %p2.sok.sc%/%p2.sok.se%   S
echo. 
echo. Lightning     %p2.lig.sd%     %p2.lig.sc%/%p2.lig.se%   L
echo.       
echo. Getsuga       %p2.get.sd%     %p2.get.sc%/%p2.get.se%   G
echo. 
echo. Health Drain  %p2.hdr.sd%     %p2.hdr.sc%/%p2.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Laceda
echo. Enter skillname (input)
echo.-----------------------------------
set/p store2.skr=
if %store2.skr%==llc goto store2.srk.llc
if %store2.skr%==lbr goto store2.srk.lbr
if %store2.skr%==m goto store2.srk.msh
if %store2.skr%==llb goto store2.srk.llb
if %store2.skr%==lbl goto store2.srk.lbl
if %store2.skr%==a goto store2.srk.att
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==f goto store2.srk.fus
if %store2.skr%==r goto store2.srk.res
if %store2.skr%==s goto store2.srk.sok
if %store2.skr%==l goto store2.srk.lig
if %store2.skr%==g goto store2.srk.get
if %store2.skr%==hd goto store2.srk.hdr
if %store2.skr%==back goto store2
goto store2.srk.normal

:store2.srk.falias
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.              Rank     G/E   Input
echo. Smash          %p2.llc.sd%     %p2.llc.sc%/%p2.llc.se%   LLC
echo. 
echo. Falias Heal    %p2.lbr.sd%     %p2.lbr.sc%/%p2.hla.se%   LBR
echo.       
echo. Falias Sheild  %p2.msh.sd%     %p2.msh.sc%/%p2.msh.se%   M
echo. 
echo. Light Brandish %p2.llb.sd%     %p2.llb.sc%/%p2.llb.se%   LLB
echo.
echo. Falias Seal    %p2.lbl.sd%     %p2.lbl.sc%/%p2.lbl.se%   LBL
echo.
echo ==============-----------------===
echo.
echo. Attack        %p2.att.sd%     %p2.att.sc%/%p2.att.se%   A
echo. 
echo. Heal          %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Fusion        %p2.fus.sd%     %p2.fus.sc%/%p2.fus.se%   F
echo. 
echo. Rest          %p2.res.sd%     %p2.res.sc%/%p2.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p2.sok.sd%     %p2.sok.sc%/%p2.sok.se%   S
echo. 
echo. Lightning     %p2.lig.sd%     %p2.lig.sc%/%p2.lig.se%   L
echo.       
echo. Getsuga       %p2.get.sd%     %p2.get.sc%/%p2.get.se%   G
echo. 
echo. Health Drain  %p2.hdr.sd%     %p2.hdr.sc%/%p2.hdr.se%   HD
echo.
echo =============------------------===
echo. Class: Falias
echo. Enter skillname (input)
echo.-----------------------------------
set/p store2.skr=
if %store2.skr%==llc goto store2.srk.llc
if %store2.skr%==lbr goto store2.srk.lbr
if %store2.skr%==m goto store2.srk.msh
if %store2.skr%==llb goto store2.srk.llb
if %store2.skr%==lbl goto store2.srk.lbl
if %store2.skr%==a goto store2.srk.att
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==f goto store2.srk.fus
if %store2.skr%==r goto store2.srk.res
if %store2.skr%==s goto store2.srk.sok
if %store2.skr%==l goto store2.srk.lig
if %store2.skr%==g goto store2.srk.get
if %store2.skr%==hd goto store2.srk.hdr
if %store2.skr%==back goto store2
goto store2.srk.normal

:store2.srk.luminous
cls
echo.             %name2%
echo.             Store
echo.      %score2% Gold / %p2.exp% Exp  
echo.              Rank      G/E   Input
echo. Wings of White  %p2.wwt.sd%     %p2.wwt.sc%/%p2.wwt.se%   WW
echo. 
echo. Black Light     %p2.blk.sd%     %p2.blk.sc%/%p2.blk.se%   BL
echo.       
echo. Luminous Shield %p2.lsh.sd%     %p2.lsh.sc%/%p2.lsh.se%   LS
echo. 
echo. Wings of Rage   %p2.wrg.sd%     %p2.wrg.sc%/%p2.wrg.se%   WR
echo.
echo. Luminous Arc    %p2.arc.sd%     %p2.arc.sc%/%p2.arc.se%   ARC
echo.
echo ==============-----------------===
echo.
echo. Attack        %p2.att.sd%     %p2.att.sc%/%p2.att.se%   A
echo. 
echo. Heal          %p2.hla.sd%     %p2.hla.sc%/%p2.hla.se%   H
echo.       
echo. Fusion        %p2.fus.sd%     %p2.fus.sc%/%p2.fus.se%   F
echo. 
echo. Rest          %p2.res.sd%     %p2.res.sc%/%p2.res.se%   R
echo.
echo =============------------------===
echo.
echo. Sokatsui      %p2.sok.sd%     %p2.sok.sc%/%p2.sok.se%   S
echo. 
echo. Lightning     %p2.lig.sd%     %p2.lig.sc%/%p2.lig.se%   L
echo.       
echo. Getsuga       %p2.get.sd%     %p2.get.sc%/%p2.get.se%   G
echo. 
echo. Health Drain  %p2.hdr.sd%     %p2.hdr.sc%/%p2.hdr.se%   HD
echo.
echo =============------------------===

echo. Class: Luminous
echo. Enter skillname (input)
echo.-----------------------------------
set/p store2.skr=
if %store2.skr%==ww goto store2.srk.wwt
if %store2.skr%==bl goto store2.srk.blk
if %store2.skr%==ls goto store2.srk.lsh
if %store2.skr%==wr goto store2.srk.wwr
if %store2.skr%==arc goto store2.srk.arc
if %store2.skr%==a goto store2.srk.att
if %store2.skr%==h goto store2.srk.hla
if %store2.skr%==f goto store2.srk.fus
if %store2.skr%==r goto store2.srk.res
if %store2.skr%==s goto store2.srk.sok
if %store2.skr%==l goto store2.srk.lig
if %store2.skr%==g goto store2.srk.get
if %store2.skr%==hd goto store2.srk.hdr
if %store2.skr%==back goto store2
goto store2.srk.normal


:sok.dec
if %p1.sok.sr%==0 set/a p1.sok.sm=0
if %p1.sok.sr%==0 set/a p1.sok.sc=150
if %p1.sok.sr%==0 set/a p1.sok.se=0
if %p1.sok.sr%==0   set p1.sok.sd=Not Learnt
if %p1.sok.sr%==1 set/a p1.sok.sm=4
if %p1.sok.sr%==1 set/a p1.sok.sc=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==1 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==1   set p1.sok.sd=Novice
if %p1.sok.sr%==2 set/a p1.sok.sm=5
if %p1.sok.sr%==2 set/a p1.sok.sc=(%p1.sok.sv% * 30) / 10
if %p1.sok.sr%==2 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==2   set p1.sok.sd=F
if %p1.sok.sr%==3 set/a p1.sok.sm=6
if %p1.sok.sr%==3 set/a p1.sok.sc=(%p1.sok.sv% * 40) / 10
if %p1.sok.sr%==3 set/a p1.sok.se=(%p1.sok.sv% * 20) / 10
if %p1.sok.sr%==3   set p1.sok.sd=E
if %p1.sok.sr%==4 set/a p1.sok.sm=7
if %p1.sok.sr%==4 set/a p1.sok.sc=(%p1.sok.sv% * 50) / 10
if %p1.sok.sr%==4 set/a p1.sok.se=(%p1.sok.sv% * 40) / 10
if %p1.sok.sr%==4   set p1.sok.sd=D
if %p1.sok.sr%==5 set/a p1.sok.sm=8
if %p1.sok.sr%==5 set/a p1.sok.sc=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==5 set/a p1.sok.se=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==5   set p1.sok.sd=C
if %p1.sok.sr%==6 set/a p1.sok.sm=9
if %p1.sok.sr%==6 set/a p1.sok.sc=(%p1.sok.sv% * 60) / 10
if %p1.sok.sr%==6 set/a p1.sok.se=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==6   set p1.sok.sd=B
if %p1.sok.sr%==7 set/a p1.sok.sm=10
if %p1.sok.sr%==7 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==7 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==7   set p1.sok.sd=A
if %p1.sok.sr%==8 set/a p1.sok.sm=11
if %p1.sok.sr%==8 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==8 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==8   set p1.sok.sd=9
if %p1.sok.sr%==9 set/a p1.sok.sm=12
if %p1.sok.sr%==9 set/a p1.sok.sc=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==9 set/a p1.sok.se=(%p1.sok.sv% * 140) / 10
if %p1.sok.sr%==9   set p1.sok.sd=8
if %p1.sok.sr%==10 set/a p1.sok.sm=14
if %p1.sok.sr%==10 set/a p1.sok.sc=(%p1.sok.sv% * 120) / 10
if %p1.sok.sr%==10 set/a p1.sok.se=(%p1.sok.sv% * 180) / 10
if %p1.sok.sr%==10   set p1.sok.sd=7
if %p1.sok.sr%==11 set/a p1.sok.sm=16
if %p1.sok.sr%==11 set/a p1.sok.sc=(%p1.sok.sv% * 140) / 10
if %p1.sok.sr%==11 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==11   set p1.sok.sd=6
if %p1.sok.sr%==12 set/a p1.sok.sm=18
if %p1.sok.sr%==12 set/a p1.sok.sc=(%p1.sok.sv% * 160) / 10
if %p1.sok.sr%==12 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==12   set p1.sok.sd=5
if %p1.sok.sr%==13 set/a p1.sok.sm=20
if %p1.sok.sr%==13 set/a p1.sok.sc=(%p1.sok.sv% * 240) / 10
if %p1.sok.sr%==13 set/a p1.sok.se=(%p1.sok.sv% * 200) / 10
if %p1.sok.sr%==13   set p1.sok.sd=4
if %p1.sok.sr%==14 set/a p1.sok.sm=24
if %p1.sok.sr%==14 set/a p1.sok.sc=(%p1.sok.sv% * 80) / 10
if %p1.sok.sr%==14 set/a p1.sok.se=(%p1.sok.sv% * 100) / 10
if %p1.sok.sr%==14   set p1.sok.sd=3
if %p1.sok.sr%==15 set/a p1.sok.sm=28
if %p1.sok.sr%==15 set/a p1.sok.sc=(%p1.sok.sv% * 360) / 10
if %p1.sok.sr%==15 set/a p1.sok.se=(%p1.sok.sv% * 300) / 10
if %p1.sok.sr%==15   set p1.sok.sd=2
if %p1.sok.sr%==16 set/a p1.sok.sm=34
if %p1.sok.sr%==16 set/a p1.sok.sc=(%p1.sok.sv% * 480) / 10
if %p1.sok.sr%==16 set/a p1.sok.se=(%p1.sok.sv% * 400) / 10
if %p1.sok.sr%==16   set p1.sok.sd=1
if %p1.sok.sr%==17 set/a p1.sok.sm=40
if %p1.sok.sr%==17 set/a p1.sok.sc=0
if %p1.sok.sr%==17 set/a p1.sok.se=0
if %p1.sok.sr%==17   set p1.sok.sd=0
::p2
if %p2.sok.sr%==0 set/a p2.sok.sm=0
if %p2.sok.sr%==0 set/a p2.sok.sc=150
if %p2.sok.sr%==0 set/a p2.sok.se=0
if %p2.sok.sr%==0   set p2.sok.sd=Not Learnt
if %p2.sok.sr%==1 set/a p2.sok.sm=4
if %p2.sok.sr%==1 set/a p2.sok.sc=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==1 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==1   set p2.sok.sd=Novice
if %p2.sok.sr%==2 set/a p2.sok.sm=5
if %p2.sok.sr%==2 set/a p2.sok.sc=(%p2.sok.sv% * 30) / 10
if %p2.sok.sr%==2 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==2   set p2.sok.sd=F
if %p2.sok.sr%==3 set/a p2.sok.sm=6
if %p2.sok.sr%==3 set/a p2.sok.sc=(%p2.sok.sv% * 40) / 10
if %p2.sok.sr%==3 set/a p2.sok.se=(%p2.sok.sv% * 20) / 10
if %p2.sok.sr%==3   set p2.sok.sd=E
if %p2.sok.sr%==4 set/a p2.sok.sm=7
if %p2.sok.sr%==4 set/a p2.sok.sc=(%p2.sok.sv% * 50) / 10
if %p2.sok.sr%==4 set/a p2.sok.se=(%p2.sok.sv% * 40) / 10
if %p2.sok.sr%==4   set p2.sok.sd=D
if %p2.sok.sr%==5 set/a p2.sok.sm=8
if %p2.sok.sr%==5 set/a p2.sok.sc=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==5 set/a p2.sok.se=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==5   set p2.sok.sd=C
if %p2.sok.sr%==6 set/a p2.sok.sm=9
if %p2.sok.sr%==6 set/a p2.sok.sc=(%p2.sok.sv% * 60) / 10
if %p2.sok.sr%==6 set/a p2.sok.se=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==6   set p2.sok.sd=B
if %p2.sok.sr%==7 set/a p2.sok.sm=10
if %p2.sok.sr%==7 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==7 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==7   set p2.sok.sd=A
if %p2.sok.sr%==8 set/a p2.sok.sm=11
if %p2.sok.sr%==8 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==8 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==8   set p2.sok.sd=9
if %p2.sok.sr%==9 set/a p2.sok.sm=12
if %p2.sok.sr%==9 set/a p2.sok.sc=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==9 set/a p2.sok.se=(%p2.sok.sv% * 140) / 10
if %p2.sok.sr%==9   set p2.sok.sd=8
if %p2.sok.sr%==10 set/a p2.sok.sm=14
if %p2.sok.sr%==10 set/a p2.sok.sc=(%p2.sok.sv% * 120) / 10
if %p2.sok.sr%==10 set/a p2.sok.se=(%p2.sok.sv% * 180) / 10
if %p2.sok.sr%==10   set p2.sok.sd=7
if %p2.sok.sr%==11 set/a p2.sok.sm=16
if %p2.sok.sr%==11 set/a p2.sok.sc=(%p2.sok.sv% * 140) / 10
if %p2.sok.sr%==11 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==11   set p2.sok.sd=6
if %p2.sok.sr%==12 set/a p2.sok.sm=18
if %p2.sok.sr%==12 set/a p2.sok.sc=(%p2.sok.sv% * 160) / 10
if %p2.sok.sr%==12 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==12   set p2.sok.sd=5
if %p2.sok.sr%==13 set/a p2.sok.sm=20
if %p2.sok.sr%==13 set/a p2.sok.sc=(%p2.sok.sv% * 240) / 10
if %p2.sok.sr%==13 set/a p2.sok.se=(%p2.sok.sv% * 200) / 10
if %p2.sok.sr%==13   set p2.sok.sd=4
if %p2.sok.sr%==14 set/a p2.sok.sm=24
if %p2.sok.sr%==14 set/a p2.sok.sc=(%p2.sok.sv% * 80) / 10
if %p2.sok.sr%==14 set/a p2.sok.se=(%p2.sok.sv% * 100) / 10
if %p2.sok.sr%==14   set p2.sok.sd=3
if %p2.sok.sr%==15 set/a p2.sok.sm=28
if %p2.sok.sr%==15 set/a p2.sok.sc=(%p2.sok.sv% * 360) / 10
if %p2.sok.sr%==15 set/a p2.sok.se=(%p2.sok.sv% * 300) / 10
if %p2.sok.sr%==15   set p2.sok.sd=2
if %p2.sok.sr%==16 set/a p2.sok.sm=34
if %p2.sok.sr%==16 set/a p2.sok.sc=(%p2.sok.sv% * 480) / 10
if %p2.sok.sr%==16 set/a p2.sok.se=(%p2.sok.sv% * 400) / 10
if %p2.sok.sr%==16   set p2.sok.sd=1
if %p2.sok.sr%==17 set/a p2.sok.sm=40
if %p2.sok.sr%==17 set/a p2.sok.sc=0
if %p2.sok.sr%==17 set/a p2.sok.se=0
if %p2.sok.sr%==17   set p2.sok.sd=0
goto:eof

:att.dec
if %p1.att.sr%==0 set/a p1.att.sm=0
if %p1.att.sr%==0 set/a p1.att.sc=0
if %p1.att.sr%==0 set/a p1.att.se=0
if %p1.att.sr%==0   set p1.att.sd=Not Learnt
if %p1.att.sr%==1 set/a p1.att.sm=4
if %p1.att.sr%==1 set/a p1.att.sc=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==1 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==1   set p1.att.sd=Novice
if %p1.att.sr%==2 set/a p1.att.sm=5
if %p1.att.sr%==2 set/a p1.att.sc=(%p1.att.sv% * 30) / 10
if %p1.att.sr%==2 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==2   set p1.att.sd=F
if %p1.att.sr%==3 set/a p1.att.sm=6
if %p1.att.sr%==3 set/a p1.att.sc=(%p1.att.sv% * 40) / 10
if %p1.att.sr%==3 set/a p1.att.se=(%p1.att.sv% * 20) / 10
if %p1.att.sr%==3   set p1.att.sd=E
if %p1.att.sr%==4 set/a p1.att.sm=7
if %p1.att.sr%==4 set/a p1.att.sc=(%p1.att.sv% * 50) / 10
if %p1.att.sr%==4 set/a p1.att.se=(%p1.att.sv% * 40) / 10
if %p1.att.sr%==4   set p1.att.sd=D
if %p1.att.sr%==5 set/a p1.att.sm=8
if %p1.att.sr%==5 set/a p1.att.sc=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==5 set/a p1.att.se=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==5   set p1.att.sd=C
if %p1.att.sr%==6 set/a p1.att.sm=9
if %p1.att.sr%==6 set/a p1.att.sc=(%p1.att.sv% * 60) / 10
if %p1.att.sr%==6 set/a p1.att.se=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==6   set p1.att.sd=B
if %p1.att.sr%==7 set/a p1.att.sm=10
if %p1.att.sr%==7 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==7 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==7   set p1.att.sd=A
if %p1.att.sr%==8 set/a p1.att.sm=11
if %p1.att.sr%==8 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==8 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==8   set p1.att.sd=9
if %p1.att.sr%==9 set/a p1.att.sm=12
if %p1.att.sr%==9 set/a p1.att.sc=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==9 set/a p1.att.se=(%p1.att.sv% * 140) / 10
if %p1.att.sr%==9   set p1.att.sd=8
if %p1.att.sr%==10 set/a p1.att.sm=14
if %p1.att.sr%==10 set/a p1.att.sc=(%p1.att.sv% * 120) / 10
if %p1.att.sr%==10 set/a p1.att.se=(%p1.att.sv% * 180) / 10
if %p1.att.sr%==10   set p1.att.sd=7
if %p1.att.sr%==11 set/a p1.att.sm=16
if %p1.att.sr%==11 set/a p1.att.sc=(%p1.att.sv% * 140) / 10
if %p1.att.sr%==11 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==11   set p1.att.sd=6
if %p1.att.sr%==12 set/a p1.att.sm=18
if %p1.att.sr%==12 set/a p1.att.sc=(%p1.att.sv% * 160) / 10
if %p1.att.sr%==12 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==12   set p1.att.sd=5
if %p1.att.sr%==13 set/a p1.att.sm=20
if %p1.att.sr%==13 set/a p1.att.sc=(%p1.att.sv% * 240) / 10
if %p1.att.sr%==13 set/a p1.att.se=(%p1.att.sv% * 200) / 10
if %p1.att.sr%==13   set p1.att.sd=4
if %p1.att.sr%==14 set/a p1.att.sm=24
if %p1.att.sr%==14 set/a p1.att.sc=(%p1.att.sv% * 80) / 10
if %p1.att.sr%==14 set/a p1.att.se=(%p1.att.sv% * 100) / 10
if %p1.att.sr%==14   set p1.att.sd=3
if %p1.att.sr%==15 set/a p1.att.sm=28
if %p1.att.sr%==15 set/a p1.att.sc=(%p1.att.sv% * 360) / 10
if %p1.att.sr%==15 set/a p1.att.se=(%p1.att.sv% * 300) / 10
if %p1.att.sr%==15   set p1.att.sd=2
if %p1.att.sr%==16 set/a p1.att.sm=34
if %p1.att.sr%==16 set/a p1.att.sc=(%p1.att.sv% * 480) / 10
if %p1.att.sr%==16 set/a p1.att.se=(%p1.att.sv% * 400) / 10
if %p1.att.sr%==16   set p1.att.sd=1
if %p1.att.sr%==17 set/a p1.att.sm=40
if %p1.att.sr%==17 set/a p1.att.sc=0
if %p1.att.sr%==17 set/a p1.att.se=0
if %p1.att.sr%==17   set p1.att.sd=0
::p2
if %p2.att.sr%==0 set/a p2.att.sm=0
if %p2.att.sr%==0 set/a p2.att.sc=0
if %p2.att.sr%==0 set/a p2.att.se=0
if %p2.att.sr%==0   set p2.att.sd=Not Learnt
if %p2.att.sr%==1 set/a p2.att.sm=4
if %p2.att.sr%==1 set/a p2.att.sc=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==1 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==1   set p2.att.sd=Novice
if %p2.att.sr%==2 set/a p2.att.sm=5
if %p2.att.sr%==2 set/a p2.att.sc=(%p2.att.sv% * 30) / 10
if %p2.att.sr%==2 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==2   set p2.att.sd=F
if %p2.att.sr%==3 set/a p2.att.sm=6
if %p2.att.sr%==3 set/a p2.att.sc=(%p2.att.sv% * 40) / 10
if %p2.att.sr%==3 set/a p2.att.se=(%p2.att.sv% * 20) / 10
if %p2.att.sr%==3   set p2.att.sd=E
if %p2.att.sr%==4 set/a p2.att.sm=7
if %p2.att.sr%==4 set/a p2.att.sc=(%p2.att.sv% * 50) / 10
if %p2.att.sr%==4 set/a p2.att.se=(%p2.att.sv% * 40) / 10
if %p2.att.sr%==4   set p2.att.sd=D
if %p2.att.sr%==5 set/a p2.att.sm=8
if %p2.att.sr%==5 set/a p2.att.sc=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==5 set/a p2.att.se=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==5   set p2.att.sd=C
if %p2.att.sr%==6 set/a p2.att.sm=9
if %p2.att.sr%==6 set/a p2.att.sc=(%p2.att.sv% * 60) / 10
if %p2.att.sr%==6 set/a p2.att.se=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==6   set p2.att.sd=B
if %p2.att.sr%==7 set/a p2.att.sm=10
if %p2.att.sr%==7 set/a p2.att.sc=(%p1.att.sv% * 80) / 10
if %p2.att.sr%==7 set/a p2.att.se=(%p1.att.sv% * 100) / 10
if %p2.att.sr%==7   set p2.att.sd=A
if %p2.att.sr%==8 set/a p2.att.sm=11
if %p2.att.sr%==8 set/a p2.att.sc=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==8 set/a p2.att.se=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==8   set p2.att.sd=9
if %p2.att.sr%==9 set/a p2.att.sm=12
if %p2.att.sr%==9 set/a p2.att.sc=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==9 set/a p2.att.se=(%p2.att.sv% * 140) / 10
if %p2.att.sr%==9   set p2.att.sd=8
if %p2.att.sr%==10 set/a p2.att.sm=14
if %p2.att.sr%==10 set/a p2.att.sc=(%p2.att.sv% * 120) / 10
if %p2.att.sr%==10 set/a p2.att.se=(%p2.att.sv% * 180) / 10
if %p2.att.sr%==10   set p2.att.sd=7
if %p2.att.sr%==11 set/a p2.att.sm=16
if %p2.att.sr%==11 set/a p2.att.sc=(%p2.att.sv% * 140) / 10
if %p2.att.sr%==11 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==11   set p2.att.sd=6
if %p2.att.sr%==12 set/a p2.att.sm=18
if %p2.att.sr%==12 set/a p2.att.sc=(%p2.att.sv% * 160) / 10
if %p2.att.sr%==12 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==12   set p2.att.sd=5
if %p2.att.sr%==13 set/a p2.att.sm=20
if %p2.att.sr%==13 set/a p2.att.sc=(%p2.att.sv% * 240) / 10
if %p2.att.sr%==13 set/a p2.att.se=(%p2.att.sv% * 200) / 10
if %p2.att.sr%==13   set p2.att.sd=4
if %p2.att.sr%==14 set/a p2.att.sm=24
if %p2.att.sr%==14 set/a p2.att.sc=(%p2.att.sv% * 80) / 10
if %p2.att.sr%==14 set/a p2.att.se=(%p2.att.sv% * 100) / 10
if %p2.att.sr%==14   set p2.att.sd=3
if %p2.att.sr%==15 set/a p2.att.sm=28
if %p2.att.sr%==15 set/a p2.att.sc=(%p2.att.sv% * 360) / 10
if %p2.att.sr%==15 set/a p2.att.se=(%p2.att.sv% * 300) / 10
if %p2.att.sr%==15   set p2.att.sd=2
if %p2.att.sr%==16 set/a p2.att.sm=34
if %p2.att.sr%==16 set/a p2.att.sc=(%p2.att.sv% * 480) / 10
if %p2.att.sr%==16 set/a p2.att.se=(%p2.att.sv% * 400) / 10
if %p2.att.sr%==16   set p2.att.sd=1
if %p2.att.sr%==17 set/a p2.att.sm=40
if %p2.att.sr%==17 set/a p2.att.sc=0
if %p2.att.sr%==17 set/a p2.att.se=0
if %p2.att.sr%==17   set p2.att.sd=0
goto:eof

:get.dec
set sdc=get
if %p1.get.sr%==0 set/a p1.%sdc%.sm=0
if %p1.get.sr%==0 set/a p1.%sdc%.sc=600
if %p1.get.sr%==0 set/a p1.%sdc%.se=0
if %p1.get.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.get.sr%==1 set/a p1.%sdc%.sm=4
if %p1.get.sr%==1 set/a p1.%sdc%.sc=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==1 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==1   set p1.%sdc%.sd=Novice
if %p1.get.sr%==2 set/a p1.%sdc%.sm=5
if %p1.get.sr%==2 set/a p1.%sdc%.sc=(%p1.get.sv% * 30) / 10
if %p1.get.sr%==2 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==2   set p1.%sdc%.sd=F
if %p1.get.sr%==3 set/a p1.%sdc%.sm=6
if %p1.get.sr%==3 set/a p1.%sdc%.sc=(%p1.get.sv% * 40) / 10
if %p1.get.sr%==3 set/a p1.%sdc%.se=(%p1.get.sv% * 20) / 10
if %p1.get.sr%==3   set p1.%sdc%.sd=E
if %p1.get.sr%==4 set/a p1.%sdc%.sm=7
if %p1.get.sr%==4 set/a p1.%sdc%.sc=(%p1.get.sv% * 50) / 10
if %p1.get.sr%==4 set/a p1.%sdc%.se=(%p1.get.sv% * 40) / 10
if %p1.get.sr%==4   set p1.%sdc%.sd=D
if %p1.get.sr%==5 set/a p1.%sdc%.sm=8
if %p1.get.sr%==5 set/a p1.%sdc%.sc=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==5 set/a p1.%sdc%.se=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==5   set p1.%sdc%.sd=C
if %p1.get.sr%==6 set/a p1.%sdc%.sm=9
if %p1.get.sr%==6 set/a p1.%sdc%.sc=(%p1.get.sv% * 60) / 10
if %p1.get.sr%==6 set/a p1.%sdc%.se=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==6   set p1.%sdc%.sd=B
if %p1.get.sr%==7 set/a p1.%sdc%.sm=10
if %p1.get.sr%==7 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==7 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==7   set p1.%sdc%.sd=A
if %p1.get.sr%==8 set/a p1.%sdc%.sm=11
if %p1.get.sr%==8 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==8 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==8   set p1.%sdc%.sd=9
if %p1.get.sr%==9 set/a p1.%sdc%.sm=12
if %p1.get.sr%==9 set/a p1.%sdc%.sc=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==9 set/a p1.%sdc%.se=(%p1.get.sv% * 140) / 10
if %p1.get.sr%==9   set p1.%sdc%.sd=8
if %p1.get.sr%==10 set/a p1.%sdc%.sm=14
if %p1.get.sr%==10 set/a p1.%sdc%.sc=(%p1.get.sv% * 120) / 10
if %p1.get.sr%==10 set/a p1.%sdc%.se=(%p1.get.sv% * 180) / 10
if %p1.get.sr%==10   set p1.%sdc%.sd=7
if %p1.get.sr%==11 set/a p1.%sdc%.sm=16
if %p1.get.sr%==11 set/a p1.%sdc%.sc=(%p1.get.sv% * 140) / 10
if %p1.get.sr%==11 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==11   set p1.%sdc%.sd=6
if %p1.get.sr%==12 set/a p1.%sdc%.sm=18
if %p1.get.sr%==12 set/a p1.%sdc%.sc=(%p1.get.sv% * 160) / 10
if %p1.get.sr%==12 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==12   set p1.%sdc%.sd=5
if %p1.get.sr%==13 set/a p1.%sdc%.sm=20
if %p1.get.sr%==13 set/a p1.%sdc%.sc=(%p1.get.sv% * 240) / 10
if %p1.get.sr%==13 set/a p1.%sdc%.se=(%p1.get.sv% * 200) / 10
if %p1.get.sr%==13   set p1.%sdc%.sd=4
if %p1.get.sr%==14 set/a p1.%sdc%.sm=24
if %p1.get.sr%==14 set/a p1.%sdc%.sc=(%p1.get.sv% * 80) / 10
if %p1.get.sr%==14 set/a p1.%sdc%.se=(%p1.get.sv% * 100) / 10
if %p1.get.sr%==14   set p1.%sdc%.sd=3
if %p1.get.sr%==15 set/a p1.%sdc%.sm=28
if %p1.get.sr%==15 set/a p1.%sdc%.sc=(%p1.get.sv% * 360) / 10
if %p1.get.sr%==15 set/a p1.%sdc%.se=(%p1.get.sv% * 300) / 10
if %p1.get.sr%==15   set p1.%sdc%.sd=2
if %p1.get.sr%==16 set/a p1.%sdc%.sm=34
if %p1.get.sr%==16 set/a p1.%sdc%.sc=(%p1.get.sv% * 480) / 10
if %p1.get.sr%==16 set/a p1.%sdc%.se=(%p1.get.sv% * 400) / 10
if %p1.get.sr%==16   set p1.%sdc%.sd=1
if %p1.get.sr%==17 set/a p1.%sdc%.sm=40
if %p1.get.sr%==17 set/a p1.%sdc%.sc=0
if %p1.get.sr%==17 set/a p1.%sdc%.se=0
if %p1.get.sr%==17   set p1.%sdc%.sd=0
::p2
if %p2.get.sr%==0 set/a p2.%sdc%.sm=0
if %p2.get.sr%==0 set/a p2.%sdc%.sc=600
if %p2.get.sr%==0 set/a p2.%sdc%.se=0
if %p2.get.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.get.sr%==1 set/a p2.%sdc%.sm=4
if %p2.get.sr%==1 set/a p2.%sdc%.sc=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==1 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==1   set p2.%sdc%.sd=Novice
if %p2.get.sr%==2 set/a p2.%sdc%.sm=5
if %p2.get.sr%==2 set/a p2.%sdc%.sc=(%p2.get.sv% * 30) / 10
if %p2.get.sr%==2 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==2   set p2.%sdc%.sd=F
if %p2.get.sr%==3 set/a p2.%sdc%.sm=6
if %p2.get.sr%==3 set/a p2.%sdc%.sc=(%p2.get.sv% * 40) / 10
if %p2.get.sr%==3 set/a p2.%sdc%.se=(%p2.get.sv% * 20) / 10
if %p2.get.sr%==3   set p2.%sdc%.sd=E
if %p2.get.sr%==4 set/a p2.%sdc%.sm=7
if %p2.get.sr%==4 set/a p2.%sdc%.sc=(%p2.get.sv% * 50) / 10
if %p2.get.sr%==4 set/a p2.%sdc%.se=(%p2.get.sv% * 40) / 10
if %p2.get.sr%==4   set p2.%sdc%.sd=D
if %p2.get.sr%==5 set/a p2.%sdc%.sm=8
if %p2.get.sr%==5 set/a p2.%sdc%.sc=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==5 set/a p2.%sdc%.se=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==5   set p2.%sdc%.sd=C
if %p2.get.sr%==6 set/a p2.%sdc%.sm=9
if %p2.get.sr%==6 set/a p2.%sdc%.sc=(%p2.get.sv% * 60) / 10
if %p2.get.sr%==6 set/a p2.%sdc%.se=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==6   set p2.%sdc%.sd=B
if %p2.get.sr%==7 set/a p2.%sdc%.sm=10
if %p2.get.sr%==7 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==7 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==7   set p2.%sdc%.sd=A
if %p2.get.sr%==8 set/a p2.%sdc%.sm=11
if %p2.get.sr%==8 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==8 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==8   set p2.%sdc%.sd=9
if %p2.get.sr%==9 set/a p2.%sdc%.sm=12
if %p2.get.sr%==9 set/a p2.%sdc%.sc=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==9 set/a p2.%sdc%.se=(%p2.get.sv% * 140) / 10
if %p2.get.sr%==9   set p2.%sdc%.sd=8
if %p2.get.sr%==10 set/a p2.%sdc%.sm=14
if %p2.get.sr%==10 set/a p2.%sdc%.sc=(%p2.get.sv% * 120) / 10
if %p2.get.sr%==10 set/a p2.%sdc%.se=(%p2.get.sv% * 180) / 10
if %p2.get.sr%==10   set p2.%sdc%.sd=7
if %p2.get.sr%==11 set/a p2.%sdc%.sm=16
if %p2.get.sr%==11 set/a p2.%sdc%.sc=(%p2.get.sv% * 140) / 10
if %p2.get.sr%==11 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==11   set p2.%sdc%.sd=6
if %p2.get.sr%==12 set/a p2.%sdc%.sm=18
if %p2.get.sr%==12 set/a p2.%sdc%.sc=(%p2.get.sv% * 160) / 10
if %p2.get.sr%==12 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==12   set p2.%sdc%.sd=5
if %p2.get.sr%==13 set/a p2.%sdc%.sm=20
if %p2.get.sr%==13 set/a p2.%sdc%.sc=(%p2.get.sv% * 240) / 10
if %p2.get.sr%==13 set/a p2.%sdc%.se=(%p2.get.sv% * 200) / 10
if %p2.get.sr%==13   set p2.%sdc%.sd=4
if %p2.get.sr%==14 set/a p2.%sdc%.sm=24
if %p2.get.sr%==14 set/a p2.%sdc%.sc=(%p2.get.sv% * 80) / 10
if %p2.get.sr%==14 set/a p2.%sdc%.se=(%p2.get.sv% * 100) / 10
if %p2.get.sr%==14   set p2.%sdc%.sd=3
if %p2.get.sr%==15 set/a p2.%sdc%.sm=28
if %p2.get.sr%==15 set/a p2.%sdc%.sc=(%p2.get.sv% * 360) / 10
if %p2.get.sr%==15 set/a p2.%sdc%.se=(%p2.get.sv% * 300) / 10
if %p2.get.sr%==15   set p2.%sdc%.sd=2
if %p2.get.sr%==16 set/a p2.%sdc%.sm=34
if %p2.get.sr%==16 set/a p2.%sdc%.sc=(%p2.get.sv% * 480) / 10
if %p2.get.sr%==16 set/a p2.%sdc%.se=(%p2.get.sv% * 400) / 10
if %p2.get.sr%==16   set p2.%sdc%.sd=1
if %p2.get.sr%==17 set/a p2.%sdc%.sm=40
if %p2.get.sr%==17 set/a p2.%sdc%.sc=0
if %p2.get.sr%==17 set/a p2.%sdc%.se=0
if %p2.get.sr%==17   set p2.%sdc%.sd=0
goto:eof

:fus.dec
if %p1.fus.sr%==0 set/a p1.fus.sm=0
if %p1.fus.sr%==0 set/a p1.fus.sc=0
if %p1.fus.sr%==0 set/a p1.fus.se=0
if %p1.fus.sr%==0   set p1.fus.sd=Not Learnt
if %p1.fus.sr%==1 set/a p1.fus.sm=4
if %p1.fus.sr%==1 set/a p1.fus.sc=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==1 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==1   set p1.fus.sd=Novice
if %p1.fus.sr%==2 set/a p1.fus.sm=5
if %p1.fus.sr%==2 set/a p1.fus.sc=(%p1.fus.sv% * 30) / 10
if %p1.fus.sr%==2 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==2   set p1.fus.sd=F
if %p1.fus.sr%==3 set/a p1.fus.sm=6
if %p1.fus.sr%==3 set/a p1.fus.sc=(%p1.fus.sv% * 40) / 10
if %p1.fus.sr%==3 set/a p1.fus.se=(%p1.fus.sv% * 20) / 10
if %p1.fus.sr%==3   set p1.fus.sd=E
if %p1.fus.sr%==4 set/a p1.fus.sm=7
if %p1.fus.sr%==4 set/a p1.fus.sc=(%p1.fus.sv% * 50) / 10
if %p1.fus.sr%==4 set/a p1.fus.se=(%p1.fus.sv% * 40) / 10
if %p1.fus.sr%==4   set p1.fus.sd=D
if %p1.fus.sr%==5 set/a p1.fus.sm=8
if %p1.fus.sr%==5 set/a p1.fus.sc=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==5 set/a p1.fus.se=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==5   set p1.fus.sd=C
if %p1.fus.sr%==6 set/a p1.fus.sm=9
if %p1.fus.sr%==6 set/a p1.fus.sc=(%p1.fus.sv% * 60) / 10
if %p1.fus.sr%==6 set/a p1.fus.se=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==6   set p1.fus.sd=B
if %p1.fus.sr%==7 set/a p1.fus.sm=10
if %p1.fus.sr%==7 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==7 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==7   set p1.fus.sd=A
if %p1.fus.sr%==8 set/a p1.fus.sm=11
if %p1.fus.sr%==8 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==8 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==8   set p1.fus.sd=9
if %p1.fus.sr%==9 set/a p1.fus.sm=12
if %p1.fus.sr%==9 set/a p1.fus.sc=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==9 set/a p1.fus.se=(%p1.fus.sv% * 140) / 10
if %p1.fus.sr%==9   set p1.fus.sd=8
if %p1.fus.sr%==10 set/a p1.fus.sm=14
if %p1.fus.sr%==10 set/a p1.fus.sc=(%p1.fus.sv% * 120) / 10
if %p1.fus.sr%==10 set/a p1.fus.se=(%p1.fus.sv% * 180) / 10
if %p1.fus.sr%==10   set p1.fus.sd=7
if %p1.fus.sr%==11 set/a p1.fus.sm=16
if %p1.fus.sr%==11 set/a p1.fus.sc=(%p1.fus.sv% * 140) / 10
if %p1.fus.sr%==11 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==11   set p1.fus.sd=6
if %p1.fus.sr%==12 set/a p1.fus.sm=18
if %p1.fus.sr%==12 set/a p1.fus.sc=(%p1.fus.sv% * 160) / 10
if %p1.fus.sr%==12 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==12   set p1.fus.sd=5
if %p1.fus.sr%==13 set/a p1.fus.sm=20
if %p1.fus.sr%==13 set/a p1.fus.sc=(%p1.fus.sv% * 240) / 10
if %p1.fus.sr%==13 set/a p1.fus.se=(%p1.fus.sv% * 200) / 10
if %p1.fus.sr%==13   set p1.fus.sd=4
if %p1.fus.sr%==14 set/a p1.fus.sm=24
if %p1.fus.sr%==14 set/a p1.fus.sc=(%p1.fus.sv% * 80) / 10
if %p1.fus.sr%==14 set/a p1.fus.se=(%p1.fus.sv% * 100) / 10
if %p1.fus.sr%==14   set p1.fus.sd=3
if %p1.fus.sr%==15 set/a p1.fus.sm=28
if %p1.fus.sr%==15 set/a p1.fus.sc=(%p1.att.sv% * 360) / 10
if %p1.fus.sr%==15 set/a p1.fus.se=(%p1.att.sv% * 300) / 10
if %p1.fus.sr%==15   set p1.fus.sd=2
if %p1.fus.sr%==16 set/a p1.fus.sm=34
if %p1.fus.sr%==16 set/a p1.fus.sc=(%p1.fus.sv% * 480) / 10
if %p1.fus.sr%==16 set/a p1.fus.se=(%p1.fus.sv% * 400) / 10
if %p1.fus.sr%==16   set p1.fus.sd=1
if %p1.fus.sr%==17 set/a p1.fus.sm=40
if %p1.fus.sr%==17 set/a p1.fus.sc=0
if %p1.fus.sr%==17 set/a p1.fus.se=0
if %p1.fus.sr%==17   set p1.fus.sd=0




::p2

if %p2.fus.sr%==0 set/a p2.fus.sm=0
if %p2.fus.sr%==0 set/a p2.fus.sc=0
if %p2.fus.sr%==0 set/a p2.fus.se=0
if %p2.fus.sr%==0   set p2.fus.sd=Not Learnt
if %p2.fus.sr%==1 set/a p2.fus.sm=4
if %p2.fus.sr%==1 set/a p2.fus.sc=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==1 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==1   set p2.fus.sd=Novice
if %p2.fus.sr%==2 set/a p2.fus.sm=5
if %p2.fus.sr%==2 set/a p2.fus.sc=(%p2.fus.sv% * 30) / 10
if %p2.fus.sr%==2 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==2   set p2.fus.sd=F
if %p2.fus.sr%==3 set/a p2.fus.sm=6
if %p2.fus.sr%==3 set/a p2.fus.sc=(%p2.fus.sv% * 40) / 10
if %p2.fus.sr%==3 set/a p2.fus.se=(%p2.fus.sv% * 20) / 10
if %p2.fus.sr%==3   set p2.fus.sd=E
if %p2.fus.sr%==4 set/a p2.fus.sm=7
if %p2.fus.sr%==4 set/a p2.fus.sc=(%p2.fus.sv% * 50) / 10
if %p2.fus.sr%==4 set/a p2.fus.se=(%p2.fus.sv% * 40) / 10
if %p2.fus.sr%==4   set p2.fus.sd=D
if %p2.fus.sr%==5 set/a p2.fus.sm=8
if %p2.fus.sr%==5 set/a p2.fus.sc=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==5 set/a p2.fus.se=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==5   set p2.fus.sd=C
if %p2.fus.sr%==6 set/a p2.fus.sm=9
if %p2.fus.sr%==6 set/a p2.fus.sc=(%p2.fus.sv% * 60) / 10
if %p2.fus.sr%==6 set/a p2.fus.se=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==6   set p2.fus.sd=B
if %p2.fus.sr%==7 set/a p2.fus.sm=10
if %p2.fus.sr%==7 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==7 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==7   set p2.fus.sd=A
if %p2.fus.sr%==8 set/a p2.fus.sm=11
if %p2.fus.sr%==8 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==8 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==8   set p2.fus.sd=9
if %p2.fus.sr%==9 set/a p2.fus.sm=12
if %p2.fus.sr%==9 set/a p2.fus.sc=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==9 set/a p2.fus.se=(%p2.fus.sv% * 140) / 10
if %p2.fus.sr%==9   set p2.fus.sd=8
if %p2.fus.sr%==10 set/a p2.fus.sm=14
if %p2.fus.sr%==10 set/a p2.fus.sc=(%p2.fus.sv% * 120) / 10
if %p2.fus.sr%==10 set/a p2.fus.se=(%p2.fus.sv% * 180) / 10
if %p2.fus.sr%==10   set p2.fus.sd=7
if %p2.fus.sr%==11 set/a p2.fus.sm=16
if %p2.fus.sr%==11 set/a p2.fus.sc=(%p2.fus.sv% * 140) / 10
if %p2.fus.sr%==11 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==11   set p2.fus.sd=6
if %p2.fus.sr%==12 set/a p2.fus.sm=18
if %p2.fus.sr%==12 set/a p2.fus.sc=(%p2.fus.sv% * 160) / 10
if %p2.fus.sr%==12 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==12   set p2.fus.sd=5
if %p2.fus.sr%==13 set/a p2.fus.sm=20
if %p2.fus.sr%==13 set/a p2.fus.sc=(%p2.fus.sv% * 240) / 10
if %p2.fus.sr%==13 set/a p2.fus.se=(%p2.fus.sv% * 200) / 10
if %p2.fus.sr%==13   set p2.fus.sd=4
if %p2.fus.sr%==14 set/a p2.fus.sm=24
if %p2.fus.sr%==14 set/a p2.fus.sc=(%p2.fus.sv% * 80) / 10
if %p2.fus.sr%==14 set/a p2.fus.se=(%p2.fus.sv% * 100) / 10
if %p2.fus.sr%==14   set p2.fus.sd=3
if %p2.fus.sr%==15 set/a p2.fus.sm=28
if %p2.fus.sr%==15 set/a p2.fus.sc=(%p2.att.sv% * 360) / 10
if %p2.fus.sr%==15 set/a p2.fus.se=(%p2.att.sv% * 300) / 10
if %p2.fus.sr%==15   set p2.fus.sd=2
if %p2.fus.sr%==16 set/a p2.fus.sm=34
if %p2.fus.sr%==16 set/a p2.fus.sc=(%p2.fus.sv% * 480) / 10
if %p2.fus.sr%==16 set/a p2.fus.se=(%p2.fus.sv% * 400) / 10
if %p2.fus.sr%==16   set p2.fus.sd=1
if %p2.fus.sr%==17 set/a p2.fus.sm=40
if %p2.fus.sr%==17 set/a p2.fus.sc=0
if %p2.fus.sr%==17 set/a p2.fus.se=0
if %p2.fus.sr%==17   set p2.fus.sd=0
goto:eof

:lig.dec
if %p1.lig.sr%==0 set/a p1.lig.sm=0
if %p1.lig.sr%==0 set/a p1.lig.sc=450
if %p1.lig.sr%==0 set/a p1.lig.se=0
if %p1.lig.sr%==0   set p1.lig.sd=Not Learnt
if %p1.lig.sr%==1 set/a p1.lig.sm=4
if %p1.lig.sr%==1 set/a p1.lig.sc=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==1 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==1   set p1.lig.sd=Novice
if %p1.lig.sr%==2 set/a p1.lig.sm=5
if %p1.lig.sr%==2 set/a p1.lig.sc=(%p1.lig.sv% * 30) / 10
if %p1.lig.sr%==2 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==2   set p1.lig.sd=F
if %p1.lig.sr%==3 set/a p1.lig.sm=6
if %p1.lig.sr%==3 set/a p1.lig.sc=(%p1.lig.sv% * 40) / 10
if %p1.lig.sr%==3 set/a p1.lig.se=(%p1.lig.sv% * 20) / 10
if %p1.lig.sr%==3   set p1.lig.sd=E
if %p1.lig.sr%==4 set/a p1.lig.sm=7
if %p1.lig.sr%==4 set/a p1.lig.sc=(%p1.lig.sv% * 50) / 10
if %p1.lig.sr%==4 set/a p1.lig.se=(%p1.lig.sv% * 40) / 10
if %p1.lig.sr%==4   set p1.lig.sd=D
if %p1.lig.sr%==5 set/a p1.lig.sm=8
if %p1.lig.sr%==5 set/a p1.lig.sc=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==5 set/a p1.lig.se=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==5   set p1.lig.sd=C
if %p1.lig.sr%==6 set/a p1.lig.sm=9
if %p1.lig.sr%==6 set/a p1.lig.sc=(%p1.lig.sv% * 60) / 10
if %p1.lig.sr%==6 set/a p1.lig.se=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==6   set p1.lig.sd=B
if %p1.lig.sr%==7 set/a p1.lig.sm=10
if %p1.lig.sr%==7 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==7 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==7   set p1.lig.sd=A
if %p1.lig.sr%==8 set/a p1.lig.sm=11
if %p1.lig.sr%==8 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==8 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==8   set p1.lig.sd=9
if %p1.lig.sr%==9 set/a p1.lig.sm=12
if %p1.lig.sr%==9 set/a p1.lig.sc=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==9 set/a p1.lig.se=(%p1.lig.sv% * 140) / 10
if %p1.lig.sr%==9   set p1.lig.sd=8
if %p1.lig.sr%==10 set/a p1.lig.sm=14
if %p1.lig.sr%==10 set/a p1.lig.sc=(%p1.lig.sv% * 120) / 10
if %p1.lig.sr%==10 set/a p1.lig.se=(%p1.lig.sv% * 180) / 10
if %p1.lig.sr%==10   set p1.lig.sd=7
if %p1.lig.sr%==11 set/a p1.lig.sm=16
if %p1.lig.sr%==11 set/a p1.lig.sc=(%p1.lig.sv% * 140) / 10
if %p1.lig.sr%==11 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==11   set p1.lig.sd=6
if %p1.lig.sr%==12 set/a p1.lig.sm=18
if %p1.lig.sr%==12 set/a p1.lig.sc=(%p1.lig.sv% * 160) / 10
if %p1.lig.sr%==12 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==12   set p1.lig.sd=5
if %p1.lig.sr%==13 set/a p1.lig.sm=20
if %p1.lig.sr%==13 set/a p1.lig.sc=(%p1.lig.sv% * 240) / 10
if %p1.lig.sr%==13 set/a p1.lig.se=(%p1.lig.sv% * 200) / 10
if %p1.lig.sr%==13   set p1.lig.sd=4
if %p1.lig.sr%==14 set/a p1.lig.sm=24
if %p1.lig.sr%==14 set/a p1.lig.sc=(%p1.lig.sv% * 80) / 10
if %p1.lig.sr%==14 set/a p1.lig.se=(%p1.lig.sv% * 100) / 10
if %p1.lig.sr%==14   set p1.lig.sd=3
if %p1.lig.sr%==15 set/a p1.lig.sm=28
if %p1.lig.sr%==15 set/a p1.lig.sc=(%p1.lig.sv% * 360) / 10
if %p1.lig.sr%==15 set/a p1.lig.se=(%p1.lig.sv% * 300) / 10
if %p1.lig.sr%==15   set p1.lig.sd=2
if %p1.lig.sr%==16 set/a p1.lig.sm=34
if %p1.lig.sr%==16 set/a p1.lig.sc=(%p1.lig.sv% * 480) / 10
if %p1.lig.sr%==16 set/a p1.lig.se=(%p1.lig.sv% * 400) / 10
if %p1.lig.sr%==16   set p1.lig.sd=1
if %p1.lig.sr%==17 set/a p1.lig.sm=40
if %p1.lig.sr%==17 set/a p1.lig.sc=0
if %p1.lig.sr%==17 set/a p1.lig.se=0
if %p1.lig.sr%==17   set p1.lig.sd=0

::p2
if %p2.lig.sr%==0 set/a p2.lig.sm=0
if %p2.lig.sr%==0 set/a p2.lig.sc=450
if %p2.lig.sr%==0 set/a p2.lig.se=0
if %p2.lig.sr%==0   set p2.lig.sd=Not Learnt
if %p2.lig.sr%==1 set/a p2.lig.sm=4
if %p2.lig.sr%==1 set/a p2.lig.sc=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==1 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==1   set p2.lig.sd=Novice
if %p2.lig.sr%==2 set/a p2.lig.sm=5
if %p2.lig.sr%==2 set/a p2.lig.sc=(%p2.lig.sv% * 30) / 10
if %p2.lig.sr%==2 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==2   set p2.lig.sd=F
if %p2.lig.sr%==3 set/a p2.lig.sm=6
if %p2.lig.sr%==3 set/a p2.lig.sc=(%p2.lig.sv% * 40) / 10
if %p2.lig.sr%==3 set/a p2.lig.se=(%p2.lig.sv% * 20) / 10
if %p2.lig.sr%==3   set p2.lig.sd=E
if %p2.lig.sr%==4 set/a p2.lig.sm=7
if %p2.lig.sr%==4 set/a p2.lig.sc=(%p2.lig.sv% * 50) / 10
if %p2.lig.sr%==4 set/a p2.lig.se=(%p2.lig.sv% * 40) / 10
if %p2.lig.sr%==4   set p2.lig.sd=D
if %p2.lig.sr%==5 set/a p2.lig.sm=8
if %p2.lig.sr%==5 set/a p2.lig.sc=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==5 set/a p2.lig.se=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==5   set p2.lig.sd=C
if %p2.lig.sr%==6 set/a p2.lig.sm=9
if %p2.lig.sr%==6 set/a p2.lig.sc=(%p2.lig.sv% * 60) / 10
if %p2.lig.sr%==6 set/a p2.lig.se=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==6   set p2.lig.sd=B
if %p2.lig.sr%==7 set/a p2.lig.sm=10
if %p2.lig.sr%==7 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==7 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==7   set p2.lig.sd=A
if %p2.lig.sr%==8 set/a p2.lig.sm=11
if %p2.lig.sr%==8 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==8 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==8   set p2.lig.sd=9
if %p2.lig.sr%==9 set/a p2.lig.sm=12
if %p2.lig.sr%==9 set/a p2.lig.sc=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==9 set/a p2.lig.se=(%p2.lig.sv% * 140) / 10
if %p2.lig.sr%==9   set p2.lig.sd=8
if %p2.lig.sr%==10 set/a p2.lig.sm=14
if %p2.lig.sr%==10 set/a p2.lig.sc=(%p2.lig.sv% * 120) / 10
if %p2.lig.sr%==10 set/a p2.lig.se=(%p2.lig.sv% * 180) / 10
if %p2.lig.sr%==10   set p2.lig.sd=7
if %p2.lig.sr%==11 set/a p2.lig.sm=16
if %p2.lig.sr%==11 set/a p2.lig.sc=(%p2.lig.sv% * 140) / 10
if %p2.lig.sr%==11 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==11   set p2.lig.sd=6
if %p2.lig.sr%==12 set/a p2.lig.sm=18
if %p2.lig.sr%==12 set/a p2.lig.sc=(%p2.lig.sv% * 160) / 10
if %p2.lig.sr%==12 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==12   set p2.lig.sd=5
if %p2.lig.sr%==13 set/a p2.lig.sm=20
if %p2.lig.sr%==13 set/a p2.lig.sc=(%p2.lig.sv% * 240) / 10
if %p2.lig.sr%==13 set/a p2.lig.se=(%p2.lig.sv% * 200) / 10
if %p2.lig.sr%==13   set p2.lig.sd=4
if %p2.lig.sr%==14 set/a p2.lig.sm=24
if %p2.lig.sr%==14 set/a p2.lig.sc=(%p2.lig.sv% * 80) / 10
if %p2.lig.sr%==14 set/a p2.lig.se=(%p2.lig.sv% * 100) / 10
if %p2.lig.sr%==14   set p2.lig.sd=3
if %p2.lig.sr%==15 set/a p2.lig.sm=28
if %p2.lig.sr%==15 set/a p2.lig.sc=(%p2.lig.sv% * 360) / 10
if %p2.lig.sr%==15 set/a p2.lig.se=(%p2.lig.sv% * 300) / 10
if %p2.lig.sr%==15   set p2.lig.sd=2
if %p2.lig.sr%==16 set/a p2.lig.sm=34
if %p2.lig.sr%==16 set/a p2.lig.sc=(%p2.lig.sv% * 480) / 10
if %p2.lig.sr%==16 set/a p2.lig.se=(%p2.lig.sv% * 400) / 10
if %p2.lig.sr%==16   set p2.lig.sd=1
if %p2.lig.sr%==17 set/a p2.lig.sm=40
if %p2.lig.sr%==17 set/a p2.lig.sc=0
if %p2.lig.sr%==17 set/a p2.lig.se=0
if %p2.lig.sr%==17   set p2.lig.sd=0
goto:eof

:res.dec
if %p1.res.sr%==0 set/a p1.res.sm=0
if %p1.res.sr%==0 set/a p1.res.sc=0
if %p1.res.sr%==0 set/a p1.res.se=0
if %p1.res.sr%==0   set p1.res.sd=Not Learnt
if %p1.res.sr%==1 set/a p1.res.sm=4
if %p1.res.sr%==1 set/a p1.res.sc=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==1 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==1   set p1.res.sd=Novice
if %p1.res.sr%==2 set/a p1.res.sm=5
if %p1.res.sr%==2 set/a p1.res.sc=(%p1.res.sv% * 30) / 10
if %p1.res.sr%==2 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==2   set p1.res.sd=F
if %p1.res.sr%==3 set/a p1.res.sm=6
if %p1.res.sr%==3 set/a p1.res.sc=(%p1.res.sv% * 40) / 10
if %p1.res.sr%==3 set/a p1.res.se=(%p1.res.sv% * 20) / 10
if %p1.res.sr%==3   set p1.res.sd=E
if %p1.res.sr%==4 set/a p1.res.sm=7
if %p1.res.sr%==4 set/a p1.res.sc=(%p1.res.sv% * 50) / 10
if %p1.res.sr%==4 set/a p1.res.se=(%p1.res.sv% * 40) / 10
if %p1.res.sr%==4   set p1.res.sd=D
if %p1.res.sr%==5 set/a p1.res.sm=8
if %p1.res.sr%==5 set/a p1.res.sc=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==5 set/a p1.res.se=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==5   set p1.res.sd=C
if %p1.res.sr%==6 set/a p1.res.sm=9
if %p1.res.sr%==6 set/a p1.res.sc=(%p1.res.sv% * 60) / 10
if %p1.res.sr%==6 set/a p1.res.se=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==6   set p1.res.sd=B
if %p1.res.sr%==7 set/a p1.res.sm=10
if %p1.res.sr%==7 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==7 set/a p1.res.se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==7   set p1.res.sd=A
if %p1.res.sr%==8 set/a p1.res.sm=11
if %p1.res.sr%==8 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==8 set/a p1res..se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==8   set p1.res.sd=9
if %p1.res.sr%==9 set/a p1.res.sm=12
if %p1.res.sr%==9 set/a p1.res.sc=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==9 set/a p1.res.se=(%p1.res.sv% * 140) / 10
if %p1.res.sr%==9   set p1.res.sd=8
if %p1.res.sr%==10 set/a p1.res.sm=14
if %p1.res.sr%==10 set/a p1.res.sc=(%p1.res.sv% * 120) / 10
if %p1.res.sr%==10 set/a p1.res.se=(%p1.res.sv% * 180) / 10
if %p1.res.sr%==10   set p1.res.sd=7
if %p1.res.sr%==11 set/a p1.res.sm=16
if %p1.res.sr%==11 set/a p1.res.sc=(%p1.res.sv% * 140) / 10
if %p1.res.sr%==11 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==11   set p1.res.sd=6
if %p1.res.sr%==12 set/a p1.res.sm=18
if %p1.res.sr%==12 set/a p1.res.sc=(%p1.res.sv% * 160) / 10
if %p1.res.sr%==12 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==12   set p1.res.sd=5
if %p1.res.sr%==13 set/a p1.res.sm=20
if %p1.res.sr%==13 set/a p1.res.sc=(%p1.res.sv% * 240) / 10
if %p1.res.sr%==13 set/a p1.res.se=(%p1.res.sv% * 200) / 10
if %p1.res.sr%==13   set p1.res.sd=4
if %p1.res.sr%==14 set/a p1.res.sm=24
if %p1.res.sr%==14 set/a p1.res.sc=(%p1.res.sv% * 80) / 10
if %p1.res.sr%==14 set/a p1.res.se=(%p1.res.sv% * 100) / 10
if %p1.res.sr%==14   set p1.res.sd=3
if %p1.res.sr%==15 set/a p1.res.sm=28
if %p1.res.sr%==15 set/a p1.res.sc=(%p1.res.sv% * 360) / 10
if %p1.res.sr%==15 set/a p1.res.se=(%p1.res.sv% * 300) / 10
if %p1.res.sr%==15   set p1.res.sd=2
if %p1.res.sr%==16 set/a p1.res.sm=34
if %p1.res.sr%==16 set/a p1.res.sc=(%p1.res.sv% * 480) / 10
if %p1.res.sr%==16 set/a p1.res.se=(%p1..sv% * 400) / 10
if %p1.res.sr%==16   set p1.res.sd=1
if %p1.res.sr%==17 set/a p1.res.sm=40
if %p1.res.sr%==17 set/a p1.res.sc=0
if %p1.res.sr%==17 set/a p1.res.se=0
if %p1.res.sr%==17   set p1.res.sd=0
::p2
if %p2.res.sr%==0 set/a p2.res.sm=0
if %p2.res.sr%==0 set/a p2.res.sc=0
if %p2.res.sr%==0 set/a p2.res.se=0
if %p2.res.sr%==0   set p2.res.sd=Not Learnt
if %p2.res.sr%==1 set/a p2.res.sm=4
if %p2.res.sr%==1 set/a p2.res.sc=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==1 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==1   set p2.res.sd=Novice
if %p2.res.sr%==2 set/a p2.res.sm=5
if %p2.res.sr%==2 set/a p2.res.sc=(%p2.res.sv% * 30) / 10
if %p2.res.sr%==2 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==2   set p2.res.sd=F
if %p2.res.sr%==3 set/a p2.res.sm=6
if %p2.res.sr%==3 set/a p2.res.sc=(%p2.res.sv% * 40) / 10
if %p2.res.sr%==3 set/a p2.res.se=(%p2.res.sv% * 20) / 10
if %p2.res.sr%==3   set p2.res.sd=E
if %p2.res.sr%==4 set/a p2.res.sm=7
if %p2.res.sr%==4 set/a p2.res.sc=(%p2.res.sv% * 50) / 10
if %p2.res.sr%==4 set/a p2.res.se=(%p2.res.sv% * 40) / 10
if %p2.res.sr%==4   set p2.res.sd=D
if %p2.res.sr%==5 set/a p2.res.sm=8
if %p2.res.sr%==5 set/a p2.res.sc=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==5 set/a p2.res.se=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==5   set p2.res.sd=C
if %p2.res.sr%==6 set/a p2.res.sm=9
if %p2.res.sr%==6 set/a p2.res.sc=(%p2.res.sv% * 60) / 10
if %p2.res.sr%==6 set/a p2.res.se=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==6   set p2.res.sd=B
if %p2.res.sr%==7 set/a p2.res.sm=10
if %p2.res.sr%==7 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==7 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==7   set p2.res.sd=A
if %p2.res.sr%==8 set/a p2.res.sm=11
if %p2.res.sr%==8 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==8 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==8   set p2.res.sd=9
if %p2.res.sr%==9 set/a p2.res.sm=12
if %p2.res.sr%==9 set/a p2.res.sc=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==9 set/a p2.res.se=(%p2.res.sv% * 140) / 10
if %p2.res.sr%==9   set p2.res.sd=8
if %p2.res.sr%==10 set/a p2.res.sm=14
if %p2.res.sr%==10 set/a p2.res.sc=(%p2.res.sv% * 120) / 10
if %p2.res.sr%==10 set/a p2.res.se=(%p2.res.sv% * 180) / 10
if %p2.res.sr%==10   set p2.res.sd=7
if %p2.res.sr%==11 set/a p2.res.sm=16
if %p2.res.sr%==11 set/a p2.res.sc=(%p2.res.sv% * 140) / 10
if %p2.res.sr%==11 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==11   set p2.res.sd=6
if %p2.res.sr%==12 set/a p2.res.sm=18
if %p2.res.sr%==12 set/a p2.res.sc=(%p2.res.sv% * 160) / 10
if %p2.res.sr%==12 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==12   set p2.res.sd=5
if %p2.res.sr%==13 set/a p2.res.sm=20
if %p2.res.sr%==13 set/a p2.res.sc=(%p2.res.sv% * 240) / 10
if %p2.res.sr%==13 set/a p2.res.se=(%p2.res.sv% * 200) / 10
if %p2.res.sr%==13   set p2.res.sd=4
if %p2.res.sr%==14 set/a p2.res.sm=24
if %p2.res.sr%==14 set/a p2.res.sc=(%p2.res.sv% * 80) / 10
if %p2.res.sr%==14 set/a p2.res.se=(%p2.res.sv% * 100) / 10
if %p2.res.sr%==14   set p2.res.sd=3
if %p2.res.sr%==15 set/a p2.res.sm=28
if %p2.res.sr%==15 set/a p2.res.sc=(%p2.res.sv% * 360) / 10
if %p2.res.sr%==15 set/a p2.res.se=(%p2.res.sv% * 300) / 10
if %p2.res.sr%==15   set p2.res.sd=2
if %p2.res.sr%==16 set/a p2.res.sm=34
if %p2.res.sr%==16 set/a p2.res.sc=(%p2.res.sv% * 480) / 10
if %p2.res.sr%==16 set/a p2.res.se=(%p2.res.sv% * 400) / 10
if %p2.res.sr%==16   set p2.res.sd=1
if %p2.res.sr%==17 set/a p2.res.sm=40
if %p2.res.sr%==17 set/a p2.res.sc=0
if %p2.res.sr%==17 set/a p2.res.se=0
if %p2.res.sr%==17   set p2.res.sd=0
goto:eof

:hla.dec
if %p1.hla.sr%==0 set/a p1.hla.sm=0
if %p1.hla.sr%==0 set/a p1.hla.sc=0
if %p1.hla.sr%==0 set/a p1.hla.se=0
if %p1.hla.sr%==0   set p1.hla.sd=Not Learnt
if %p1.hla.sr%==1 set/a p1.hla.sm=4
if %p1.hla.sr%==1 set/a p1.hla.sc=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==1 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==1   set p1.hla.sd=Novice
if %p1.hla.sr%==2 set/a p1.hla.sm=5
if %p1.hla.sr%==2 set/a p1.hla.sc=(%p1.hla.sv% * 30) / 10
if %p1.hla.sr%==2 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==2   set p1.hla.sd=F
if %p1.hla.sr%==3 set/a p1.hla.sm=6
if %p1.hla.sr%==3 set/a p1.hla.sc=(%p1.hla.sv% * 40) / 10
if %p1.hla.sr%==3 set/a p1.hla.se=(%p1.hla.sv% * 20) / 10
if %p1.hla.sr%==3   set p1.hla.sd=E
if %p1.hla.sr%==4 set/a p1.hla.sm=7
if %p1.hla.sr%==4 set/a p1.hla.sc=(%p1.hla.sv% * 50) / 10
if %p1.hla.sr%==4 set/a p1.hla.se=(%p1.hla.sv% * 40) / 10
if %p1.hla.sr%==4   set p1.hla.sd=D
if %p1.hla.sr%==5 set/a p1.hla.sm=8
if %p1.hla.sr%==5 set/a p1.hla.sc=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==5 set/a p1.hla.se=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==5   set p1.hla.sd=C
if %p1.hla.sr%==6 set/a p1.hla.sm=9
if %p1.hla.sr%==6 set/a p1.hla.sc=(%p1.hla.sv% * 60) / 10
if %p1.hla.sr%==6 set/a p1.hla.se=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==6   set p1.hla.sd=B
if %p1.hla.sr%==7 set/a p1.hla.sm=10
if %p1.hla.sr%==7 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==7 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==7   set p1.hla.sd=A
if %p1.hla.sr%==8 set/a p1.hla.sm=11
if %p1.hla.sr%==8 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==8 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==8   set p1.hla.sd=9
if %p1.hla.sr%==9 set/a p1.hla.sm=12
if %p1.hla.sr%==9 set/a p1.hla.sc=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==9 set/a p1.hla.se=(%p1.hla.sv% * 140) / 10
if %p1.hla.sr%==9   set p1.hla.sd=8
if %p1.hla.sr%==10 set/a p1.hla.sm=14
if %p1.hla.sr%==10 set/a p1.hla.sc=(%p1.hla.sv% * 120) / 10
if %p1.hla.sr%==10 set/a p1.hla.se=(%p1.hla.sv% * 180) / 10
if %p1.hla.sr%==10   set p1.hla.sd=7
if %p1.hla.sr%==11 set/a p1.hla.sm=16
if %p1.hla.sr%==11 set/a p1.hla.sc=(%p1.hla.sv% * 140) / 10
if %p1.hla.sr%==11 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==11   set p1.hla.sd=6
if %p1.hla.sr%==12 set/a p1.hla.sm=18
if %p1.hla.sr%==12 set/a p1.hla.sc=(%p1.hla.sv% * 160) / 10
if %p1.hla.sr%==12 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==12   set p1.hla.sd=5
if %p1.hla.sr%==13 set/a p1.hla.sm=20
if %p1.hla.sr%==13 set/a p1.hla.sc=(%p1.hla.sv% * 240) / 10
if %p1.hla.sr%==13 set/a p1.hla.se=(%p1.hla.sv% * 200) / 10
if %p1.hla.sr%==13   set p1.hla.sd=4
if %p1.hla.sr%==14 set/a p1.hla.sm=24
if %p1.hla.sr%==14 set/a p1.hla.sc=(%p1.hla.sv% * 80) / 10
if %p1.hla.sr%==14 set/a p1.hla.se=(%p1.hla.sv% * 100) / 10
if %p1.hla.sr%==14   set p1.hla.sd=3
if %p1.hla.sr%==15 set/a p1.hla.sm=28
if %p1.hla.sr%==15 set/a p1.hla.sc=(%p1.hla.sv% * 360) / 10
if %p1.hla.sr%==15 set/a p1.hla.se=(%p1.hla.sv% * 300) / 10
if %p1.hla.sr%==15   set p1.hla.sd=2
if %p1.hla.sr%==16 set/a p1.hla.sm=34
if %p1.hla.sr%==16 set/a p1.hla.sc=(%p1.hla.sv% * 480) / 10
if %p1.hla.sr%==16 set/a p1.hla.se=(%p1.hla.sv% * 400) / 10
if %p1.hla.sr%==16   set p1.hla.sd=1
if %p1.hla.sr%==17 set/a p1.hla.sm=40
if %p1.hla.sr%==17 set/a p1.hla.sc=0
if %p1.hla.sr%==17 set/a p1.hla.se=0
if %p1.hla.sr%==17   set p1.hla.sd=0
::p2
if %p2.hla.sr%==0 set/a p1.hla.sm=0
if %p2.hla.sr%==0 set/a p2.hla.sc=0
if %p2.hla.sr%==0 set/a p1.hla.se=0
if %p2.hla.sr%==0   set p1.hla.sd=Not Learnt
if %p2.hla.sr%==1 set/a p2.hla.sm=4
if %p2.hla.sr%==1 set/a p2.hla.sc=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==1 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==1   set p2.hla.sd=Novice
if %p2.hla.sr%==2 set/a p2.hla.sm=5
if %p2.hla.sr%==2 set/a p2.hla.sc=(%p2.hla.sv% * 30) / 10
if %p2.hla.sr%==2 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==2   set p2.hla.sd=F
if %p2.hla.sr%==3 set/a p2.hla.sm=6
if %p2.hla.sr%==3 set/a p2.hla.sc=(%p2.hla.sv% * 40) / 10
if %p2.hla.sr%==3 set/a p2.hla.se=(%p2.hla.sv% * 20) / 10
if %p2.hla.sr%==3   set p2.hla.sd=E
if %p2.hla.sr%==4 set/a p2.hla.sm=7
if %p2.hla.sr%==4 set/a p2.hla.sc=(%p2.hla.sv% * 50) / 10
if %p2.hla.sr%==4 set/a p2.hla.se=(%p2.hla.sv% * 40) / 10
if %p2.hla.sr%==4   set p2.hla.sd=D
if %p2.hla.sr%==5 set/a p2.hla.sm=8
if %p2.hla.sr%==5 set/a p2.hla.sc=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==5 set/a p2.hla.se=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==5   set p2.hla.sd=C
if %p2.hla.sr%==6 set/a p2.hla.sm=9
if %p2.hla.sr%==6 set/a p2.hla.sc=(%p2.hla.sv% * 60) / 10
if %p2.hla.sr%==6 set/a p2.hla.se=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==6   set p2.hla.sd=B
if %p2.hla.sr%==7 set/a p2.hla.sm=10
if %p2.hla.sr%==7 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==7 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==7   set p2.hla.sd=A
if %p2.hla.sr%==8 set/a p2.hla.sm=11
if %p2.hla.sr%==8 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==8 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==8   set p2.hla.sd=9
if %p2.hla.sr%==9 set/a p2.hla.sm=12
if %p2.hla.sr%==9 set/a p2.hla.sc=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==9 set/a p2.hla.se=(%p2.hla.sv% * 140) / 10
if %p2.hla.sr%==9   set p2.hla.sd=8
if %p2.hla.sr%==10 set/a p2.hla.sm=14
if %p2.hla.sr%==10 set/a p2.hla.sc=(%p2.hla.sv% * 120) / 10
if %p2.hla.sr%==10 set/a p2.hla.se=(%p2.hla.sv% * 180) / 10
if %p2.hla.sr%==10   set p2.hla.sd=7
if %p2.hla.sr%==11 set/a p2.hla.sm=16
if %p2.hla.sr%==11 set/a p2.hla.sc=(%p2.hla.sv% * 140) / 10
if %p2.hla.sr%==11 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==11   set p2.hla.sd=6
if %p2.hla.sr%==12 set/a p2.hla.sm=18
if %p2.hla.sr%==12 set/a p2.hla.sc=(%p2.hla.sv% * 160) / 10
if %p2.hla.sr%==12 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==12   set p2.hla.sd=5
if %p2.hla.sr%==13 set/a p2.hla.sm=20
if %p2.hla.sr%==13 set/a p2.hla.sc=(%p2.hla.sv% * 240) / 10
if %p2.hla.sr%==13 set/a p2.hla.se=(%p2.hla.sv% * 200) / 10
if %p2.hla.sr%==13   set p2.hla.sd=4
if %p2.hla.sr%==14 set/a p2.hla.sm=24
if %p2.hla.sr%==14 set/a p2.hla.sc=(%p2.hla.sv% * 80) / 10
if %p2.hla.sr%==14 set/a p2.hla.se=(%p2.hla.sv% * 100) / 10
if %p2.hla.sr%==14   set p2.hla.sd=3
if %p2.hla.sr%==15 set/a p2.hla.sm=28
if %p2.hla.sr%==15 set/a p2.hla.sc=(%p2.hla.sv% * 360) / 10
if %p2.hla.sr%==15 set/a p2.hla.se=(%p2.hla.sv% * 300) / 10
if %p2.hla.sr%==15   set p2.hla.sd=2
if %p2.hla.sr%==16 set/a p2.hla.sm=34
if %p2.hla.sr%==16 set/a p2.hla.sc=(%p2.hla.sv% * 480) / 10
if %p2.hla.sr%==16 set/a p2.hla.se=(%p2.hla.sv% * 400) / 10
if %p2.hla.sr%==16   set p2.hla.sd=1
if %p2.hla.sr%==17 set/a p2.hla.sm=40
if %p2.hla.sr%==17 set/a p2.hla.sc=0
if %p2.hla.sr%==17 set/a p2.hla.se=0
if %p2.hla.sr%==17   set p2.hla.sd=0
goto:eof

:ice.dec
set sdc=ice

if %p1.ice.sr%==0 set/a p1.%sdc%.sm=0
if %p1.ice.sr%==0 set/a p1.%sdc%.sc=0
if %p1.ice.sr%==0 set/a p1.%sdc%.se=0
if %p1.ice.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.ice.sr%==1 set/a p1.%sdc%.sm=4
if %p1.ice.sr%==1 set/a p1.%sdc%.sc=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==1 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==1   set p1.%sdc%.sd=Novice
if %p1.ice.sr%==2 set/a p1.%sdc%.sm=5
if %p1.ice.sr%==2 set/a p1.%sdc%.sc=(%p1.ice.sv% * 30) / 10
if %p1.ice.sr%==2 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==2   set p1.%sdc%.sd=F
if %p1.ice.sr%==3 set/a p1.%sdc%.sm=6
if %p1.ice.sr%==3 set/a p1.%sdc%.sc=(%p1.ice.sv% * 40) / 10
if %p1.ice.sr%==3 set/a p1.%sdc%.se=(%p1.ice.sv% * 20) / 10
if %p1.ice.sr%==3   set p1.%sdc%.sd=E
if %p1.ice.sr%==4 set/a p1.%sdc%.sm=7
if %p1.ice.sr%==4 set/a p1.%sdc%.sc=(%p1.ice.sv% * 50) / 10
if %p1.ice.sr%==4 set/a p1.%sdc%.se=(%p1.ice.sv% * 40) / 10
if %p1.ice.sr%==4   set p1.%sdc%.sd=D
if %p1.ice.sr%==5 set/a p1.%sdc%.sm=8
if %p1.ice.sr%==5 set/a p1.%sdc%.sc=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==5 set/a p1.%sdc%.se=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==5   set p1.%sdc%.sd=C
if %p1.ice.sr%==6 set/a p1.%sdc%.sm=9
if %p1.ice.sr%==6 set/a p1.%sdc%.sc=(%p1.ice.sv% * 60) / 10
if %p1.ice.sr%==6 set/a p1.%sdc%.se=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==6   set p1.%sdc%.sd=B
if %p1.ice.sr%==7 set/a p1.%sdc%.sm=10
if %p1.ice.sr%==7 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==7 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==7   set p1.%sdc%.sd=A
if %p1.ice.sr%==8 set/a p1.%sdc%.sm=11
if %p1.ice.sr%==8 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==8 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==8   set p1.%sdc%.sd=9
if %p1.ice.sr%==9 set/a p1.%sdc%.sm=12
if %p1.ice.sr%==9 set/a p1.%sdc%.sc=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==9 set/a p1.%sdc%.se=(%p1.ice.sv% * 140) / 10
if %p1.ice.sr%==9   set p1.%sdc%.sd=8
if %p1.ice.sr%==10 set/a p1.%sdc%.sm=14
if %p1.ice.sr%==10 set/a p1.%sdc%.sc=(%p1.ice.sv% * 120) / 10
if %p1.ice.sr%==10 set/a p1.%sdc%.se=(%p1.ice.sv% * 180) / 10
if %p1.ice.sr%==10   set p1.%sdc%.sd=7
if %p1.ice.sr%==11 set/a p1.%sdc%.sm=16
if %p1.ice.sr%==11 set/a p1.%sdc%.sc=(%p1.ice.sv% * 140) / 10
if %p1.ice.sr%==11 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==11   set p1.%sdc%.sd=6
if %p1.ice.sr%==12 set/a p1.%sdc%.sm=18
if %p1.ice.sr%==12 set/a p1.%sdc%.sc=(%p1.ice.sv% * 160) / 10
if %p1.ice.sr%==12 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==12   set p1.%sdc%.sd=5
if %p1.ice.sr%==13 set/a p1.%sdc%.sm=20
if %p1.ice.sr%==13 set/a p1.%sdc%.sc=(%p1.ice.sv% * 240) / 10
if %p1.ice.sr%==13 set/a p1.%sdc%.se=(%p1.ice.sv% * 200) / 10
if %p1.ice.sr%==13   set p1.%sdc%.sd=4
if %p1.ice.sr%==14 set/a p1.%sdc%.sm=24
if %p1.ice.sr%==14 set/a p1.%sdc%.sc=(%p1.ice.sv% * 80) / 10
if %p1.ice.sr%==14 set/a p1.%sdc%.se=(%p1.ice.sv% * 100) / 10
if %p1.ice.sr%==14   set p1.%sdc%.sd=3
if %p1.ice.sr%==15 set/a p1.%sdc%.sm=28
if %p1.ice.sr%==15 set/a p1.%sdc%.sc=(%p1.ice.sv% * 360) / 10
if %p1.ice.sr%==15 set/a p1.%sdc%.se=(%p1.ice.sv% * 300) / 10
if %p1.ice.sr%==15   set p1.%sdc%.sd=2
if %p1.ice.sr%==16 set/a p1.%sdc%.sm=34
if %p1.ice.sr%==16 set/a p1.%sdc%.sc=(%p1.ice.sv% * 480) / 10
if %p1.ice.sr%==16 set/a p1.%sdc%.se=(%p1.ice.sv% * 400) / 10
if %p1.ice.sr%==16   set p1.%sdc%.sd=1
if %p1.ice.sr%==17 set/a p1.%sdc%.sm=40
if %p1.ice.sr%==17 set/a p1.%sdc%.sc=0
if %p1.ice.sr%==17 set/a p1.%sdc%.se=0
if %p1.ice.sr%==17   set p1.%sdc%.sd=0

if %p2.ice.sr%==0 set/a p2.%sdc%.sm=0
if %p2.ice.sr%==0 set/a p2.%sdc%.sc=0
if %p2.ice.sr%==0 set/a p2.%sdc%.se=0
if %p2.ice.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.ice.sr%==1 set/a p2.%sdc%.sm=4
if %p2.ice.sr%==1 set/a p2.%sdc%.sc=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==1 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==1   set p2.%sdc%.sd=Novice
if %p2.ice.sr%==2 set/a p2.%sdc%.sm=5
if %p2.ice.sr%==2 set/a p2.%sdc%.sc=(%p2.ice.sv% * 30) / 10
if %p2.ice.sr%==2 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==2   set p2.%sdc%.sd=F
if %p2.ice.sr%==3 set/a p2.%sdc%.sm=6
if %p2.ice.sr%==3 set/a p2.%sdc%.sc=(%p2.ice.sv% * 40) / 10
if %p2.ice.sr%==3 set/a p2.%sdc%.se=(%p2.ice.sv% * 20) / 10
if %p2.ice.sr%==3   set p2.%sdc%.sd=E
if %p2.ice.sr%==4 set/a p2.%sdc%.sm=7
if %p2.ice.sr%==4 set/a p2.%sdc%.sc=(%p2.ice.sv% * 50) / 10
if %p2.ice.sr%==4 set/a p2.%sdc%.se=(%p2.ice.sv% * 40) / 10
if %p2.ice.sr%==4   set p2.%sdc%.sd=D
if %p2.ice.sr%==5 set/a p2.%sdc%.sm=8
if %p2.ice.sr%==5 set/a p2.%sdc%.sc=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==5 set/a p2.%sdc%.se=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==5   set p2.%sdc%.sd=C
if %p2.ice.sr%==6 set/a p2.%sdc%.sm=9
if %p2.ice.sr%==6 set/a p2.%sdc%.sc=(%p2.ice.sv% * 60) / 10
if %p2.ice.sr%==6 set/a p2.%sdc%.se=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==6   set p2.%sdc%.sd=B
if %p2.ice.sr%==7 set/a p2.%sdc%.sm=10
if %p2.ice.sr%==7 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==7 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==7   set p2.%sdc%.sd=A
if %p2.ice.sr%==8 set/a p2.%sdc%.sm=11
if %p2.ice.sr%==8 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==8 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==8   set p2.%sdc%.sd=9
if %p2.ice.sr%==9 set/a p2.%sdc%.sm=12
if %p2.ice.sr%==9 set/a p2.%sdc%.sc=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==9 set/a p2.%sdc%.se=(%p2.ice.sv% * 140) / 10
if %p2.ice.sr%==9   set p2.%sdc%.sd=8
if %p2.ice.sr%==10 set/a p2.%sdc%.sm=14
if %p2.ice.sr%==10 set/a p2.%sdc%.sc=(%p2.ice.sv% * 120) / 10
if %p2.ice.sr%==10 set/a p2.%sdc%.se=(%p2.ice.sv% * 180) / 10
if %p2.ice.sr%==10   set p2.%sdc%.sd=7
if %p2.ice.sr%==11 set/a p2.%sdc%.sm=16
if %p2.ice.sr%==11 set/a p2.%sdc%.sc=(%p2.ice.sv% * 140) / 10
if %p2.ice.sr%==11 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==11   set p2.%sdc%.sd=6
if %p2.ice.sr%==12 set/a p2.%sdc%.sm=18
if %p2.ice.sr%==12 set/a p2.%sdc%.sc=(%p2.ice.sv% * 160) / 10
if %p2.ice.sr%==12 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==12   set p2.%sdc%.sd=5
if %p2.ice.sr%==13 set/a p2.%sdc%.sm=20
if %p2.ice.sr%==13 set/a p2.%sdc%.sc=(%p2.ice.sv% * 240) / 10
if %p2.ice.sr%==13 set/a p2.%sdc%.se=(%p2.ice.sv% * 200) / 10
if %p2.ice.sr%==13   set p2.%sdc%.sd=4
if %p2.ice.sr%==14 set/a p2.%sdc%.sm=24
if %p2.ice.sr%==14 set/a p2.%sdc%.sc=(%p2.ice.sv% * 80) / 10
if %p2.ice.sr%==14 set/a p2.%sdc%.se=(%p2.ice.sv% * 100) / 10
if %p2.ice.sr%==14   set p2.%sdc%.sd=3
if %p2.ice.sr%==15 set/a p2.%sdc%.sm=28
if %p2.ice.sr%==15 set/a p2.%sdc%.sc=(%p2.ice.sv% * 360) / 10
if %p2.ice.sr%==15 set/a p2.%sdc%.se=(%p2.ice.sv% * 300) / 10
if %p2.ice.sr%==15   set p2.%sdc%.sd=2
if %p2.ice.sr%==16 set/a p2.%sdc%.sm=34
if %p2.ice.sr%==16 set/a p2.%sdc%.sc=(%p2.ice.sv% * 480) / 10
if %p2.ice.sr%==16 set/a p2.%sdc%.se=(%p2.ice.sv% * 400) / 10
if %p2.ice.sr%==16   set p2.%sdc%.sd=1
if %p2.ice.sr%==17 set/a p2.%sdc%.sm=40
if %p2.ice.sr%==17 set/a p2.%sdc%.sc=0
if %p2.ice.sr%==17 set/a p2.%sdc%.se=0
if %p2.ice.sr%==17   set p2.%sdc%.sd=0
goto:eof

:msh.dec
set sdc=msh
if %p1.msh.sr%==0 set/a p1.%sdc%.sm=0
if %p1.msh.sr%==0 set/a p1.%sdc%.sc=250
if %p1.msh.sr%==0 set/a p1.%sdc%.se=0
if %p1.msh.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.msh.sr%==1 set/a p1.%sdc%.sm=4
if %p1.msh.sr%==1 set/a p1.%sdc%.sc=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==1 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==1   set p1.%sdc%.sd=Novice
if %p1.msh.sr%==2 set/a p1.%sdc%.sm=5
if %p1.msh.sr%==2 set/a p1.%sdc%.sc=(%p1.msh.sv% * 30) / 10
if %p1.msh.sr%==2 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==2   set p1.%sdc%.sd=F
if %p1.msh.sr%==3 set/a p1.%sdc%.sm=6
if %p1.msh.sr%==3 set/a p1.%sdc%.sc=(%p1.msh.sv% * 40) / 10
if %p1.msh.sr%==3 set/a p1.%sdc%.se=(%p1.msh.sv% * 20) / 10
if %p1.msh.sr%==3   set p1.%sdc%.sd=E
if %p1.msh.sr%==4 set/a p1.%sdc%.sm=7
if %p1.msh.sr%==4 set/a p1.%sdc%.sc=(%p1.msh.sv% * 50) / 10
if %p1.msh.sr%==4 set/a p1.%sdc%.se=(%p1.msh.sv% * 40) / 10
if %p1.msh.sr%==4   set p1.%sdc%.sd=D
if %p1.msh.sr%==5 set/a p1.%sdc%.sm=8
if %p1.msh.sr%==5 set/a p1.%sdc%.sc=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==5 set/a p1.%sdc%.se=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==5   set p1.%sdc%.sd=C
if %p1.msh.sr%==6 set/a p1.%sdc%.sm=9
if %p1.msh.sr%==6 set/a p1.%sdc%.sc=(%p1.msh.sv% * 60) / 10
if %p1.msh.sr%==6 set/a p1.%sdc%.se=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==6   set p1.%sdc%.sd=B
if %p1.msh.sr%==7 set/a p1.%sdc%.sm=10
if %p1.msh.sr%==7 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==7 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==7   set p1.%sdc%.sd=A
if %p1.msh.sr%==8 set/a p1.%sdc%.sm=11
if %p1.msh.sr%==8 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==8 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==8   set p1.%sdc%.sd=9
if %p1.msh.sr%==9 set/a p1.%sdc%.sm=12
if %p1.msh.sr%==9 set/a p1.%sdc%.sc=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==9 set/a p1.%sdc%.se=(%p1.msh.sv% * 140) / 10
if %p1.msh.sr%==9   set p1.%sdc%.sd=8
if %p1.msh.sr%==10 set/a p1.%sdc%.sm=14
if %p1.msh.sr%==10 set/a p1.%sdc%.sc=(%p1.msh.sv% * 120) / 10
if %p1.msh.sr%==10 set/a p1.%sdc%.se=(%p1.msh.sv% * 180) / 10
if %p1.msh.sr%==10   set p1.%sdc%.sd=7
if %p1.msh.sr%==11 set/a p1.%sdc%.sm=16
if %p1.msh.sr%==11 set/a p1.%sdc%.sc=(%p1.msh.sv% * 140) / 10
if %p1.msh.sr%==11 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==11   set p1.%sdc%.sd=6
if %p1.msh.sr%==12 set/a p1.%sdc%.sm=18
if %p1.msh.sr%==12 set/a p1.%sdc%.sc=(%p1.msh.sv% * 160) / 10
if %p1.msh.sr%==12 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==12   set p1.%sdc%.sd=5
if %p1.msh.sr%==13 set/a p1.%sdc%.sm=20
if %p1.msh.sr%==13 set/a p1.%sdc%.sc=(%p1.msh.sv% * 240) / 10
if %p1.msh.sr%==13 set/a p1.%sdc%.se=(%p1.msh.sv% * 200) / 10
if %p1.msh.sr%==13   set p1.%sdc%.sd=4
if %p1.msh.sr%==14 set/a p1.%sdc%.sm=24
if %p1.msh.sr%==14 set/a p1.%sdc%.sc=(%p1.msh.sv% * 80) / 10
if %p1.msh.sr%==14 set/a p1.%sdc%.se=(%p1.msh.sv% * 100) / 10
if %p1.msh.sr%==14   set p1.%sdc%.sd=3
if %p1.msh.sr%==15 set/a p1.%sdc%.sm=28
if %p1.msh.sr%==15 set/a p1.%sdc%.sc=(%p1.msh.sv% * 360) / 10
if %p1.msh.sr%==15 set/a p1.%sdc%.se=(%p1.msh.sv% * 300) / 10
if %p1.msh.sr%==15   set p1.%sdc%.sd=2
if %p1.msh.sr%==16 set/a p1.%sdc%.sm=34
if %p1.msh.sr%==16 set/a p1.%sdc%.sc=(%p1.msh.sv% * 480) / 10
if %p1.msh.sr%==16 set/a p1.%sdc%.se=(%p1.msh.sv% * 400) / 10
if %p1.msh.sr%==16   set p1.%sdc%.sd=1
if %p1.msh.sr%==17 set/a p1.%sdc%.sm=40
if %p1.msh.sr%==17 set/a p1.%sdc%.sc=0
if %p1.msh.sr%==17 set/a p1.%sdc%.se=0
if %p1.msh.sr%==17   set p1.%sdc%.sd=0

if %p2.msh.sr%==0 set/a p2.%sdc%.sm=0
if %p2.msh.sr%==0 set/a p2.%sdc%.sc=250
if %p2.msh.sr%==0 set/a p2.%sdc%.se=0
if %p2.msh.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.msh.sr%==1 set/a p2.%sdc%.sm=4
if %p2.msh.sr%==1 set/a p2.%sdc%.sc=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==1 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==1   set p2.%sdc%.sd=Novice
if %p2.msh.sr%==2 set/a p2.%sdc%.sm=5
if %p2.msh.sr%==2 set/a p2.%sdc%.sc=(%p2.msh.sv% * 30) / 10
if %p2.msh.sr%==2 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==2   set p2.%sdc%.sd=F
if %p2.msh.sr%==3 set/a p2.%sdc%.sm=6
if %p2.msh.sr%==3 set/a p2.%sdc%.sc=(%p2.msh.sv% * 40) / 10
if %p2.msh.sr%==3 set/a p2.%sdc%.se=(%p2.msh.sv% * 20) / 10
if %p2.msh.sr%==3   set p2.%sdc%.sd=E
if %p2.msh.sr%==4 set/a p2.%sdc%.sm=7
if %p2.msh.sr%==4 set/a p2.%sdc%.sc=(%p2.msh.sv% * 50) / 10
if %p2.msh.sr%==4 set/a p2.%sdc%.se=(%p2.msh.sv% * 40) / 10
if %p2.msh.sr%==4   set p2.%sdc%.sd=D
if %p2.msh.sr%==5 set/a p2.%sdc%.sm=8
if %p2.msh.sr%==5 set/a p2.%sdc%.sc=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==5 set/a p2.%sdc%.se=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==5   set p2.%sdc%.sd=C
if %p2.msh.sr%==6 set/a p2.%sdc%.sm=9
if %p2.msh.sr%==6 set/a p2.%sdc%.sc=(%p2.msh.sv% * 60) / 10
if %p2.msh.sr%==6 set/a p2.%sdc%.se=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==6   set p2.%sdc%.sd=B
if %p2.msh.sr%==7 set/a p2.%sdc%.sm=10
if %p2.msh.sr%==7 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==7 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==7   set p2.%sdc%.sd=A
if %p2.msh.sr%==8 set/a p2.%sdc%.sm=11
if %p2.msh.sr%==8 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==8 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==8   set p2.%sdc%.sd=9
if %p2.msh.sr%==9 set/a p2.%sdc%.sm=12
if %p2.msh.sr%==9 set/a p2.%sdc%.sc=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==9 set/a p2.%sdc%.se=(%p2.msh.sv% * 140) / 10
if %p2.msh.sr%==9   set p2.%sdc%.sd=8
if %p2.msh.sr%==10 set/a p2.%sdc%.sm=14
if %p2.msh.sr%==10 set/a p2.%sdc%.sc=(%p2.msh.sv% * 120) / 10
if %p2.msh.sr%==10 set/a p2.%sdc%.se=(%p2.msh.sv% * 180) / 10
if %p2.msh.sr%==10   set p2.%sdc%.sd=7
if %p2.msh.sr%==11 set/a p2.%sdc%.sm=16
if %p2.msh.sr%==11 set/a p2.%sdc%.sc=(%p2.msh.sv% * 140) / 10
if %p2.msh.sr%==11 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==11   set p2.%sdc%.sd=6
if %p2.msh.sr%==12 set/a p2.%sdc%.sm=18
if %p2.msh.sr%==12 set/a p2.%sdc%.sc=(%p2.msh.sv% * 160) / 10
if %p2.msh.sr%==12 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==12   set p2.%sdc%.sd=5
if %p2.msh.sr%==13 set/a p2.%sdc%.sm=20
if %p2.msh.sr%==13 set/a p2.%sdc%.sc=(%p2.msh.sv% * 240) / 10
if %p2.msh.sr%==13 set/a p2.%sdc%.se=(%p2.msh.sv% * 200) / 10
if %p2.msh.sr%==13   set p2.%sdc%.sd=4
if %p2.msh.sr%==14 set/a p2.%sdc%.sm=24
if %p2.msh.sr%==14 set/a p2.%sdc%.sc=(%p2.msh.sv% * 80) / 10
if %p2.msh.sr%==14 set/a p2.%sdc%.se=(%p2.msh.sv% * 100) / 10
if %p2.msh.sr%==14   set p2.%sdc%.sd=3
if %p2.msh.sr%==15 set/a p2.%sdc%.sm=28
if %p2.msh.sr%==15 set/a p2.%sdc%.sc=(%p2.msh.sv% * 360) / 10
if %p2.msh.sr%==15 set/a p2.%sdc%.se=(%p2.msh.sv% * 300) / 10
if %p2.msh.sr%==15   set p2.%sdc%.sd=2
if %p2.msh.sr%==16 set/a p2.%sdc%.sm=34
if %p2.msh.sr%==16 set/a p2.%sdc%.sc=(%p2.msh.sv% * 480) / 10
if %p2.msh.sr%==16 set/a p2.%sdc%.se=(%p2.msh.sv% * 400) / 10
if %p2.msh.sr%==16   set p2.%sdc%.sd=1
if %p2.msh.sr%==17 set/a p2.%sdc%.sm=40
if %p2.msh.sr%==17 set/a p2.%sdc%.sc=0
if %p2.msh.sr%==17 set/a p2.%sdc%.se=0
if %p2.msh.sr%==17   set p2.%sdc%.sd=0
goto:eof

:hly.dec
set sdc=hly

if %p1.hly.sr%==0 set/a p1.%sdc%.sm=0
if %p1.hly.sr%==0 set/a p1.%sdc%.sc=400
if %p1.hly.sr%==0 set/a p1.%sdc%.se=0
if %p1.hly.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.hly.sr%==1 set/a p1.%sdc%.sm=4
if %p1.hly.sr%==1 set/a p1.%sdc%.sc=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==1 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==1   set p1.%sdc%.sd=Novice
if %p1.hly.sr%==2 set/a p1.%sdc%.sm=5
if %p1.hly.sr%==2 set/a p1.%sdc%.sc=(%p1.hly.sv% * 30) / 10
if %p1.hly.sr%==2 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==2   set p1.%sdc%.sd=F
if %p1.hly.sr%==3 set/a p1.%sdc%.sm=6
if %p1.hly.sr%==3 set/a p1.%sdc%.sc=(%p1.hly.sv% * 40) / 10
if %p1.hly.sr%==3 set/a p1.%sdc%.se=(%p1.hly.sv% * 20) / 10
if %p1.hly.sr%==3   set p1.%sdc%.sd=E
if %p1.hly.sr%==4 set/a p1.%sdc%.sm=7
if %p1.hly.sr%==4 set/a p1.%sdc%.sc=(%p1.hly.sv% * 50) / 10
if %p1.hly.sr%==4 set/a p1.%sdc%.se=(%p1.hly.sv% * 40) / 10
if %p1.hly.sr%==4   set p1.%sdc%.sd=D
if %p1.hly.sr%==5 set/a p1.%sdc%.sm=8
if %p1.hly.sr%==5 set/a p1.%sdc%.sc=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==5 set/a p1.%sdc%.se=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==5   set p1.%sdc%.sd=C
if %p1.hly.sr%==6 set/a p1.%sdc%.sm=9
if %p1.hly.sr%==6 set/a p1.%sdc%.sc=(%p1.hly.sv% * 60) / 10
if %p1.hly.sr%==6 set/a p1.%sdc%.se=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==6   set p1.%sdc%.sd=B
if %p1.hly.sr%==7 set/a p1.%sdc%.sm=10
if %p1.hly.sr%==7 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==7 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==7   set p1.%sdc%.sd=A
if %p1.hly.sr%==8 set/a p1.%sdc%.sm=11
if %p1.hly.sr%==8 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==8 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==8   set p1.%sdc%.sd=9
if %p1.hly.sr%==9 set/a p1.%sdc%.sm=12
if %p1.hly.sr%==9 set/a p1.%sdc%.sc=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==9 set/a p1.%sdc%.se=(%p1.hly.sv% * 140) / 10
if %p1.hly.sr%==9   set p1.%sdc%.sd=8
if %p1.hly.sr%==10 set/a p1.%sdc%.sm=14
if %p1.hly.sr%==10 set/a p1.%sdc%.sc=(%p1.hly.sv% * 120) / 10
if %p1.hly.sr%==10 set/a p1.%sdc%.se=(%p1.hly.sv% * 180) / 10
if %p1.hly.sr%==10   set p1.%sdc%.sd=7
if %p1.hly.sr%==11 set/a p1.%sdc%.sm=16
if %p1.hly.sr%==11 set/a p1.%sdc%.sc=(%p1.hly.sv% * 140) / 10
if %p1.hly.sr%==11 set/a p1.%sdc%.se=(%p1..sv% * 200) / 10
if %p1.hly.sr%==11   set p1.%sdc%.sd=6
if %p1.hly.sr%==12 set/a p1.%sdc%.sm=18
if %p1.hly.sr%==12 set/a p1.%sdc%.sc=(%p1.hly.sv% * 160) / 10
if %p1.hly.sr%==12 set/a p1.%sdc%.se=(%p1.hly.sv% * 200) / 10
if %p1.hly.sr%==12   set p1.%sdc%.sd=5
if %p1.hly.sr%==13 set/a p1.%sdc%.sm=20
if %p1.hly.sr%==13 set/a p1.%sdc%.sc=(%p1.hly.sv% * 240) / 10
if %p1.hly.sr%==13 set/a p1.%sdc%.se=(%p1.hly.sv% * 200) / 10
if %p1.hly.sr%==13   set p1.%sdc%.sd=4
if %p1.hly.sr%==14 set/a p1.%sdc%.sm=24
if %p1.hly.sr%==14 set/a p1.%sdc%.sc=(%p1.hly.sv% * 80) / 10
if %p1.hly.sr%==14 set/a p1.%sdc%.se=(%p1.hly.sv% * 100) / 10
if %p1.hly.sr%==14   set p1.%sdc%.sd=3
if %p1.hly.sr%==15 set/a p1.%sdc%.sm=28
if %p1.hly.sr%==15 set/a p1.%sdc%.sc=(%p1.hly.sv% * 360) / 10
if %p1.hly.sr%==15 set/a p1.%sdc%.se=(%p1.hly.sv% * 300) / 10
if %p1.hly.sr%==15   set p1.%sdc%.sd=2
if %p1.hly.sr%==16 set/a p1.%sdc%.sm=34
if %p1.hly.sr%==16 set/a p1.%sdc%.sc=(%p1.hly.sv% * 480) / 10
if %p1.hly.sr%==16 set/a p1.%sdc%.se=(%p1.hly.sv% * 400) / 10
if %p1.hly.sr%==16   set p1.%sdc%.sd=1
if %p1.hly.sr%==17 set/a p1.%sdc%.sm=40
if %p1.hly.sr%==17 set/a p1.%sdc%.sc=0
if %p1.hly.sr%==17 set/a p1.%sdc%.se=0
if %p1.hly.sr%==17   set p1.%sdc%.sd=0

if %p2.hly.sr%==0 set/a p2.%sdc%.sm=0
if %p2.hly.sr%==0 set/a p2.%sdc%.sc=400
if %p2.hly.sr%==0 set/a p2.%sdc%.se=0
if %p2.hly.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.hly.sr%==1 set/a p2.%sdc%.sm=4
if %p2.hly.sr%==1 set/a p2.%sdc%.sc=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==1 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==1   set p2.%sdc%.sd=Novice
if %p2.hly.sr%==2 set/a p2.%sdc%.sm=5
if %p2.hly.sr%==2 set/a p2.%sdc%.sc=(%p2.hly.sv% * 30) / 10
if %p2.hly.sr%==2 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==2   set p2.%sdc%.sd=F
if %p2.hly.sr%==3 set/a p2.%sdc%.sm=6
if %p2.hly.sr%==3 set/a p2.%sdc%.sc=(%p2.hly.sv% * 40) / 10
if %p2.hly.sr%==3 set/a p2.%sdc%.se=(%p2.hly.sv% * 20) / 10
if %p2.hly.sr%==3   set p2.%sdc%.sd=E
if %p2.hly.sr%==4 set/a p2.%sdc%.sm=7
if %p2.hly.sr%==4 set/a p2.%sdc%.sc=(%p2.hly.sv% * 50) / 10
if %p2.hly.sr%==4 set/a p2.%sdc%.se=(%p2.hly.sv% * 40) / 10
if %p2.hly.sr%==4   set p2.%sdc%.sd=D
if %p2.hly.sr%==5 set/a p2.%sdc%.sm=8
if %p2.hly.sr%==5 set/a p2.%sdc%.sc=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==5 set/a p2.%sdc%.se=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==5   set p2.%sdc%.sd=C
if %p2.hly.sr%==6 set/a p2.%sdc%.sm=9
if %p2.hly.sr%==6 set/a p2.%sdc%.sc=(%p2.hly.sv% * 60) / 10
if %p2.hly.sr%==6 set/a p2.%sdc%.se=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==6   set p2.%sdc%.sd=B
if %p2.hly.sr%==7 set/a p2.%sdc%.sm=10
if %p2.hly.sr%==7 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==7 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==7   set p2.%sdc%.sd=A
if %p2.hly.sr%==8 set/a p2.%sdc%.sm=11
if %p2.hly.sr%==8 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==8 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==8   set p2.%sdc%.sd=9
if %p2.hly.sr%==9 set/a p2.%sdc%.sm=12
if %p2.hly.sr%==9 set/a p2.%sdc%.sc=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==9 set/a p2.%sdc%.se=(%p2.hly.sv% * 140) / 10
if %p2.hly.sr%==9   set p2.%sdc%.sd=8
if %p2.hly.sr%==10 set/a p2.%sdc%.sm=14
if %p2.hly.sr%==10 set/a p2.%sdc%.sc=(%p2.hly.sv% * 120) / 10
if %p2.hly.sr%==10 set/a p2.%sdc%.se=(%p2.hly.sv% * 180) / 10
if %p2.hly.sr%==10   set p2.%sdc%.sd=7
if %p2.hly.sr%==11 set/a p2.%sdc%.sm=16
if %p2.hly.sr%==11 set/a p2.%sdc%.sc=(%p2.hly.sv% * 140) / 10
if %p2.hly.sr%==11 set/a p2.%sdc%.se=(%p2..sv% * 200) / 10
if %p2.hly.sr%==11   set p2.%sdc%.sd=6
if %p2.hly.sr%==12 set/a p2.%sdc%.sm=18
if %p2.hly.sr%==12 set/a p2.%sdc%.sc=(%p2.hly.sv% * 160) / 10
if %p2.hly.sr%==12 set/a p2.%sdc%.se=(%p2.hly.sv% * 200) / 10
if %p2.hly.sr%==12   set p2.%sdc%.sd=5
if %p2.hly.sr%==13 set/a p2.%sdc%.sm=20
if %p2.hly.sr%==13 set/a p2.%sdc%.sc=(%p2.hly.sv% * 240) / 10
if %p2.hly.sr%==13 set/a p2.%sdc%.se=(%p2.hly.sv% * 200) / 10
if %p2.hly.sr%==13   set p2.%sdc%.sd=4
if %p2.hly.sr%==14 set/a p2.%sdc%.sm=24
if %p2.hly.sr%==14 set/a p2.%sdc%.sc=(%p2.hly.sv% * 80) / 10
if %p2.hly.sr%==14 set/a p2.%sdc%.se=(%p2.hly.sv% * 100) / 10
if %p2.hly.sr%==14   set p2.%sdc%.sd=3
if %p2.hly.sr%==15 set/a p2.%sdc%.sm=28
if %p2.hly.sr%==15 set/a p2.%sdc%.sc=(%p2.hly.sv% * 360) / 10
if %p2.hly.sr%==15 set/a p2.%sdc%.se=(%p2.hly.sv% * 300) / 10
if %p2.hly.sr%==15   set p2.%sdc%.sd=2
if %p2.hly.sr%==16 set/a p2.%sdc%.sm=34
if %p2.hly.sr%==16 set/a p2.%sdc%.sc=(%p2.hly.sv% * 480) / 10
if %p2.hly.sr%==16 set/a p2.%sdc%.se=(%p2.hly.sv% * 400) / 10
if %p2.hly.sr%==16   set p2.%sdc%.sd=1
if %p2.hly.sr%==17 set/a p2.%sdc%.sm=40
if %p2.hly.sr%==17 set/a p2.%sdc%.sc=0
if %p2.hly.sr%==17 set/a p2.%sdc%.se=0
if %p2.hly.sr%==17   set p2.%sdc%.sd=0
goto:eof

:gen.dec
set sdc=gen
if %p1.gen.sr%==0 set/a p1.%sdc%.sm=0
if %p1.gen.sr%==0 set/a p1.%sdc%.sc=800
if %p1.gen.sr%==0 set/a p1.%sdc%.se=0
if %p1.gen.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.gen.sr%==1 set/a p1.%sdc%.sm=4
if %p1.gen.sr%==1 set/a p1.%sdc%.sc=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==1 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==1   set p1.%sdc%.sd=Novice
if %p1.gen.sr%==2 set/a p1.%sdc%.sm=5
if %p1.gen.sr%==2 set/a p1.%sdc%.sc=(%p1.gen.sv% * 30) / 10
if %p1.gen.sr%==2 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==2   set p1.%sdc%.sd=F
if %p1.gen.sr%==3 set/a p1.%sdc%.sm=6
if %p1.gen.sr%==3 set/a p1.%sdc%.sc=(%p1.gen.sv% * 40) / 10
if %p1.gen.sr%==3 set/a p1.%sdc%.se=(%p1.gen.sv% * 20) / 10
if %p1.gen.sr%==3   set p1.%sdc%.sd=E
if %p1.gen.sr%==4 set/a p1.%sdc%.sm=7
if %p1.gen.sr%==4 set/a p1.%sdc%.sc=(%p1.gen.sv% * 50) / 10
if %p1.gen.sr%==4 set/a p1.%sdc%.se=(%p1.gen.sv% * 40) / 10
if %p1.gen.sr%==4   set p1.%sdc%.sd=D
if %p1.gen.sr%==5 set/a p1.%sdc%.sm=8
if %p1.gen.sr%==5 set/a p1.%sdc%.sc=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==5 set/a p1.%sdc%.se=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==5   set p1.%sdc%.sd=C
if %p1.gen.sr%==6 set/a p1.%sdc%.sm=9
if %p1.gen.sr%==6 set/a p1.%sdc%.sc=(%p1.gen.sv% * 60) / 10
if %p1.gen.sr%==6 set/a p1.%sdc%.se=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==6   set p1.%sdc%.sd=B
if %p1.gen.sr%==7 set/a p1.%sdc%.sm=10
if %p1.gen.sr%==7 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==7 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==7   set p1.%sdc%.sd=A
if %p1.gen.sr%==8 set/a p1.%sdc%.sm=11
if %p1.gen.sr%==8 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==8 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==8   set p1.%sdc%.sd=9
if %p1.gen.sr%==9 set/a p1.%sdc%.sm=12
if %p1.gen.sr%==9 set/a p1.%sdc%.sc=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==9 set/a p1.%sdc%.se=(%p1.gen.sv% * 140) / 10
if %p1.gen.sr%==9   set p1.%sdc%.sd=8
if %p1.gen.sr%==10 set/a p1.%sdc%.sm=14
if %p1.gen.sr%==10 set/a p1.%sdc%.sc=(%p1.gen.sv% * 120) / 10
if %p1.gen.sr%==10 set/a p1.%sdc%.se=(%p1.gen.sv% * 180) / 10
if %p1.gen.sr%==10   set p1.%sdc%.sd=7
if %p1.gen.sr%==11 set/a p1.%sdc%.sm=16
if %p1.gen.sr%==11 set/a p1.%sdc%.sc=(%p1.gen.sv% * 140) / 10
if %p1.gen.sr%==11 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==11   set p1.%sdc%.sd=6
if %p1.gen.sr%==12 set/a p1.%sdc%.sm=18
if %p1.gen.sr%==12 set/a p1.%sdc%.sc=(%p1.gen.sv% * 160) / 10
if %p1.gen.sr%==12 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==12   set p1.%sdc%.sd=5
if %p1.gen.sr%==13 set/a p1.%sdc%.sm=20
if %p1.gen.sr%==13 set/a p1.%sdc%.sc=(%p1.gen.sv% * 240) / 10
if %p1.gen.sr%==13 set/a p1.%sdc%.se=(%p1.gen.sv% * 200) / 10
if %p1.gen.sr%==13   set p1.%sdc%.sd=4
if %p1.gen.sr%==14 set/a p1.%sdc%.sm=24
if %p1.gen.sr%==14 set/a p1.%sdc%.sc=(%p1.gen.sv% * 80) / 10
if %p1.gen.sr%==14 set/a p1.%sdc%.se=(%p1.gen.sv% * 100) / 10
if %p1.gen.sr%==14   set p1.%sdc%.sd=3
if %p1.gen.sr%==15 set/a p1.%sdc%.sm=28
if %p1.gen.sr%==15 set/a p1.%sdc%.sc=(%p1.gen.sv% * 360) / 10
if %p1.gen.sr%==15 set/a p1.%sdc%.se=(%p1.gen.sv% * 300) / 10
if %p1.gen.sr%==15   set p1.%sdc%.sd=2
if %p1.gen.sr%==16 set/a p1.%sdc%.sm=34
if %p1.gen.sr%==16 set/a p1.%sdc%.sc=(%p1.gen.sv% * 480) / 10
if %p1.gen.sr%==16 set/a p1.%sdc%.se=(%p1.gen.sv% * 400) / 10
if %p1.gen.sr%==16   set p1.%sdc%.sd=1
if %p1.gen.sr%==17 set/a p1.%sdc%.sm=40
if %p1.gen.sr%==17 set/a p1.%sdc%.sc=0
if %p1.gen.sr%==17 set/a p1.%sdc%.se=0
if %p1.gen.sr%==17   set p1.%sdc%.sd=0
::p2
if %p2.gen.sr%==0 set/a p2.%sdc%.sm=0
if %p2.gen.sr%==0 set/a p2.%sdc%.sc=800
if %p2.gen.sr%==0 set/a p2.%sdc%.se=0
if %p2.gen.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.gen.sr%==1 set/a p2.%sdc%.sm=4
if %p2.gen.sr%==1 set/a p2.%sdc%.sc=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==1 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==1   set p2.%sdc%.sd=Novice
if %p2.gen.sr%==2 set/a p2.%sdc%.sm=5
if %p2.gen.sr%==2 set/a p2.%sdc%.sc=(%p2.gen.sv% * 30) / 10
if %p2.gen.sr%==2 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==2   set p2.%sdc%.sd=F
if %p2.gen.sr%==3 set/a p2.%sdc%.sm=6
if %p2.gen.sr%==3 set/a p2.%sdc%.sc=(%p2.gen.sv% * 40) / 10
if %p2.gen.sr%==3 set/a p2.%sdc%.se=(%p2.gen.sv% * 20) / 10
if %p2.gen.sr%==3   set p2.%sdc%.sd=E
if %p2.gen.sr%==4 set/a p2.%sdc%.sm=7
if %p2.gen.sr%==4 set/a p2.%sdc%.sc=(%p2.gen.sv% * 50) / 10
if %p2.gen.sr%==4 set/a p2.%sdc%.se=(%p2.gen.sv% * 40) / 10
if %p2.gen.sr%==4   set p2.%sdc%.sd=D
if %p2.gen.sr%==5 set/a p2.%sdc%.sm=8
if %p2.gen.sr%==5 set/a p2.%sdc%.sc=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==5 set/a p2.%sdc%.se=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==5   set p2.%sdc%.sd=C
if %p2.gen.sr%==6 set/a p2.%sdc%.sm=9
if %p2.gen.sr%==6 set/a p2.%sdc%.sc=(%p2.gen.sv% * 60) / 10
if %p2.gen.sr%==6 set/a p2.%sdc%.se=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==6   set p2.%sdc%.sd=B
if %p2.gen.sr%==7 set/a p2.%sdc%.sm=10
if %p2.gen.sr%==7 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==7 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==7   set p2.%sdc%.sd=A
if %p2.gen.sr%==8 set/a p2.%sdc%.sm=11
if %p2.gen.sr%==8 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==8 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==8   set p2.%sdc%.sd=9
if %p2.gen.sr%==9 set/a p2.%sdc%.sm=12
if %p2.gen.sr%==9 set/a p2.%sdc%.sc=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==9 set/a p2.%sdc%.se=(%p2.gen.sv% * 140) / 10
if %p2.gen.sr%==9   set p2.%sdc%.sd=8
if %p2.gen.sr%==10 set/a p2.%sdc%.sm=14
if %p2.gen.sr%==10 set/a p2.%sdc%.sc=(%p2.gen.sv% * 120) / 10
if %p2.gen.sr%==10 set/a p2.%sdc%.se=(%p2.gen.sv% * 180) / 10
if %p2.gen.sr%==10   set p2.%sdc%.sd=7
if %p2.gen.sr%==11 set/a p2.%sdc%.sm=16
if %p2.gen.sr%==11 set/a p2.%sdc%.sc=(%p2.gen.sv% * 140) / 10
if %p2.gen.sr%==11 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==11   set p2.%sdc%.sd=6
if %p2.gen.sr%==12 set/a p2.%sdc%.sm=18
if %p2.gen.sr%==12 set/a p2.%sdc%.sc=(%p2.gen.sv% * 160) / 10
if %p2.gen.sr%==12 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==12   set p2.%sdc%.sd=5
if %p2.gen.sr%==13 set/a p2.%sdc%.sm=20
if %p2.gen.sr%==13 set/a p2.%sdc%.sc=(%p2.gen.sv% * 240) / 10
if %p2.gen.sr%==13 set/a p2.%sdc%.se=(%p2.gen.sv% * 200) / 10
if %p2.gen.sr%==13   set p2.%sdc%.sd=4
if %p2.gen.sr%==14 set/a p2.%sdc%.sm=24
if %p2.gen.sr%==14 set/a p2.%sdc%.sc=(%p2.gen.sv% * 80) / 10
if %p2.gen.sr%==14 set/a p2.%sdc%.se=(%p2.gen.sv% * 100) / 10
if %p2.gen.sr%==14   set p2.%sdc%.sd=3
if %p2.gen.sr%==15 set/a p2.%sdc%.sm=28
if %p2.gen.sr%==15 set/a p2.%sdc%.sc=(%p2.gen.sv% * 360) / 10
if %p2.gen.sr%==15 set/a p2.%sdc%.se=(%p2.gen.sv% * 300) / 10
if %p2.gen.sr%==15   set p2.%sdc%.sd=2
if %p2.gen.sr%==16 set/a p2.%sdc%.sm=34
if %p2.gen.sr%==16 set/a p2.%sdc%.sc=(%p2.gen.sv% * 480) / 10
if %p2.gen.sr%==16 set/a p2.%sdc%.se=(%p2.gen.sv% * 400) / 10
if %p2.gen.sr%==16   set p2.%sdc%.sd=1
if %p2.gen.sr%==17 set/a p2.%sdc%.sm=40
if %p2.gen.sr%==17 set/a p2.%sdc%.sc=0
if %p2.gen.sr%==17 set/a p2.%sdc%.se=0
if %p2.gen.sr%==17   set p2.%sdc%.sd=0
goto:eof

:llc.dec
set sdc=llc
if %p1.llc.sr%==0 set/a p1.%sdc%.sm=0
if %p1.llc.sr%==0 set/a p1.%sdc%.sc=0
if %p1.llc.sr%==0 set/a p1.%sdc%.se=0
if %p1.llc.sr%==0   set p1.%sdc%.sd=Not Learnt
if %p1.llc.sr%==1 set/a p1.%sdc%.sm=4
if %p1.llc.sr%==1 set/a p1.%sdc%.sc=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==1 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==1   set p1.%sdc%.sd=Novice
if %p1.llc.sr%==2 set/a p1.%sdc%.sm=5
if %p1.llc.sr%==2 set/a p1.%sdc%.sc=(%p1.llc.sv% * 30) / 10
if %p1.llc.sr%==2 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==2   set p1.%sdc%.sd=F
if %p1.llc.sr%==3 set/a p1.%sdc%.sm=6
if %p1.llc.sr%==3 set/a p1.%sdc%.sc=(%p1.llc.sv% * 40) / 10
if %p1.llc.sr%==3 set/a p1.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p1.llc.sr%==3   set p1.%sdc%.sd=E
if %p1.llc.sr%==4 set/a p1.%sdc%.sm=7
if %p1.llc.sr%==4 set/a p1.%sdc%.sc=(%p1.llc.sv% * 50) / 10
if %p1.llc.sr%==4 set/a p1.%sdc%.se=(%p1.llc.sv% * 40) / 10
if %p1.llc.sr%==4   set p1.%sdc%.sd=D
if %p1.llc.sr%==5 set/a p1.%sdc%.sm=8
if %p1.llc.sr%==5 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==5 set/a p1.%sdc%.se=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==5   set p1.%sdc%.sd=C
if %p1.llc.sr%==6 set/a p1.%sdc%.sm=9
if %p1.llc.sr%==6 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p1.llc.sr%==6 set/a p1.%sdc%.se=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==6   set p1.%sdc%.sd=B
if %p1.llc.sr%==7 set/a p1.%sdc%.sm=10
if %p1.llc.sr%==7 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==7 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==7   set p1.%sdc%.sd=A
if %p1.llc.sr%==8 set/a p1.%sdc%.sm=11
if %p1.llc.sr%==8 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==8 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==8   set p1.%sdc%.sd=9
if %p1.llc.sr%==9 set/a p1.%sdc%.sm=12
if %p1.llc.sr%==9 set/a p1.%sdc%.sc=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==9 set/a p1.%sdc%.se=(%p1.llc.sv% * 140) / 10
if %p1.llc.sr%==9   set p1.%sdc%.sd=8
if %p1.llc.sr%==10 set/a p1.%sdc%.sm=14
if %p1.llc.sr%==10 set/a p1.%sdc%.sc=(%p1.llc.sv% * 120) / 10
if %p1.llc.sr%==10 set/a p1.%sdc%.se=(%p1.llc.sv% * 180) / 10
if %p1.llc.sr%==10   set p1.%sdc%.sd=7
if %p1.llc.sr%==11 set/a p1.%sdc%.sm=16
if %p1.llc.sr%==11 set/a p1.%sdc%.sc=(%p1.llc.sv% * 140) / 10
if %p1.llc.sr%==11 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==11   set p1.%sdc%.sd=6
if %p1.llc.sr%==12 set/a p1.%sdc%.sm=18
if %p1.llc.sr%==12 set/a p1.%sdc%.sc=(%p1.llc.sv% * 160) / 10
if %p1.llc.sr%==12 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==12   set p1.%sdc%.sd=5
if %p1.llc.sr%==13 set/a p1.%sdc%.sm=20
if %p1.llc.sr%==13 set/a p1.%sdc%.sc=(%p1.llc.sv% * 240) / 10
if %p1.llc.sr%==13 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p1.llc.sr%==13   set p1.%sdc%.sd=4
if %p1.llc.sr%==14 set/a p1.%sdc%.sm=24
if %p1.llc.sr%==14 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p1.llc.sr%==14 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p1.llc.sr%==14   set p1.%sdc%.sd=3
if %p1.llc.sr%==15 set/a p1.%sdc%.sm=28
if %p1.llc.sr%==15 set/a p1.%sdc%.sc=(%p1.llc.sv% * 360) / 10
if %p1.llc.sr%==15 set/a p1.%sdc%.se=(%p1.llc.sv% * 300) / 10
if %p1.llc.sr%==15   set p1.%sdc%.sd=2
if %p1.llc.sr%==16 set/a p1.%sdc%.sm=34
if %p1.llc.sr%==16 set/a p1.%sdc%.sc=(%p1.llc.sv% * 480) / 10
if %p1.llc.sr%==16 set/a p1.%sdc%.se=(%p1.llc.sv% * 400) / 10
if %p1.llc.sr%==16   set p1.%sdc%.sd=1
if %p1.llc.sr%==17 set/a p1.%sdc%.sm=40
if %p1.llc.sr%==17 set/a p1.%sdc%.sc=0
if %p1.llc.sr%==17 set/a p1.%sdc%.se=0
if %p1.llc.sr%==17   set p1.%sdc%.sd=0
::p2
if %p2.llc.sr%==0 set/a p2.%sdc%.sm=0
if %p2.llc.sr%==0 set/a p2.%sdc%.sc=0
if %p2.llc.sr%==0 set/a p2.%sdc%.se=0
if %p2.llc.sr%==0   set p2.%sdc%.sd=Not Learnt
if %p2.llc.sr%==1 set/a p2.%sdc%.sm=4
if %p2.llc.sr%==1 set/a p2.%sdc%.sc=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==1 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==1   set p2.%sdc%.sd=Novice
if %p2.llc.sr%==2 set/a p2.%sdc%.sm=5
if %p2.llc.sr%==2 set/a p2.%sdc%.sc=(%p1.llc.sv% * 30) / 10
if %p2.llc.sr%==2 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==2   set p2.%sdc%.sd=F
if %p2.llc.sr%==3 set/a p2.%sdc%.sm=6
if %p2.llc.sr%==3 set/a p2.%sdc%.sc=(%p1.llc.sv% * 40) / 10
if %p2.llc.sr%==3 set/a p2.%sdc%.se=(%p1.llc.sv% * 20) / 10
if %p2.llc.sr%==3   set p2.%sdc%.sd=E
if %p2.llc.sr%==4 set/a p.%sdc%.sm=7
if %p2.llc.sr%==4 set/a p1.%sdc%.sc=(%p1.llc.sv% * 50) / 10
if %p2.llc.sr%==4 set/a p1.%sdc%.se=(%p1.llc.sv% * 40) / 10
if %p2.llc.sr%==4   set p1.%sdc%.sd=D
if %p2.llc.sr%==5 set/a p1.%sdc%.sm=8
if %p2.llc.sr%==5 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==5 set/a p1.%sdc%.se=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==5   set p1.%sdc%.sd=C
if %p2.llc.sr%==6 set/a p1.%sdc%.sm=9
if %p2.llc.sr%==6 set/a p1.%sdc%.sc=(%p1.llc.sv% * 60) / 10
if %p2.llc.sr%==6 set/a p1.%sdc%.se=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==6   set p1.%sdc%.sd=B
if %p2.llc.sr%==7 set/a p1.%sdc%.sm=10
if %p2.llc.sr%==7 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==7 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==7   set p1.%sdc%.sd=A
if %p2.llc.sr%==8 set/a p1.%sdc%.sm=11
if %p2.llc.sr%==8 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==8 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==8   set p1.%sdc%.sd=9
if %p2.llc.sr%==9 set/a p1.%sdc%.sm=12
if %p2.llc.sr%==9 set/a p1.%sdc%.sc=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==9 set/a p1.%sdc%.se=(%p1.llc.sv% * 140) / 10
if %p2.llc.sr%==9   set p1.%sdc%.sd=8
if %p2.llc.sr%==10 set/a p1.%sdc%.sm=14
if %p2.llc.sr%==10 set/a p1.%sdc%.sc=(%p1.llc.sv% * 120) / 10
if %p2.llc.sr%==10 set/a p1.%sdc%.se=(%p1.llc.sv% * 180) / 10
if %p2.llc.sr%==10   set p1.%sdc%.sd=7
if %p2.llc.sr%==11 set/a p1.%sdc%.sm=16
if %p2.llc.sr%==11 set/a p1.%sdc%.sc=(%p1.llc.sv% * 140) / 10
if %p2.llc.sr%==11 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==11   set p1.%sdc%.sd=6
if %p2.llc.sr%==12 set/a p1.%sdc%.sm=18
if %p2.llc.sr%==12 set/a p1.%sdc%.sc=(%p1.llc.sv% * 160) / 10
if %p2.llc.sr%==12 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==12   set p1.%sdc%.sd=5
if %p2.llc.sr%==13 set/a p1.%sdc%.sm=20
if %p2.llc.sr%==13 set/a p1.%sdc%.sc=(%p1.llc.sv% * 240) / 10
if %p2.llc.sr%==13 set/a p1.%sdc%.se=(%p1.llc.sv% * 200) / 10
if %p2.llc.sr%==13   set p1.%sdc%.sd=4
if %p2.llc.sr%==14 set/a p1.%sdc%.sm=24
if %p2.llc.sr%==14 set/a p1.%sdc%.sc=(%p1.llc.sv% * 80) / 10
if %p2.llc.sr%==14 set/a p1.%sdc%.se=(%p1.llc.sv% * 100) / 10
if %p2.llc.sr%==14   set p1.%sdc%.sd=3
if %p2.llc.sr%==15 set/a p1.%sdc%.sm=28
if %p2.llc.sr%==15 set/a p1.%sdc%.sc=(%p1.llc.sv% * 360) / 10
if %p2.llc.sr%==15 set/a p1.%sdc%.se=(%p1.llc.sv% * 300) / 10
if %p2.llc.sr%==15   set p1.%sdc%.sd=2
if %p2.llc.sr%==16 set/a p1.%sdc%.sm=34
if %p2.llc.sr%==16 set/a p1.%sdc%.sc=(%p1.llc.sv% * 480) / 10
if %p2.llc.sr%==16 set/a p1.%sdc%.se=(%p1.llc.sv% * 400) / 10
if %p2.llc.sr%==16   set p1.%sdc%.sd=1
if %p2.llc.sr%==17 set/a p1.%sdc%.sm=40
if %p2.llc.sr%==17 set/a p1.%sdc%.sc=0
if %p2.llc.sr%==17 set/a p1.%sdc%.se=0
if %p2.llc.sr%==17   set p1.%sdc%.sd=0
goto:eof

 
:lbr.dec

if %p1.lbr.sr%==0 set/a p1.lbr.sm=0 
if %p1.lbr.sr%==0 set/a p1.lbr.sc=200
if %p1.lbr.sr%==0 set/a p1.lbr.se=0 
if %p1.lbr.sr%==0   set p1.lbr.sd=Not Learnt 
if %p1.lbr.sr%==1 set/a p1.lbr.sm=4 
if %p1.lbr.sr%==1 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==1 set/a p1.lbr.se=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==1 set   p1.lbr.sd=Novice 
if %p1.lbr.sr%==2 set/a p1.lbr.sm=5 
if %p1.lbr.sr%==2 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==2 set/a p1.lbr.se=(%p1.lbr.sv% * 30) / 10 
if %p1.lbr.sr%==2 set   p1.lbr.sd=F 
if %p1.lbr.sr%==3 set/a p1.lbr.sm=6 
if %p1.lbr.sr%==3 set/a p1.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p1.lbr.sr%==3 set/a p1.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p1.lbr.sr%==3 set   p1.lbr.sd=E 
if %p1.lbr.sr%==4 set/a p1.lbr.sm=7 
if %p1.lbr.sr%==4 set/a p1.lbr.sc=(%p1.lbr.sv% * 50) / 10 
if %p1.lbr.sr%==4 set/a p1.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p1.lbr.sr%==4 set   p1.lbr.sd=D 
if %p1.lbr.sr%==5 set/a p1.lbr.sm=8 
if %p1.lbr.sr%==5 set/a p1.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==5 set/a p1.lbr.se=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==5 set   p1.lbr.sd=C 
if %p1.lbr.sr%==6 set/a p1.lbr.sm=9 
if %p1.lbr.sr%==6 set/a p1.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p1.lbr.sr%==6 set/a p1.lbr.se=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==6 set   p1.lbr.sd=B 
if %p1.lbr.sr%==7 set/a p1.lbr.sm=10 
if %p1.lbr.sr%==7 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==7 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==7 set   p1.lbr.sd=A 
if %p1.lbr.sr%==8 set/a p1.lbr.sm=11 
if %p1.lbr.sr%==8 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==8 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==8 set   p1.lbr.sd=9 
if %p1.lbr.sr%==9 set/a p1.lbr.sm=12 
if %p1.lbr.sr%==9 set/a p1.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p1.lbr.sr%==9 set/a p1.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==9 set   p1.lbr.sd=8 
if %p1.lbr.sr%==10 set/a p1.lbr.sm=14 
if %p1.lbr.sr%==10 set/a p1.lbr.sc=(%p1.lbr.sv% * 100) / 10 
if %p1.lbr.sr%==10 set/a p1.lbr.se=(%p1.lbr.sv% * 140) / 10 
if %p1.lbr.sr%==10 set   p1.lbr.sd=7 
if %p1.lbr.sr%==11 set/a p1.lbr.sm=16 
if %p1.lbr.sr%==11 set/a p1.lbr.sc=(%p1.lbr.sv% * 120) / 10 
if %p1.lbr.sr%==11 set/a p1.lbr.se=(%p1.lbr.sv% * 180) / 10 
if %p1.lbr.sr%==11 set   p1.lbr.sd=6 
if %p1.lbr.sr%==12 set/a p1.lbr.sm=18 
if %p1.lbr.sr%==12 set/a p1.lbr.sc=(%p1.lbr.sv% * 140) / 10 
if %p1.lbr.sr%==12 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==12 set   p1.lbr.sd=5 
if %p1.lbr.sr%==13 set/a p1.lbr.sm=20 
if %p1.lbr.sr%==13 set/a p1.lbr.sc=(%p1.lbr.sv% * 160) / 10 
if %p1.lbr.sr%==13 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==13 set   p1.lbr.sd=4 
if %p1.lbr.sr%==14 set/a p1.lbr.sm=24 
if %p1.lbr.sr%==14 set/a p1.lbr.sc=(%p1.lbr.sv% * 240) / 10 
if %p1.lbr.sr%==14 set/a p1.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p1.lbr.sr%==14 set   p1.lbr.sd=3 
if %p1.lbr.sr%==15 set/a p1.lbr.sm=28 
if %p1.lbr.sr%==15 set/a p1.lbr.sc=(%p1.lbr.sv% * 360) / 10 
if %p1.lbr.sr%==15 set/a p1.lbr.se=(%p1.lbr.sv% * 300) / 10 
if %p1.lbr.sr%==15 set   p1.lbr.sd=2 
if %p1.lbr.sr%==16 set/a p1.lbr.sm=34 
if %p1.lbr.sr%==16 set/a p1.lbr.sc=(%p1.lbr.sv% * 480) / 10 
if %p1.lbr.sr%==16 set/a p1.lbr.se=(%p1.lbr.sv% * 400) / 10 
if %p1.lbr.sr%==16 set   p1.lbr.sd=1 
if %p1.lbr.sr%==17 set/a p1.lbr.sm=40 
if %p1.lbr.sr%==17 set/a p1.lbr.sc=0 
if %p1.lbr.sr%==17 set/a p1.lbr.se=0 
if %p1.lbr.sr%==17   set p1.lbr.sd=0 
 
 
if %p2.lbr.sr%==0 set/a p2.lbr.sm=0 
if %p2.lbr.sr%==0 set/a p2.lbr.sc=200
if %p2.lbr.sr%==0 set/a p2.lbr.se=0 
if %p2.lbr.sr%==0   set p2.lbr.sd=Not Learnt 
if %p2.lbr.sr%==1 set/a p2.lbr.sm=4 
if %p2.lbr.sr%==1 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==1 set/a p2.lbr.se=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==1 set   p2.lbr.sd=Novice 
if %p2.lbr.sr%==2 set/a p2.lbr.sm=5 
if %p2.lbr.sr%==2 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==2 set/a p2.lbr.se=(%p1.lbr.sv% * 30) / 10 
if %p2.lbr.sr%==2 set   p2.lbr.sd=F 
if %p2.lbr.sr%==3 set/a p2.lbr.sm=6 
if %p2.lbr.sr%==3 set/a p2.lbr.sc=(%p1.lbr.sv% * 20) / 10 
if %p2.lbr.sr%==3 set/a p2.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p2.lbr.sr%==3 set   p2.lbr.sd=E 
if %p2.lbr.sr%==4 set/a p2.lbr.sm=7 
if %p2.lbr.sr%==4 set/a p2.lbr.sc=(%p1.lbr.sv% * 50) / 10 
if %p2.lbr.sr%==4 set/a p2.lbr.se=(%p1.lbr.sv% * 40) / 10 
if %p2.lbr.sr%==4 set   p2.lbr.sd=D 
if %p2.lbr.sr%==5 set/a p2.lbr.sm=8 
if %p2.lbr.sr%==5 set/a p2.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==5 set/a p2.lbr.se=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==5 set   p2.lbr.sd=C 
if %p2.lbr.sr%==6 set/a p2.lbr.sm=9 
if %p2.lbr.sr%==6 set/a p2.lbr.sc=(%p1.lbr.sv% * 60) / 10 
if %p2.lbr.sr%==6 set/a p2.lbr.se=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==6 set   p2.lbr.sd=B 
if %p2.lbr.sr%==7 set/a p2.lbr.sm=10 
if %p2.lbr.sr%==7 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==7 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==7 set   p2.lbr.sd=A 
if %p2.lbr.sr%==8 set/a p2.lbr.sm=11 
if %p2.lbr.sr%==8 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==8 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==8 set   p2.lbr.sd=9 
if %p2.lbr.sr%==9 set/a p2.lbr.sm=12 
if %p2.lbr.sr%==9 set/a p2.lbr.sc=(%p1.lbr.sv% * 80) / 10 
if %p2.lbr.sr%==9 set/a p2.lbr.se=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==9 set   p2.lbr.sd=8 
if %p2.lbr.sr%==10 set/a p2.lbr.sm=14 
if %p2.lbr.sr%==10 set/a p2.lbr.sc=(%p1.lbr.sv% * 100) / 10 
if %p2.lbr.sr%==10 set/a p2.lbr.se=(%p1.lbr.sv% * 140) / 10 
if %p2.lbr.sr%==10 set   p2.lbr.sd=7 
if %p2.lbr.sr%==11 set/a p2.lbr.sm=16 
if %p2.lbr.sr%==11 set/a p2.lbr.sc=(%p1.lbr.sv% * 120) / 10 
if %p2.lbr.sr%==11 set/a p2.lbr.se=(%p1.lbr.sv% * 180) / 10 
if %p2.lbr.sr%==11 set   p2.lbr.sd=6 
if %p2.lbr.sr%==12 set/a p2.lbr.sm=18 
if %p2.lbr.sr%==12 set/a p2.lbr.sc=(%p1.lbr.sv% * 140) / 10 
if %p2.lbr.sr%==12 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==12 set   p2.lbr.sd=5 
if %p2.lbr.sr%==13 set/a p2.lbr.sm=20 
if %p2.lbr.sr%==13 set/a p2.lbr.sc=(%p1.lbr.sv% * 160) / 10 
if %p2.lbr.sr%==13 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==13 set   p2.lbr.sd=4 
if %p2.lbr.sr%==14 set/a p2.lbr.sm=24 
if %p2.lbr.sr%==14 set/a p2.lbr.sc=(%p1.lbr.sv% * 240) / 10 
if %p2.lbr.sr%==14 set/a p2.lbr.se=(%p1.lbr.sv% * 200) / 10 
if %p2.lbr.sr%==14 set   p2.lbr.sd=3 
if %p2.lbr.sr%==15 set/a p2.lbr.sm=28 
if %p2.lbr.sr%==15 set/a p2.lbr.sc=(%p1.lbr.sv% * 360) / 10 
if %p2.lbr.sr%==15 set/a p2.lbr.se=(%p1.lbr.sv% * 300) / 10 
if %p2.lbr.sr%==15 set   p2.lbr.sd=2 
if %p2.lbr.sr%==16 set/a p2.lbr.sm=34 
if %p2.lbr.sr%==16 set/a p2.lbr.sc=(%p1.lbr.sv% * 480) / 10 
if %p2.lbr.sr%==16 set/a p2.lbr.se=(%p1.lbr.sv% * 400) / 10 
if %p2.lbr.sr%==16 set   p2.lbr.sd=1 
if %p2.lbr.sr%==17 set/a p2.lbr.sm=40 
if %p2.lbr.sr%==17 set/a p2.lbr.sc=0 
if %p2.lbr.sr%==17 set/a p2.lbr.se=0 
if %p2.lbr.sr%==17   set p2.lbr.sd=0 
goto:eof 
 

:llb.dec
if %p1.llb.sr%==0 set/a p1.llb.sm=0 
if %p1.llb.sr%==0 set/a p1.llb.sc=700
if %p1.llb.sr%==0 set/a p1.llb.se=0 
if %p1.llb.sr%==0   set p1.llb.sd=Not Learnt 
if %p1.llb.sr%==1 set/a p1.llb.sm=4 
if %p1.llb.sr%==1 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==1 set/a p1.llb.se=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==1 set   p1.llb.sd=Novice 
if %p1.llb.sr%==2 set/a p1.llb.sm=5 
if %p1.llb.sr%==2 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==2 set/a p1.llb.se=(%p1.llb.sv% * 30) / 10 
if %p1.llb.sr%==2 set   p1.llb.sd=F 
if %p1.llb.sr%==3 set/a p1.llb.sm=6 
if %p1.llb.sr%==3 set/a p1.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p1.llb.sr%==3 set/a p1.llb.se=(%p1.llb.sv% * 40) / 10 
if %p1.llb.sr%==3 set   p1.llb.sd=E 
if %p1.llb.sr%==4 set/a p1.llb.sm=7 
if %p1.llb.sr%==4 set/a p1.llb.sc=(%p1.llb.sv% * 50) / 10 
if %p1.llb.sr%==4 set/a p1.llb.se=(%p1.llb.sv% * 40) / 10 
if %p1.llb.sr%==4 set   p1.llb.sd=D 
if %p1.llb.sr%==5 set/a p1.llb.sm=8 
if %p1.llb.sr%==5 set/a p1.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==5 set/a p1.llb.se=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==5 set   p1.llb.sd=C 
if %p1.llb.sr%==6 set/a p1.llb.sm=9 
if %p1.llb.sr%==6 set/a p1.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p1.llb.sr%==6 set/a p1.llb.se=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==6 set   p1.llb.sd=B 
if %p1.llb.sr%==7 set/a p1.llb.sm=10 
if %p1.llb.sr%==7 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==7 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==7 set   p1.llb.sd=A 
if %p1.llb.sr%==8 set/a p1.llb.sm=11 
if %p1.llb.sr%==8 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==8 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==8 set   p1.llb.sd=9 
if %p1.llb.sr%==9 set/a p1.llb.sm=12 
if %p1.llb.sr%==9 set/a p1.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p1.llb.sr%==9 set/a p1.llb.se=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==9 set   p1.llb.sd=8 
if %p1.llb.sr%==10 set/a p1.llb.sm=14 
if %p1.llb.sr%==10 set/a p1.llb.sc=(%p1.llb.sv% * 100) / 10 
if %p1.llb.sr%==10 set/a p1.llb.se=(%p1.llb.sv% * 140) / 10 
if %p1.llb.sr%==10 set   p1.llb.sd=7 
if %p1.llb.sr%==11 set/a p1.llb.sm=16 
if %p1.llb.sr%==11 set/a p1.llb.sc=(%p1.llb.sv% * 120) / 10 
if %p1.llb.sr%==11 set/a p1.llb.se=(%p1.llb.sv% * 180) / 10 
if %p1.llb.sr%==11 set   p1.llb.sd=6 
if %p1.llb.sr%==12 set/a p1.llb.sm=18 
if %p1.llb.sr%==12 set/a p1.llb.sc=(%p1.llb.sv% * 140) / 10 
if %p1.llb.sr%==12 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==12 set   p1.llb.sd=5 
if %p1.llb.sr%==13 set/a p1.llb.sm=20 
if %p1.llb.sr%==13 set/a p1.llb.sc=(%p1.llb.sv% * 160) / 10 
if %p1.llb.sr%==13 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==13 set   p1.llb.sd=4 
if %p1.llb.sr%==14 set/a p1.llb.sm=24 
if %p1.llb.sr%==14 set/a p1.llb.sc=(%p1.llb.sv% * 240) / 10 
if %p1.llb.sr%==14 set/a p1.llb.se=(%p1.llb.sv% * 200) / 10 
if %p1.llb.sr%==14 set   p1.llb.sd=3 
if %p1.llb.sr%==15 set/a p1.llb.sm=28 
if %p1.llb.sr%==15 set/a p1.llb.sc=(%p1.llb.sv% * 360) / 10 
if %p1.llb.sr%==15 set/a p1.llb.se=(%p1.llb.sv% * 300) / 10 
if %p1.llb.sr%==15 set   p1.llb.sd=2 
if %p1.llb.sr%==16 set/a p1.llb.sm=34 
if %p1.llb.sr%==16 set/a p1.llb.sc=(%p1.llb.sv% * 480) / 10 
if %p1.llb.sr%==16 set/a p1.llb.se=(%p1.llb.sv% * 400) / 10 
if %p1.llb.sr%==16 set   p1.llb.sd=1 
if %p1.llb.sr%==17 set/a p1.llb.sm=40 
if %p1.llb.sr%==17 set/a p1.llb.sc=0 
if %p1.llb.sr%==17 set/a p1.llb.se=0 
if %p1.llb.sr%==17   set p1.llb.sd=0 
 
 
if %p2.llb.sr%==0 set/a p2.llb.sm=0 
if %p2.llb.sr%==0 set/a p2.llb.sc=700
if %p2.llb.sr%==0 set/a p2.llb.se=0 
if %p2.llb.sr%==0   set p2.llb.sd=Not Learnt 
if %p2.llb.sr%==1 set/a p2.llb.sm=4 
if %p2.llb.sr%==1 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==1 set/a p2.llb.se=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==1 set   p2.llb.sd=Novice 
if %p2.llb.sr%==2 set/a p2.llb.sm=5 
if %p2.llb.sr%==2 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==2 set/a p2.llb.se=(%p1.llb.sv% * 30) / 10 
if %p2.llb.sr%==2 set   p2.llb.sd=F 
if %p2.llb.sr%==3 set/a p2.llb.sm=6 
if %p2.llb.sr%==3 set/a p2.llb.sc=(%p1.llb.sv% * 20) / 10 
if %p2.llb.sr%==3 set/a p2.llb.se=(%p1.llb.sv% * 40) / 10 
if %p2.llb.sr%==3 set   p2.llb.sd=E 
if %p2.llb.sr%==4 set/a p2.llb.sm=7 
if %p2.llb.sr%==4 set/a p2.llb.sc=(%p1.llb.sv% * 50) / 10 
if %p2.llb.sr%==4 set/a p2.llb.se=(%p1.llb.sv% * 40) / 10 
if %p2.llb.sr%==4 set   p2.llb.sd=D 
if %p2.llb.sr%==5 set/a p2.llb.sm=8 
if %p2.llb.sr%==5 set/a p2.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==5 set/a p2.llb.se=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==5 set   p2.llb.sd=C 
if %p2.llb.sr%==6 set/a p2.llb.sm=9 
if %p2.llb.sr%==6 set/a p2.llb.sc=(%p1.llb.sv% * 60) / 10 
if %p2.llb.sr%==6 set/a p2.llb.se=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==6 set   p2.llb.sd=B 
if %p2.llb.sr%==7 set/a p2.llb.sm=10 
if %p2.llb.sr%==7 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==7 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==7 set   p2.llb.sd=A 
if %p2.llb.sr%==8 set/a p2.llb.sm=11 
if %p2.llb.sr%==8 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==8 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==8 set   p2.llb.sd=9 
if %p2.llb.sr%==9 set/a p2.llb.sm=12 
if %p2.llb.sr%==9 set/a p2.llb.sc=(%p1.llb.sv% * 80) / 10 
if %p2.llb.sr%==9 set/a p2.llb.se=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==9 set   p2.llb.sd=8 
if %p2.llb.sr%==10 set/a p2.llb.sm=14 
if %p2.llb.sr%==10 set/a p2.llb.sc=(%p1.llb.sv% * 100) / 10 
if %p2.llb.sr%==10 set/a p2.llb.se=(%p1.llb.sv% * 140) / 10 
if %p2.llb.sr%==10 set   p2.llb.sd=7 
if %p2.llb.sr%==11 set/a p2.llb.sm=16 
if %p2.llb.sr%==11 set/a p2.llb.sc=(%p1.llb.sv% * 120) / 10 
if %p2.llb.sr%==11 set/a p2.llb.se=(%p1.llb.sv% * 180) / 10 
if %p2.llb.sr%==11 set   p2.llb.sd=6 
if %p2.llb.sr%==12 set/a p2.llb.sm=18 
if %p2.llb.sr%==12 set/a p2.llb.sc=(%p1.llb.sv% * 140) / 10 
if %p2.llb.sr%==12 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==12 set   p2.llb.sd=5 
if %p2.llb.sr%==13 set/a p2.llb.sm=20 
if %p2.llb.sr%==13 set/a p2.llb.sc=(%p1.llb.sv% * 160) / 10 
if %p2.llb.sr%==13 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==13 set   p2.llb.sd=4 
if %p2.llb.sr%==14 set/a p2.llb.sm=24 
if %p2.llb.sr%==14 set/a p2.llb.sc=(%p1.llb.sv% * 240) / 10 
if %p2.llb.sr%==14 set/a p2.llb.se=(%p1.llb.sv% * 200) / 10 
if %p2.llb.sr%==14 set   p2.llb.sd=3 
if %p2.llb.sr%==15 set/a p2.llb.sm=28 
if %p2.llb.sr%==15 set/a p2.llb.sc=(%p1.llb.sv% * 360) / 10 
if %p2.llb.sr%==15 set/a p2.llb.se=(%p1.llb.sv% * 300) / 10 
if %p2.llb.sr%==15 set   p2.llb.sd=2 
if %p2.llb.sr%==16 set/a p2.llb.sm=34 
if %p2.llb.sr%==16 set/a p2.llb.sc=(%p1.llb.sv% * 480) / 10 
if %p2.llb.sr%==16 set/a p2.llb.se=(%p1.llb.sv% * 400) / 10 
if %p2.llb.sr%==16 set   p2.llb.sd=1 
if %p2.llb.sr%==17 set/a p2.llb.sm=40 
if %p2.llb.sr%==17 set/a p2.llb.sc=0 
if %p2.llb.sr%==17 set/a p2.llb.se=0 
if %p2.llb.sr%==17   set p2.llb.sd=0 
goto:eof
:lbl.dec
if %p1.lbl.sr%==0 set/a p1.lbl.sm=0 
if %p1.lbl.sr%==0 set/a p1.lbl.sc=900
if %p1.lbl.sr%==0 set/a p1.lbl.se=0 
if %p1.lbl.sr%==0   set p1.lbl.sd=Not Learnt 
if %p1.lbl.sr%==1 set/a p1.lbl.sm=4 
if %p1.lbl.sr%==1 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==1 set/a p1.lbl.se=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==1 set   p1.lbl.sd=Novice 
if %p1.lbl.sr%==2 set/a p1.lbl.sm=5 
if %p1.lbl.sr%==2 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==2 set/a p1.lbl.se=(%p1.lbl.sv% * 30) / 10 
if %p1.lbl.sr%==2 set   p1.lbl.sd=F 
if %p1.lbl.sr%==3 set/a p1.lbl.sm=6 
if %p1.lbl.sr%==3 set/a p1.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p1.lbl.sr%==3 set/a p1.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p1.lbl.sr%==3 set   p1.lbl.sd=E 
if %p1.lbl.sr%==4 set/a p1.lbl.sm=7 
if %p1.lbl.sr%==4 set/a p1.lbl.sc=(%p1.lbl.sv% * 50) / 10 
if %p1.lbl.sr%==4 set/a p1.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p1.lbl.sr%==4 set   p1.lbl.sd=D 
if %p1.lbl.sr%==5 set/a p1.lbl.sm=8 
if %p1.lbl.sr%==5 set/a p1.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==5 set/a p1.lbl.se=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==5 set   p1.lbl.sd=C 
if %p1.lbl.sr%==6 set/a p1.lbl.sm=9 
if %p1.lbl.sr%==6 set/a p1.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p1.lbl.sr%==6 set/a p1.lbl.se=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==6 set   p1.lbl.sd=B 
if %p1.lbl.sr%==7 set/a p1.lbl.sm=10 
if %p1.lbl.sr%==7 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==7 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==7 set   p1.lbl.sd=A 
if %p1.lbl.sr%==8 set/a p1.lbl.sm=11 
if %p1.lbl.sr%==8 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==8 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==8 set   p1.lbl.sd=9 
if %p1.lbl.sr%==9 set/a p1.lbl.sm=12 
if %p1.lbl.sr%==9 set/a p1.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p1.lbl.sr%==9 set/a p1.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==9 set   p1.lbl.sd=8 
if %p1.lbl.sr%==10 set/a p1.lbl.sm=14 
if %p1.lbl.sr%==10 set/a p1.lbl.sc=(%p1.lbl.sv% * 100) / 10 
if %p1.lbl.sr%==10 set/a p1.lbl.se=(%p1.lbl.sv% * 140) / 10 
if %p1.lbl.sr%==10 set   p1.lbl.sd=7 
if %p1.lbl.sr%==11 set/a p1.lbl.sm=16 
if %p1.lbl.sr%==11 set/a p1.lbl.sc=(%p1.lbl.sv% * 120) / 10 
if %p1.lbl.sr%==11 set/a p1.lbl.se=(%p1.lbl.sv% * 180) / 10 
if %p1.lbl.sr%==11 set   p1.lbl.sd=6 
if %p1.lbl.sr%==12 set/a p1.lbl.sm=18 
if %p1.lbl.sr%==12 set/a p1.lbl.sc=(%p1.lbl.sv% * 140) / 10 
if %p1.lbl.sr%==12 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==12 set   p1.lbl.sd=5 
if %p1.lbl.sr%==13 set/a p1.lbl.sm=20 
if %p1.lbl.sr%==13 set/a p1.lbl.sc=(%p1.lbl.sv% * 160) / 10 
if %p1.lbl.sr%==13 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==13 set   p1.lbl.sd=4 
if %p1.lbl.sr%==14 set/a p1.lbl.sm=24 
if %p1.lbl.sr%==14 set/a p1.lbl.sc=(%p1.lbl.sv% * 240) / 10 
if %p1.lbl.sr%==14 set/a p1.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p1.lbl.sr%==14 set   p1.lbl.sd=3 
if %p1.lbl.sr%==15 set/a p1.lbl.sm=28 
if %p1.lbl.sr%==15 set/a p1.lbl.sc=(%p1.lbl.sv% * 360) / 10 
if %p1.lbl.sr%==15 set/a p1.lbl.se=(%p1.lbl.sv% * 300) / 10 
if %p1.lbl.sr%==15 set   p1.lbl.sd=2 
if %p1.lbl.sr%==16 set/a p1.lbl.sm=34 
if %p1.lbl.sr%==16 set/a p1.lbl.sc=(%p1.lbl.sv% * 480) / 10 
if %p1.lbl.sr%==16 set/a p1.lbl.se=(%p1.lbl.sv% * 400) / 10 
if %p1.lbl.sr%==16 set   p1.lbl.sd=1 
if %p1.lbl.sr%==17 set/a p1.lbl.sm=40 
if %p1.lbl.sr%==17 set/a p1.lbl.sc=0 
if %p1.lbl.sr%==17 set/a p1.lbl.se=0 
if %p1.lbl.sr%==17   set p1.lbl.sd=0 
 
 
if %p2.lbl.sr%==0 set/a p2.lbl.sm=0 
if %p2.lbl.sr%==0 set/a p2.lbl.sc=900
if %p2.lbl.sr%==0 set/a p2.lbl.se=0 
if %p2.lbl.sr%==0   set p2.lbl.sd=Not Learnt 
if %p2.lbl.sr%==1 set/a p2.lbl.sm=4 
if %p2.lbl.sr%==1 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==1 set/a p2.lbl.se=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==1 set   p2.lbl.sd=Novice 
if %p2.lbl.sr%==2 set/a p2.lbl.sm=5 
if %p2.lbl.sr%==2 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==2 set/a p2.lbl.se=(%p1.lbl.sv% * 30) / 10 
if %p2.lbl.sr%==2 set   p2.lbl.sd=F 
if %p2.lbl.sr%==3 set/a p2.lbl.sm=6 
if %p2.lbl.sr%==3 set/a p2.lbl.sc=(%p1.lbl.sv% * 20) / 10 
if %p2.lbl.sr%==3 set/a p2.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p2.lbl.sr%==3 set   p2.lbl.sd=E 
if %p2.lbl.sr%==4 set/a p2.lbl.sm=7 
if %p2.lbl.sr%==4 set/a p2.lbl.sc=(%p1.lbl.sv% * 50) / 10 
if %p2.lbl.sr%==4 set/a p2.lbl.se=(%p1.lbl.sv% * 40) / 10 
if %p2.lbl.sr%==4 set   p2.lbl.sd=D 
if %p2.lbl.sr%==5 set/a p2.lbl.sm=8 
if %p2.lbl.sr%==5 set/a p2.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==5 set/a p2.lbl.se=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==5 set   p2.lbl.sd=C 
if %p2.lbl.sr%==6 set/a p2.lbl.sm=9 
if %p2.lbl.sr%==6 set/a p2.lbl.sc=(%p1.lbl.sv% * 60) / 10 
if %p2.lbl.sr%==6 set/a p2.lbl.se=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==6 set   p2.lbl.sd=B 
if %p2.lbl.sr%==7 set/a p2.lbl.sm=10 
if %p2.lbl.sr%==7 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==7 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==7 set   p2.lbl.sd=A 
if %p2.lbl.sr%==8 set/a p2.lbl.sm=11 
if %p2.lbl.sr%==8 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==8 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==8 set   p2.lbl.sd=9 
if %p2.lbl.sr%==9 set/a p2.lbl.sm=12 
if %p2.lbl.sr%==9 set/a p2.lbl.sc=(%p1.lbl.sv% * 80) / 10 
if %p2.lbl.sr%==9 set/a p2.lbl.se=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==9 set   p2.lbl.sd=8 
if %p2.lbl.sr%==10 set/a p2.lbl.sm=14 
if %p2.lbl.sr%==10 set/a p2.lbl.sc=(%p1.lbl.sv% * 100) / 10 
if %p2.lbl.sr%==10 set/a p2.lbl.se=(%p1.lbl.sv% * 140) / 10 
if %p2.lbl.sr%==10 set   p2.lbl.sd=7 
if %p2.lbl.sr%==11 set/a p2.lbl.sm=16 
if %p2.lbl.sr%==11 set/a p2.lbl.sc=(%p1.lbl.sv% * 120) / 10 
if %p2.lbl.sr%==11 set/a p2.lbl.se=(%p1.lbl.sv% * 180) / 10 
if %p2.lbl.sr%==11 set   p2.lbl.sd=6 
if %p2.lbl.sr%==12 set/a p2.lbl.sm=18 
if %p2.lbl.sr%==12 set/a p2.lbl.sc=(%p1.lbl.sv% * 140) / 10 
if %p2.lbl.sr%==12 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==12 set   p2.lbl.sd=5 
if %p2.lbl.sr%==13 set/a p2.lbl.sm=20 
if %p2.lbl.sr%==13 set/a p2.lbl.sc=(%p1.lbl.sv% * 160) / 10 
if %p2.lbl.sr%==13 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==13 set   p2.lbl.sd=4 
if %p2.lbl.sr%==14 set/a p2.lbl.sm=24 
if %p2.lbl.sr%==14 set/a p2.lbl.sc=(%p1.lbl.sv% * 240) / 10 
if %p2.lbl.sr%==14 set/a p2.lbl.se=(%p1.lbl.sv% * 200) / 10 
if %p2.lbl.sr%==14 set   p2.lbl.sd=3 
if %p2.lbl.sr%==15 set/a p2.lbl.sm=28 
if %p2.lbl.sr%==15 set/a p2.lbl.sc=(%p1.lbl.sv% * 360) / 10 
if %p2.lbl.sr%==15 set/a p2.lbl.se=(%p1.lbl.sv% * 300) / 10 
if %p2.lbl.sr%==15 set   p2.lbl.sd=2 
if %p2.lbl.sr%==16 set/a p2.lbl.sm=34 
if %p2.lbl.sr%==16 set/a p2.lbl.sc=(%p1.lbl.sv% * 480) / 10 
if %p2.lbl.sr%==16 set/a p2.lbl.se=(%p1.lbl.sv% * 400) / 10 
if %p2.lbl.sr%==16 set   p2.lbl.sd=1 
if %p2.lbl.sr%==17 set/a p2.lbl.sm=40 
if %p2.lbl.sr%==17 set/a p2.lbl.sc=0 
if %p2.lbl.sr%==17 set/a p2.lbl.se=0 
if %p2.lbl.sr%==17   set p2.lbl.sd=0 
goto:eof
:smh.dec
if %p1.smh.sr%==0 set/a p1.smh.sm=0 
if %p1.smh.sr%==0 set/a p1.smh.sc=0 
if %p1.smh.sr%==0 set/a p1.smh.se=0 
if %p1.smh.sr%==0   set p1.smh.sd=Not Learnt 
if %p1.smh.sr%==1 set/a p1.smh.sm=4 
if %p1.smh.sr%==1 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==1 set/a p1.smh.se=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==1 set   p1.smh.sd=Novice 
if %p1.smh.sr%==2 set/a p1.smh.sm=5 
if %p1.smh.sr%==2 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==2 set/a p1.smh.se=(%p1.smh.sv% * 30) / 10 
if %p1.smh.sr%==2 set   p1.smh.sd=F 
if %p1.smh.sr%==3 set/a p1.smh.sm=6 
if %p1.smh.sr%==3 set/a p1.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p1.smh.sr%==3 set/a p1.smh.se=(%p1.smh.sv% * 40) / 10 
if %p1.smh.sr%==3 set   p1.smh.sd=E 
if %p1.smh.sr%==4 set/a p1.smh.sm=7 
if %p1.smh.sr%==4 set/a p1.smh.sc=(%p1.smh.sv% * 50) / 10 
if %p1.smh.sr%==4 set/a p1.smh.se=(%p1.smh.sv% * 40) / 10 
if %p1.smh.sr%==4 set   p1.smh.sd=D 
if %p1.smh.sr%==5 set/a p1.smh.sm=8 
if %p1.smh.sr%==5 set/a p1.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==5 set/a p1.smh.se=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==5 set   p1.smh.sd=C 
if %p1.smh.sr%==6 set/a p1.smh.sm=9 
if %p1.smh.sr%==6 set/a p1.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p1.smh.sr%==6 set/a p1.smh.se=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==6 set   p1.smh.sd=B 
if %p1.smh.sr%==7 set/a p1.smh.sm=10 
if %p1.smh.sr%==7 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==7 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==7 set   p1.smh.sd=A 
if %p1.smh.sr%==8 set/a p1.smh.sm=11 
if %p1.smh.sr%==8 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==8 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==8 set   p1.smh.sd=9 
if %p1.smh.sr%==9 set/a p1.smh.sm=12 
if %p1.smh.sr%==9 set/a p1.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p1.smh.sr%==9 set/a p1.smh.se=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==9 set   p1.smh.sd=8 
if %p1.smh.sr%==10 set/a p1.smh.sm=14 
if %p1.smh.sr%==10 set/a p1.smh.sc=(%p1.smh.sv% * 100) / 10 
if %p1.smh.sr%==10 set/a p1.smh.se=(%p1.smh.sv% * 140) / 10 
if %p1.smh.sr%==10 set   p1.smh.sd=7 
if %p1.smh.sr%==11 set/a p1.smh.sm=16 
if %p1.smh.sr%==11 set/a p1.smh.sc=(%p1.smh.sv% * 120) / 10 
if %p1.smh.sr%==11 set/a p1.smh.se=(%p1.smh.sv% * 180) / 10 
if %p1.smh.sr%==11 set   p1.smh.sd=6 
if %p1.smh.sr%==12 set/a p1.smh.sm=18 
if %p1.smh.sr%==12 set/a p1.smh.sc=(%p1.smh.sv% * 140) / 10 
if %p1.smh.sr%==12 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==12 set   p1.smh.sd=5 
if %p1.smh.sr%==13 set/a p1.smh.sm=20 
if %p1.smh.sr%==13 set/a p1.smh.sc=(%p1.smh.sv% * 160) / 10 
if %p1.smh.sr%==13 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==13 set   p1.smh.sd=4 
if %p1.smh.sr%==14 set/a p1.smh.sm=24 
if %p1.smh.sr%==14 set/a p1.smh.sc=(%p1.smh.sv% * 240) / 10 
if %p1.smh.sr%==14 set/a p1.smh.se=(%p1.smh.sv% * 200) / 10 
if %p1.smh.sr%==14 set   p1.smh.sd=3 
if %p1.smh.sr%==15 set/a p1.smh.sm=28 
if %p1.smh.sr%==15 set/a p1.smh.sc=(%p1.smh.sv% * 360) / 10 
if %p1.smh.sr%==15 set/a p1.smh.se=(%p1.smh.sv% * 300) / 10 
if %p1.smh.sr%==15 set   p1.smh.sd=2 
if %p1.smh.sr%==16 set/a p1.smh.sm=34 
if %p1.smh.sr%==16 set/a p1.smh.sc=(%p1.smh.sv% * 480) / 10 
if %p1.smh.sr%==16 set/a p1.smh.se=(%p1.smh.sv% * 400) / 10 
if %p1.smh.sr%==16 set   p1.smh.sd=1 
if %p1.smh.sr%==17 set/a p1.smh.sm=40 
if %p1.smh.sr%==17 set/a p1.smh.sc=0 
if %p1.smh.sr%==17 set/a p1.smh.se=0 
if %p1.smh.sr%==17   set p1.smh.sd=0 
 
 
if %p2.smh.sr%==0 set/a p2.smh.sm=0 
if %p2.smh.sr%==0 set/a p2.smh.sc=0 
if %p2.smh.sr%==0 set/a p2.smh.se=0 
if %p2.smh.sr%==0   set p2.smh.sd=Not Learnt 
if %p2.smh.sr%==1 set/a p2.smh.sm=4 
if %p2.smh.sr%==1 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==1 set/a p2.smh.se=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==1 set   p2.smh.sd=Novice 
if %p2.smh.sr%==2 set/a p2.smh.sm=5 
if %p2.smh.sr%==2 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==2 set/a p2.smh.se=(%p1.smh.sv% * 30) / 10 
if %p2.smh.sr%==2 set   p2.smh.sd=F 
if %p2.smh.sr%==3 set/a p2.smh.sm=6 
if %p2.smh.sr%==3 set/a p2.smh.sc=(%p1.smh.sv% * 20) / 10 
if %p2.smh.sr%==3 set/a p2.smh.se=(%p1.smh.sv% * 40) / 10 
if %p2.smh.sr%==3 set   p2.smh.sd=E 
if %p2.smh.sr%==4 set/a p2.smh.sm=7 
if %p2.smh.sr%==4 set/a p2.smh.sc=(%p1.smh.sv% * 50) / 10 
if %p2.smh.sr%==4 set/a p2.smh.se=(%p1.smh.sv% * 40) / 10 
if %p2.smh.sr%==4 set   p2.smh.sd=D 
if %p2.smh.sr%==5 set/a p2.smh.sm=8 
if %p2.smh.sr%==5 set/a p2.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==5 set/a p2.smh.se=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==5 set   p2.smh.sd=C 
if %p2.smh.sr%==6 set/a p2.smh.sm=9 
if %p2.smh.sr%==6 set/a p2.smh.sc=(%p1.smh.sv% * 60) / 10 
if %p2.smh.sr%==6 set/a p2.smh.se=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==6 set   p2.smh.sd=B 
if %p2.smh.sr%==7 set/a p2.smh.sm=10 
if %p2.smh.sr%==7 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==7 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==7 set   p2.smh.sd=A 
if %p2.smh.sr%==8 set/a p2.smh.sm=11 
if %p2.smh.sr%==8 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==8 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==8 set   p2.smh.sd=9 
if %p2.smh.sr%==9 set/a p2.smh.sm=12 
if %p2.smh.sr%==9 set/a p2.smh.sc=(%p1.smh.sv% * 80) / 10 
if %p2.smh.sr%==9 set/a p2.smh.se=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==9 set   p2.smh.sd=8 
if %p2.smh.sr%==10 set/a p2.smh.sm=14 
if %p2.smh.sr%==10 set/a p2.smh.sc=(%p1.smh.sv% * 100) / 10 
if %p2.smh.sr%==10 set/a p2.smh.se=(%p1.smh.sv% * 140) / 10 
if %p2.smh.sr%==10 set   p2.smh.sd=7 
if %p2.smh.sr%==11 set/a p2.smh.sm=16 
if %p2.smh.sr%==11 set/a p2.smh.sc=(%p1.smh.sv% * 120) / 10 
if %p2.smh.sr%==11 set/a p2.smh.se=(%p1.smh.sv% * 180) / 10 
if %p2.smh.sr%==11 set   p2.smh.sd=6 
if %p2.smh.sr%==12 set/a p2.smh.sm=18 
if %p2.smh.sr%==12 set/a p2.smh.sc=(%p1.smh.sv% * 140) / 10 
if %p2.smh.sr%==12 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==12 set   p2.smh.sd=5 
if %p2.smh.sr%==13 set/a p2.smh.sm=20 
if %p2.smh.sr%==13 set/a p2.smh.sc=(%p1.smh.sv% * 160) / 10 
if %p2.smh.sr%==13 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==13 set   p2.smh.sd=4 
if %p2.smh.sr%==14 set/a p2.smh.sm=24 
if %p2.smh.sr%==14 set/a p2.smh.sc=(%p1.smh.sv% * 240) / 10 
if %p2.smh.sr%==14 set/a p2.smh.se=(%p1.smh.sv% * 200) / 10 
if %p2.smh.sr%==14 set   p2.smh.sd=3 
if %p2.smh.sr%==15 set/a p2.smh.sm=28 
if %p2.smh.sr%==15 set/a p2.smh.sc=(%p1.smh.sv% * 360) / 10 
if %p2.smh.sr%==15 set/a p2.smh.se=(%p1.smh.sv% * 300) / 10 
if %p2.smh.sr%==15 set   p2.smh.sd=2 
if %p2.smh.sr%==16 set/a p2.smh.sm=34 
if %p2.smh.sr%==16 set/a p2.smh.sc=(%p1.smh.sv% * 480) / 10 
if %p2.smh.sr%==16 set/a p2.smh.se=(%p1.smh.sv% * 400) / 10 
if %p2.smh.sr%==16 set   p2.smh.sd=1 
if %p2.smh.sr%==17 set/a p2.smh.sm=40 
if %p2.smh.sr%==17 set/a p2.smh.sc=0 
if %p2.smh.sr%==17 set/a p2.smh.se=0 
if %p2.smh.sr%==17   set p2.smh.sd=0 
goto:eof
:fsh.dec
if %p1.fsh.sr%==0 set/a p1.fsh.sm=0 
if %p1.fsh.sr%==0 set/a p1.fsh.sc=250
if %p1.fsh.sr%==0 set/a p1.fsh.se=0 
if %p1.fsh.sr%==0   set p1.fsh.sd=Not Learnt 
if %p1.fsh.sr%==1 set/a p1.fsh.sm=4 
if %p1.fsh.sr%==1 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==1 set/a p1.fsh.se=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==1 set   p1.fsh.sd=Novice 
if %p1.fsh.sr%==2 set/a p1.fsh.sm=5 
if %p1.fsh.sr%==2 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==2 set/a p1.fsh.se=(%p1.fsh.sv% * 30) / 10 
if %p1.fsh.sr%==2 set   p1.fsh.sd=F 
if %p1.fsh.sr%==3 set/a p1.fsh.sm=6 
if %p1.fsh.sr%==3 set/a p1.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p1.fsh.sr%==3 set/a p1.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p1.fsh.sr%==3 set   p1.fsh.sd=E 
if %p1.fsh.sr%==4 set/a p1.fsh.sm=7 
if %p1.fsh.sr%==4 set/a p1.fsh.sc=(%p1.fsh.sv% * 50) / 10 
if %p1.fsh.sr%==4 set/a p1.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p1.fsh.sr%==4 set   p1.fsh.sd=D 
if %p1.fsh.sr%==5 set/a p1.fsh.sm=8 
if %p1.fsh.sr%==5 set/a p1.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==5 set/a p1.fsh.se=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==5 set   p1.fsh.sd=C 
if %p1.fsh.sr%==6 set/a p1.fsh.sm=9 
if %p1.fsh.sr%==6 set/a p1.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p1.fsh.sr%==6 set/a p1.fsh.se=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==6 set   p1.fsh.sd=B 
if %p1.fsh.sr%==7 set/a p1.fsh.sm=10 
if %p1.fsh.sr%==7 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==7 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==7 set   p1.fsh.sd=A 
if %p1.fsh.sr%==8 set/a p1.fsh.sm=11 
if %p1.fsh.sr%==8 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==8 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==8 set   p1.fsh.sd=9 
if %p1.fsh.sr%==9 set/a p1.fsh.sm=12 
if %p1.fsh.sr%==9 set/a p1.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p1.fsh.sr%==9 set/a p1.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==9 set   p1.fsh.sd=8 
if %p1.fsh.sr%==10 set/a p1.fsh.sm=14 
if %p1.fsh.sr%==10 set/a p1.fsh.sc=(%p1.fsh.sv% * 100) / 10 
if %p1.fsh.sr%==10 set/a p1.fsh.se=(%p1.fsh.sv% * 140) / 10 
if %p1.fsh.sr%==10 set   p1.fsh.sd=7 
if %p1.fsh.sr%==11 set/a p1.fsh.sm=16 
if %p1.fsh.sr%==11 set/a p1.fsh.sc=(%p1.fsh.sv% * 120) / 10 
if %p1.fsh.sr%==11 set/a p1.fsh.se=(%p1.fsh.sv% * 180) / 10 
if %p1.fsh.sr%==11 set   p1.fsh.sd=6 
if %p1.fsh.sr%==12 set/a p1.fsh.sm=18 
if %p1.fsh.sr%==12 set/a p1.fsh.sc=(%p1.fsh.sv% * 140) / 10 
if %p1.fsh.sr%==12 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==12 set   p1.fsh.sd=5 
if %p1.fsh.sr%==13 set/a p1.fsh.sm=20 
if %p1.fsh.sr%==13 set/a p1.fsh.sc=(%p1.fsh.sv% * 160) / 10 
if %p1.fsh.sr%==13 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==13 set   p1.fsh.sd=4 
if %p1.fsh.sr%==14 set/a p1.fsh.sm=24 
if %p1.fsh.sr%==14 set/a p1.fsh.sc=(%p1.fsh.sv% * 240) / 10 
if %p1.fsh.sr%==14 set/a p1.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p1.fsh.sr%==14 set   p1.fsh.sd=3 
if %p1.fsh.sr%==15 set/a p1.fsh.sm=28 
if %p1.fsh.sr%==15 set/a p1.fsh.sc=(%p1.fsh.sv% * 360) / 10 
if %p1.fsh.sr%==15 set/a p1.fsh.se=(%p1.fsh.sv% * 300) / 10 
if %p1.fsh.sr%==15 set   p1.fsh.sd=2 
if %p1.fsh.sr%==16 set/a p1.fsh.sm=34 
if %p1.fsh.sr%==16 set/a p1.fsh.sc=(%p1.fsh.sv% * 480) / 10 
if %p1.fsh.sr%==16 set/a p1.fsh.se=(%p1.fsh.sv% * 400) / 10 
if %p1.fsh.sr%==16 set   p1.fsh.sd=1 
if %p1.fsh.sr%==17 set/a p1.fsh.sm=40 
if %p1.fsh.sr%==17 set/a p1.fsh.sc=0 
if %p1.fsh.sr%==17 set/a p1.fsh.se=0 
if %p1.fsh.sr%==17   set p1.fsh.sd=0 


if %p2.fsh.sr%==0 set/a p2.fsh.sm=0 
if %p2.fsh.sr%==0 set/a p2.fsh.sc=250
if %p2.fsh.sr%==0 set/a p2.fsh.se=0 
if %p2.fsh.sr%==0   set p2.fsh.sd=Not Learnt 
if %p2.fsh.sr%==1 set/a p2.fsh.sm=4 
if %p2.fsh.sr%==1 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==1 set/a p2.fsh.se=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==1 set   p2.fsh.sd=Novice 
if %p2.fsh.sr%==2 set/a p2.fsh.sm=5 
if %p2.fsh.sr%==2 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==2 set/a p2.fsh.se=(%p1.fsh.sv% * 30) / 10 
if %p2.fsh.sr%==2 set   p2.fsh.sd=F 
if %p2.fsh.sr%==3 set/a p2.fsh.sm=6 
if %p2.fsh.sr%==3 set/a p2.fsh.sc=(%p1.fsh.sv% * 20) / 10 
if %p2.fsh.sr%==3 set/a p2.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p2.fsh.sr%==3 set   p2.fsh.sd=E 
if %p2.fsh.sr%==4 set/a p2.fsh.sm=7 
if %p2.fsh.sr%==4 set/a p2.fsh.sc=(%p1.fsh.sv% * 50) / 10 
if %p2.fsh.sr%==4 set/a p2.fsh.se=(%p1.fsh.sv% * 40) / 10 
if %p2.fsh.sr%==4 set   p2.fsh.sd=D 
if %p2.fsh.sr%==5 set/a p2.fsh.sm=8 
if %p2.fsh.sr%==5 set/a p2.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==5 set/a p2.fsh.se=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==5 set   p2.fsh.sd=C 
if %p2.fsh.sr%==6 set/a p2.fsh.sm=9 
if %p2.fsh.sr%==6 set/a p2.fsh.sc=(%p1.fsh.sv% * 60) / 10 
if %p2.fsh.sr%==6 set/a p2.fsh.se=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==6 set   p2.fsh.sd=B 
if %p2.fsh.sr%==7 set/a p2.fsh.sm=10 
if %p2.fsh.sr%==7 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==7 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==7 set   p2.fsh.sd=A 
if %p2.fsh.sr%==8 set/a p2.fsh.sm=11 
if %p2.fsh.sr%==8 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==8 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==8 set   p2.fsh.sd=9 
if %p2.fsh.sr%==9 set/a p2.fsh.sm=12 
if %p2.fsh.sr%==9 set/a p2.fsh.sc=(%p1.fsh.sv% * 80) / 10 
if %p2.fsh.sr%==9 set/a p2.fsh.se=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==9 set   p2.fsh.sd=8 
if %p2.fsh.sr%==10 set/a p2.fsh.sm=14 
if %p2.fsh.sr%==10 set/a p2.fsh.sc=(%p1.fsh.sv% * 100) / 10 
if %p2.fsh.sr%==10 set/a p2.fsh.se=(%p1.fsh.sv% * 140) / 10 
if %p2.fsh.sr%==10 set   p2.fsh.sd=7 
if %p2.fsh.sr%==11 set/a p2.fsh.sm=16 
if %p2.fsh.sr%==11 set/a p2.fsh.sc=(%p1.fsh.sv% * 120) / 10 
if %p2.fsh.sr%==11 set/a p2.fsh.se=(%p1.fsh.sv% * 180) / 10 
if %p2.fsh.sr%==11 set   p2.fsh.sd=6 
if %p2.fsh.sr%==12 set/a p2.fsh.sm=18 
if %p2.fsh.sr%==12 set/a p2.fsh.sc=(%p1.fsh.sv% * 140) / 10 
if %p2.fsh.sr%==12 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==12 set   p2.fsh.sd=5 
if %p2.fsh.sr%==13 set/a p2.fsh.sm=20 
if %p2.fsh.sr%==13 set/a p2.fsh.sc=(%p1.fsh.sv% * 160) / 10 
if %p2.fsh.sr%==13 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==13 set   p2.fsh.sd=4 
if %p2.fsh.sr%==14 set/a p2.fsh.sm=24 
if %p2.fsh.sr%==14 set/a p2.fsh.sc=(%p1.fsh.sv% * 240) / 10 
if %p2.fsh.sr%==14 set/a p2.fsh.se=(%p1.fsh.sv% * 200) / 10 
if %p2.fsh.sr%==14 set   p2.fsh.sd=3 
if %p2.fsh.sr%==15 set/a p2.fsh.sm=28 
if %p2.fsh.sr%==15 set/a p2.fsh.sc=(%p1.fsh.sv% * 360) / 10 
if %p2.fsh.sr%==15 set/a p2.fsh.se=(%p1.fsh.sv% * 300) / 10 
if %p2.fsh.sr%==15 set   p2.fsh.sd=2 
if %p2.fsh.sr%==16 set/a p2.fsh.sm=34 
if %p2.fsh.sr%==16 set/a p2.fsh.sc=(%p1.fsh.sv% * 480) / 10 
if %p2.fsh.sr%==16 set/a p2.fsh.se=(%p1.fsh.sv% * 400) / 10 
if %p2.fsh.sr%==16 set   p2.fsh.sd=1 
if %p2.fsh.sr%==17 set/a p2.fsh.sm=40 
if %p2.fsh.sr%==17 set/a p2.fsh.sc=0 
if %p2.fsh.sr%==17 set/a p2.fsh.se=0 
if %p2.fsh.sr%==17   set p2.fsh.sd=0 
goto:eof
:fbr.dec
if %p1.fbr.sr%==0 set/a p1.fbr.sm=0 
if %p1.fbr.sr%==0 set/a p1.fbr.sc=550
if %p1.fbr.sr%==0 set/a p1.fbr.se=0 
if %p1.fbr.sr%==0   set p1.fbr.sd=Not Learnt 
if %p1.fbr.sr%==1 set/a p1.fbr.sm=4 
if %p1.fbr.sr%==1 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==1 set/a p1.fbr.se=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==1 set   p1.fbr.sd=Novice 
if %p1.fbr.sr%==2 set/a p1.fbr.sm=5 
if %p1.fbr.sr%==2 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==2 set/a p1.fbr.se=(%p1.fbr.sv% * 30) / 10 
if %p1.fbr.sr%==2 set   p1.fbr.sd=F 
if %p1.fbr.sr%==3 set/a p1.fbr.sm=6 
if %p1.fbr.sr%==3 set/a p1.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p1.fbr.sr%==3 set/a p1.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p1.fbr.sr%==3 set   p1.fbr.sd=E 
if %p1.fbr.sr%==4 set/a p1.fbr.sm=7 
if %p1.fbr.sr%==4 set/a p1.fbr.sc=(%p1.fbr.sv% * 50) / 10 
if %p1.fbr.sr%==4 set/a p1.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p1.fbr.sr%==4 set   p1.fbr.sd=D 
if %p1.fbr.sr%==5 set/a p1.fbr.sm=8 
if %p1.fbr.sr%==5 set/a p1.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==5 set/a p1.fbr.se=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==5 set   p1.fbr.sd=C 
if %p1.fbr.sr%==6 set/a p1.fbr.sm=9 
if %p1.fbr.sr%==6 set/a p1.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p1.fbr.sr%==6 set/a p1.fbr.se=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==6 set   p1.fbr.sd=B 
if %p1.fbr.sr%==7 set/a p1.fbr.sm=10 
if %p1.fbr.sr%==7 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==7 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==7 set   p1.fbr.sd=A 
if %p1.fbr.sr%==8 set/a p1.fbr.sm=11 
if %p1.fbr.sr%==8 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==8 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==8 set   p1.fbr.sd=9 
if %p1.fbr.sr%==9 set/a p1.fbr.sm=12 
if %p1.fbr.sr%==9 set/a p1.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p1.fbr.sr%==9 set/a p1.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==9 set   p1.fbr.sd=8 
if %p1.fbr.sr%==10 set/a p1.fbr.sm=14 
if %p1.fbr.sr%==10 set/a p1.fbr.sc=(%p1.fbr.sv% * 100) / 10 
if %p1.fbr.sr%==10 set/a p1.fbr.se=(%p1.fbr.sv% * 140) / 10 
if %p1.fbr.sr%==10 set   p1.fbr.sd=7 
if %p1.fbr.sr%==11 set/a p1.fbr.sm=16 
if %p1.fbr.sr%==11 set/a p1.fbr.sc=(%p1.fbr.sv% * 120) / 10 
if %p1.fbr.sr%==11 set/a p1.fbr.se=(%p1.fbr.sv% * 180) / 10 
if %p1.fbr.sr%==11 set   p1.fbr.sd=6 
if %p1.fbr.sr%==12 set/a p1.fbr.sm=18 
if %p1.fbr.sr%==12 set/a p1.fbr.sc=(%p1.fbr.sv% * 140) / 10 
if %p1.fbr.sr%==12 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==12 set   p1.fbr.sd=5 
if %p1.fbr.sr%==13 set/a p1.fbr.sm=20 
if %p1.fbr.sr%==13 set/a p1.fbr.sc=(%p1.fbr.sv% * 160) / 10 
if %p1.fbr.sr%==13 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==13 set   p1.fbr.sd=4 
if %p1.fbr.sr%==14 set/a p1.fbr.sm=24 
if %p1.fbr.sr%==14 set/a p1.fbr.sc=(%p1.fbr.sv% * 240) / 10 
if %p1.fbr.sr%==14 set/a p1.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p1.fbr.sr%==14 set   p1.fbr.sd=3 
if %p1.fbr.sr%==15 set/a p1.fbr.sm=28 
if %p1.fbr.sr%==15 set/a p1.fbr.sc=(%p1.fbr.sv% * 360) / 10 
if %p1.fbr.sr%==15 set/a p1.fbr.se=(%p1.fbr.sv% * 300) / 10 
if %p1.fbr.sr%==15 set   p1.fbr.sd=2 
if %p1.fbr.sr%==16 set/a p1.fbr.sm=34 
if %p1.fbr.sr%==16 set/a p1.fbr.sc=(%p1.fbr.sv% * 480) / 10 
if %p1.fbr.sr%==16 set/a p1.fbr.se=(%p1.fbr.sv% * 400) / 10 
if %p1.fbr.sr%==16 set   p1.fbr.sd=1 
if %p1.fbr.sr%==17 set/a p1.fbr.sm=40 
if %p1.fbr.sr%==17 set/a p1.fbr.sc=0 
if %p1.fbr.sr%==17 set/a p1.fbr.se=0 
if %p1.fbr.sr%==17   set p1.fbr.sd=0 
 
 
if %p2.fbr.sr%==0 set/a p2.fbr.sm=0 
if %p2.fbr.sr%==0 set/a p2.fbr.sc=550
if %p2.fbr.sr%==0 set/a p2.fbr.se=0 
if %p2.fbr.sr%==0   set p2.fbr.sd=Not Learnt 
if %p2.fbr.sr%==1 set/a p2.fbr.sm=4 
if %p2.fbr.sr%==1 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==1 set/a p2.fbr.se=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==1 set   p2.fbr.sd=Novice 
if %p2.fbr.sr%==2 set/a p2.fbr.sm=5 
if %p2.fbr.sr%==2 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==2 set/a p2.fbr.se=(%p1.fbr.sv% * 30) / 10 
if %p2.fbr.sr%==2 set   p2.fbr.sd=F 
if %p2.fbr.sr%==3 set/a p2.fbr.sm=6 
if %p2.fbr.sr%==3 set/a p2.fbr.sc=(%p1.fbr.sv% * 20) / 10 
if %p2.fbr.sr%==3 set/a p2.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p2.fbr.sr%==3 set   p2.fbr.sd=E 
if %p2.fbr.sr%==4 set/a p2.fbr.sm=7 
if %p2.fbr.sr%==4 set/a p2.fbr.sc=(%p1.fbr.sv% * 50) / 10 
if %p2.fbr.sr%==4 set/a p2.fbr.se=(%p1.fbr.sv% * 40) / 10 
if %p2.fbr.sr%==4 set   p2.fbr.sd=D 
if %p2.fbr.sr%==5 set/a p2.fbr.sm=8 
if %p2.fbr.sr%==5 set/a p2.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==5 set/a p2.fbr.se=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==5 set   p2.fbr.sd=C 
if %p2.fbr.sr%==6 set/a p2.fbr.sm=9 
if %p2.fbr.sr%==6 set/a p2.fbr.sc=(%p1.fbr.sv% * 60) / 10 
if %p2.fbr.sr%==6 set/a p2.fbr.se=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==6 set   p2.fbr.sd=B 
if %p2.fbr.sr%==7 set/a p2.fbr.sm=10 
if %p2.fbr.sr%==7 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==7 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==7 set   p2.fbr.sd=A 
if %p2.fbr.sr%==8 set/a p2.fbr.sm=11 
if %p2.fbr.sr%==8 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==8 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==8 set   p2.fbr.sd=9 
if %p2.fbr.sr%==9 set/a p2.fbr.sm=12 
if %p2.fbr.sr%==9 set/a p2.fbr.sc=(%p1.fbr.sv% * 80) / 10 
if %p2.fbr.sr%==9 set/a p2.fbr.se=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==9 set   p2.fbr.sd=8 
if %p2.fbr.sr%==10 set/a p2.fbr.sm=14 
if %p2.fbr.sr%==10 set/a p2.fbr.sc=(%p1.fbr.sv% * 100) / 10 
if %p2.fbr.sr%==10 set/a p2.fbr.se=(%p1.fbr.sv% * 140) / 10 
if %p2.fbr.sr%==10 set   p2.fbr.sd=7 
if %p2.fbr.sr%==11 set/a p2.fbr.sm=16 
if %p2.fbr.sr%==11 set/a p2.fbr.sc=(%p1.fbr.sv% * 120) / 10 
if %p2.fbr.sr%==11 set/a p2.fbr.se=(%p1.fbr.sv% * 180) / 10 
if %p2.fbr.sr%==11 set   p2.fbr.sd=6 
if %p2.fbr.sr%==12 set/a p2.fbr.sm=18 
if %p2.fbr.sr%==12 set/a p2.fbr.sc=(%p1.fbr.sv% * 140) / 10 
if %p2.fbr.sr%==12 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==12 set   p2.fbr.sd=5 
if %p2.fbr.sr%==13 set/a p2.fbr.sm=20 
if %p2.fbr.sr%==13 set/a p2.fbr.sc=(%p1.fbr.sv% * 160) / 10 
if %p2.fbr.sr%==13 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==13 set   p2.fbr.sd=4 
if %p2.fbr.sr%==14 set/a p2.fbr.sm=24 
if %p2.fbr.sr%==14 set/a p2.fbr.sc=(%p1.fbr.sv% * 240) / 10 
if %p2.fbr.sr%==14 set/a p2.fbr.se=(%p1.fbr.sv% * 200) / 10 
if %p2.fbr.sr%==14 set   p2.fbr.sd=3 
if %p2.fbr.sr%==15 set/a p2.fbr.sm=28 
if %p2.fbr.sr%==15 set/a p2.fbr.sc=(%p1.fbr.sv% * 360) / 10 
if %p2.fbr.sr%==15 set/a p2.fbr.se=(%p1.fbr.sv% * 300) / 10 
if %p2.fbr.sr%==15 set   p2.fbr.sd=2 
if %p2.fbr.sr%==16 set/a p2.fbr.sm=34 
if %p2.fbr.sr%==16 set/a p2.fbr.sc=(%p1.fbr.sv% * 480) / 10 
if %p2.fbr.sr%==16 set/a p2.fbr.se=(%p1.fbr.sv% * 400) / 10 
if %p2.fbr.sr%==16 set   p2.fbr.sd=1 
if %p2.fbr.sr%==17 set/a p2.fbr.sm=40 
if %p2.fbr.sr%==17 set/a p2.fbr.sc=0 
if %p2.fbr.sr%==17 set/a p2.fbr.se=0 
if %p2.fbr.sr%==17   set p2.fbr.sd=0 
goto:eof
:fsl.dec
if %p1.fsl.sr%==0 set/a p1.fsl.sm=0 
if %p1.fsl.sr%==0 set/a p1.fsl.sc=800
if %p1.fsl.sr%==0 set/a p1.fsl.se=0 
if %p1.fsl.sr%==0   set p1.fsl.sd=Not Learnt 
if %p1.fsl.sr%==1 set/a p1.fsl.sm=4 
if %p1.fsl.sr%==1 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==1 set/a p1.fsl.se=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==1 set   p1.fsl.sd=Novice 
if %p1.fsl.sr%==2 set/a p1.fsl.sm=5 
if %p1.fsl.sr%==2 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==2 set/a p1.fsl.se=(%p1.fsl.sv% * 30) / 10 
if %p1.fsl.sr%==2 set   p1.fsl.sd=F 
if %p1.fsl.sr%==3 set/a p1.fsl.sm=6 
if %p1.fsl.sr%==3 set/a p1.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p1.fsl.sr%==3 set/a p1.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p1.fsl.sr%==3 set   p1.fsl.sd=E 
if %p1.fsl.sr%==4 set/a p1.fsl.sm=7 
if %p1.fsl.sr%==4 set/a p1.fsl.sc=(%p1.fsl.sv% * 50) / 10 
if %p1.fsl.sr%==4 set/a p1.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p1.fsl.sr%==4 set   p1.fsl.sd=D 
if %p1.fsl.sr%==5 set/a p1.fsl.sm=8 
if %p1.fsl.sr%==5 set/a p1.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==5 set/a p1.fsl.se=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==5 set   p1.fsl.sd=C 
if %p1.fsl.sr%==6 set/a p1.fsl.sm=9 
if %p1.fsl.sr%==6 set/a p1.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p1.fsl.sr%==6 set/a p1.fsl.se=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==6 set   p1.fsl.sd=B 
if %p1.fsl.sr%==7 set/a p1.fsl.sm=10 
if %p1.fsl.sr%==7 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==7 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==7 set   p1.fsl.sd=A 
if %p1.fsl.sr%==8 set/a p1.fsl.sm=11 
if %p1.fsl.sr%==8 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==8 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==8 set   p1.fsl.sd=9 
if %p1.fsl.sr%==9 set/a p1.fsl.sm=12 
if %p1.fsl.sr%==9 set/a p1.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p1.fsl.sr%==9 set/a p1.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==9 set   p1.fsl.sd=8 
if %p1.fsl.sr%==10 set/a p1.fsl.sm=14 
if %p1.fsl.sr%==10 set/a p1.fsl.sc=(%p1.fsl.sv% * 100) / 10 
if %p1.fsl.sr%==10 set/a p1.fsl.se=(%p1.fsl.sv% * 140) / 10 
if %p1.fsl.sr%==10 set   p1.fsl.sd=7 
if %p1.fsl.sr%==11 set/a p1.fsl.sm=16 
if %p1.fsl.sr%==11 set/a p1.fsl.sc=(%p1.fsl.sv% * 120) / 10 
if %p1.fsl.sr%==11 set/a p1.fsl.se=(%p1.fsl.sv% * 180) / 10 
if %p1.fsl.sr%==11 set   p1.fsl.sd=6 
if %p1.fsl.sr%==12 set/a p1.fsl.sm=18 
if %p1.fsl.sr%==12 set/a p1.fsl.sc=(%p1.fsl.sv% * 140) / 10 
if %p1.fsl.sr%==12 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==12 set   p1.fsl.sd=5 
if %p1.fsl.sr%==13 set/a p1.fsl.sm=20 
if %p1.fsl.sr%==13 set/a p1.fsl.sc=(%p1.fsl.sv% * 160) / 10 
if %p1.fsl.sr%==13 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==13 set   p1.fsl.sd=4 
if %p1.fsl.sr%==14 set/a p1.fsl.sm=24 
if %p1.fsl.sr%==14 set/a p1.fsl.sc=(%p1.fsl.sv% * 240) / 10 
if %p1.fsl.sr%==14 set/a p1.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p1.fsl.sr%==14 set   p1.fsl.sd=3 
if %p1.fsl.sr%==15 set/a p1.fsl.sm=28 
if %p1.fsl.sr%==15 set/a p1.fsl.sc=(%p1.fsl.sv% * 360) / 10 
if %p1.fsl.sr%==15 set/a p1.fsl.se=(%p1.fsl.sv% * 300) / 10 
if %p1.fsl.sr%==15 set   p1.fsl.sd=2 
if %p1.fsl.sr%==16 set/a p1.fsl.sm=34 
if %p1.fsl.sr%==16 set/a p1.fsl.sc=(%p1.fsl.sv% * 480) / 10 
if %p1.fsl.sr%==16 set/a p1.fsl.se=(%p1.fsl.sv% * 400) / 10 
if %p1.fsl.sr%==16 set   p1.fsl.sd=1 
if %p1.fsl.sr%==17 set/a p1.fsl.sm=40 
if %p1.fsl.sr%==17 set/a p1.fsl.sc=0 
if %p1.fsl.sr%==17 set/a p1.fsl.se=0 
if %p1.fsl.sr%==17   set p1.fsl.sd=0 
 
 
if %p2.fsl.sr%==0 set/a p2.fsl.sm=0 
if %p2.fsl.sr%==0 set/a p2.fsl.sc=800
if %p2.fsl.sr%==0 set/a p2.fsl.se=0 
if %p2.fsl.sr%==0   set p2.fsl.sd=Not Learnt 
if %p2.fsl.sr%==1 set/a p2.fsl.sm=4 
if %p2.fsl.sr%==1 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==1 set/a p2.fsl.se=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==1 set   p2.fsl.sd=Novice 
if %p2.fsl.sr%==2 set/a p2.fsl.sm=5 
if %p2.fsl.sr%==2 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==2 set/a p2.fsl.se=(%p1.fsl.sv% * 30) / 10 
if %p2.fsl.sr%==2 set   p2.fsl.sd=F 
if %p2.fsl.sr%==3 set/a p2.fsl.sm=6 
if %p2.fsl.sr%==3 set/a p2.fsl.sc=(%p1.fsl.sv% * 20) / 10 
if %p2.fsl.sr%==3 set/a p2.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p2.fsl.sr%==3 set   p2.fsl.sd=E 
if %p2.fsl.sr%==4 set/a p2.fsl.sm=7 
if %p2.fsl.sr%==4 set/a p2.fsl.sc=(%p1.fsl.sv% * 50) / 10 
if %p2.fsl.sr%==4 set/a p2.fsl.se=(%p1.fsl.sv% * 40) / 10 
if %p2.fsl.sr%==4 set   p2.fsl.sd=D 
if %p2.fsl.sr%==5 set/a p2.fsl.sm=8 
if %p2.fsl.sr%==5 set/a p2.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==5 set/a p2.fsl.se=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==5 set   p2.fsl.sd=C 
if %p2.fsl.sr%==6 set/a p2.fsl.sm=9 
if %p2.fsl.sr%==6 set/a p2.fsl.sc=(%p1.fsl.sv% * 60) / 10 
if %p2.fsl.sr%==6 set/a p2.fsl.se=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==6 set   p2.fsl.sd=B 
if %p2.fsl.sr%==7 set/a p2.fsl.sm=10 
if %p2.fsl.sr%==7 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==7 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==7 set   p2.fsl.sd=A 
if %p2.fsl.sr%==8 set/a p2.fsl.sm=11 
if %p2.fsl.sr%==8 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==8 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==8 set   p2.fsl.sd=9 
if %p2.fsl.sr%==9 set/a p2.fsl.sm=12 
if %p2.fsl.sr%==9 set/a p2.fsl.sc=(%p1.fsl.sv% * 80) / 10 
if %p2.fsl.sr%==9 set/a p2.fsl.se=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==9 set   p2.fsl.sd=8 
if %p2.fsl.sr%==10 set/a p2.fsl.sm=14 
if %p2.fsl.sr%==10 set/a p2.fsl.sc=(%p1.fsl.sv% * 100) / 10 
if %p2.fsl.sr%==10 set/a p2.fsl.se=(%p1.fsl.sv% * 140) / 10 
if %p2.fsl.sr%==10 set   p2.fsl.sd=7 
if %p2.fsl.sr%==11 set/a p2.fsl.sm=16 
if %p2.fsl.sr%==11 set/a p2.fsl.sc=(%p1.fsl.sv% * 120) / 10 
if %p2.fsl.sr%==11 set/a p2.fsl.se=(%p1.fsl.sv% * 180) / 10 
if %p2.fsl.sr%==11 set   p2.fsl.sd=6 
if %p2.fsl.sr%==12 set/a p2.fsl.sm=18 
if %p2.fsl.sr%==12 set/a p2.fsl.sc=(%p1.fsl.sv% * 140) / 10 
if %p2.fsl.sr%==12 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==12 set   p2.fsl.sd=5 
if %p2.fsl.sr%==13 set/a p2.fsl.sm=20 
if %p2.fsl.sr%==13 set/a p2.fsl.sc=(%p1.fsl.sv% * 160) / 10 
if %p2.fsl.sr%==13 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==13 set   p2.fsl.sd=4 
if %p2.fsl.sr%==14 set/a p2.fsl.sm=24 
if %p2.fsl.sr%==14 set/a p2.fsl.sc=(%p1.fsl.sv% * 240) / 10 
if %p2.fsl.sr%==14 set/a p2.fsl.se=(%p1.fsl.sv% * 200) / 10 
if %p2.fsl.sr%==14 set   p2.fsl.sd=3 
if %p2.fsl.sr%==15 set/a p2.fsl.sm=28 
if %p2.fsl.sr%==15 set/a p2.fsl.sc=(%p1.fsl.sv% * 360) / 10 
if %p2.fsl.sr%==15 set/a p2.fsl.se=(%p1.fsl.sv% * 300) / 10 
if %p2.fsl.sr%==15 set   p2.fsl.sd=2 
if %p2.fsl.sr%==16 set/a p2.fsl.sm=34 
if %p2.fsl.sr%==16 set/a p2.fsl.sc=(%p1.fsl.sv% * 480) / 10 
if %p2.fsl.sr%==16 set/a p2.fsl.se=(%p1.fsl.sv% * 400) / 10 
if %p2.fsl.sr%==16 set   p2.fsl.sd=1 
if %p2.fsl.sr%==17 set/a p2.fsl.sm=40 
if %p2.fsl.sr%==17 set/a p2.fsl.sc=0 
if %p2.fsl.sr%==17 set/a p2.fsl.se=0 
if %p2.fsl.sr%==17   set p2.fsl.sd=0 
goto:eof
:wwt.dec
if %p1.wwt.sr%==0 set/a p1.wwt.sm=0 
if %p1.wwt.sr%==0 set/a p1.wwt.sc=100
if %p1.wwt.sr%==0 set/a p1.wwt.se=0 
if %p1.wwt.sr%==0   set p1.wwt.sd=Not Learnt 
if %p1.wwt.sr%==1 set/a p1.wwt.sm=4 
if %p1.wwt.sr%==1 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==1 set/a p1.wwt.se=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==1 set   p1.wwt.sd=Novice 
if %p1.wwt.sr%==2 set/a p1.wwt.sm=5 
if %p1.wwt.sr%==2 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==2 set/a p1.wwt.se=(%p1.wwt.sv% * 30) / 10 
if %p1.wwt.sr%==2 set   p1.wwt.sd=F 
if %p1.wwt.sr%==3 set/a p1.wwt.sm=6 
if %p1.wwt.sr%==3 set/a p1.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p1.wwt.sr%==3 set/a p1.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p1.wwt.sr%==3 set   p1.wwt.sd=E 
if %p1.wwt.sr%==4 set/a p1.wwt.sm=7 
if %p1.wwt.sr%==4 set/a p1.wwt.sc=(%p1.wwt.sv% * 50) / 10 
if %p1.wwt.sr%==4 set/a p1.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p1.wwt.sr%==4 set   p1.wwt.sd=D 
if %p1.wwt.sr%==5 set/a p1.wwt.sm=8 
if %p1.wwt.sr%==5 set/a p1.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==5 set/a p1.wwt.se=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==5 set   p1.wwt.sd=C 
if %p1.wwt.sr%==6 set/a p1.wwt.sm=9 
if %p1.wwt.sr%==6 set/a p1.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p1.wwt.sr%==6 set/a p1.wwt.se=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==6 set   p1.wwt.sd=B 
if %p1.wwt.sr%==7 set/a p1.wwt.sm=10 
if %p1.wwt.sr%==7 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==7 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==7 set   p1.wwt.sd=A 
if %p1.wwt.sr%==8 set/a p1.wwt.sm=11 
if %p1.wwt.sr%==8 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==8 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==8 set   p1.wwt.sd=9 
if %p1.wwt.sr%==9 set/a p1.wwt.sm=12 
if %p1.wwt.sr%==9 set/a p1.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p1.wwt.sr%==9 set/a p1.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==9 set   p1.wwt.sd=8 
if %p1.wwt.sr%==10 set/a p1.wwt.sm=14 
if %p1.wwt.sr%==10 set/a p1.wwt.sc=(%p1.wwt.sv% * 100) / 10 
if %p1.wwt.sr%==10 set/a p1.wwt.se=(%p1.wwt.sv% * 140) / 10 
if %p1.wwt.sr%==10 set   p1.wwt.sd=7 
if %p1.wwt.sr%==11 set/a p1.wwt.sm=16 
if %p1.wwt.sr%==11 set/a p1.wwt.sc=(%p1.wwt.sv% * 120) / 10 
if %p1.wwt.sr%==11 set/a p1.wwt.se=(%p1.wwt.sv% * 180) / 10 
if %p1.wwt.sr%==11 set   p1.wwt.sd=6 
if %p1.wwt.sr%==12 set/a p1.wwt.sm=18 
if %p1.wwt.sr%==12 set/a p1.wwt.sc=(%p1.wwt.sv% * 140) / 10 
if %p1.wwt.sr%==12 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==12 set   p1.wwt.sd=5 
if %p1.wwt.sr%==13 set/a p1.wwt.sm=20 
if %p1.wwt.sr%==13 set/a p1.wwt.sc=(%p1.wwt.sv% * 160) / 10 
if %p1.wwt.sr%==13 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==13 set   p1.wwt.sd=4 
if %p1.wwt.sr%==14 set/a p1.wwt.sm=24 
if %p1.wwt.sr%==14 set/a p1.wwt.sc=(%p1.wwt.sv% * 240) / 10 
if %p1.wwt.sr%==14 set/a p1.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p1.wwt.sr%==14 set   p1.wwt.sd=3 
if %p1.wwt.sr%==15 set/a p1.wwt.sm=28 
if %p1.wwt.sr%==15 set/a p1.wwt.sc=(%p1.wwt.sv% * 360) / 10 
if %p1.wwt.sr%==15 set/a p1.wwt.se=(%p1.wwt.sv% * 300) / 10 
if %p1.wwt.sr%==15 set   p1.wwt.sd=2 
if %p1.wwt.sr%==16 set/a p1.wwt.sm=34 
if %p1.wwt.sr%==16 set/a p1.wwt.sc=(%p1.wwt.sv% * 480) / 10 
if %p1.wwt.sr%==16 set/a p1.wwt.se=(%p1.wwt.sv% * 400) / 10 
if %p1.wwt.sr%==16 set   p1.wwt.sd=1 
if %p1.wwt.sr%==17 set/a p1.wwt.sm=40 
if %p1.wwt.sr%==17 set/a p1.wwt.sc=0 
if %p1.wwt.sr%==17 set/a p1.wwt.se=0 
if %p1.wwt.sr%==17   set p1.wwt.sd=0 
 
 
if %p2.wwt.sr%==0 set/a p2.wwt.sm=0 
if %p2.wwt.sr%==0 set/a p2.wwt.sc=100
if %p2.wwt.sr%==0 set/a p2.wwt.se=0 
if %p2.wwt.sr%==0   set p2.wwt.sd=Not Learnt 
if %p2.wwt.sr%==1 set/a p2.wwt.sm=4 
if %p2.wwt.sr%==1 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==1 set/a p2.wwt.se=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==1 set   p2.wwt.sd=Novice 
if %p2.wwt.sr%==2 set/a p2.wwt.sm=5 
if %p2.wwt.sr%==2 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==2 set/a p2.wwt.se=(%p1.wwt.sv% * 30) / 10 
if %p2.wwt.sr%==2 set   p2.wwt.sd=F 
if %p2.wwt.sr%==3 set/a p2.wwt.sm=6 
if %p2.wwt.sr%==3 set/a p2.wwt.sc=(%p1.wwt.sv% * 20) / 10 
if %p2.wwt.sr%==3 set/a p2.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p2.wwt.sr%==3 set   p2.wwt.sd=E 
if %p2.wwt.sr%==4 set/a p2.wwt.sm=7 
if %p2.wwt.sr%==4 set/a p2.wwt.sc=(%p1.wwt.sv% * 50) / 10 
if %p2.wwt.sr%==4 set/a p2.wwt.se=(%p1.wwt.sv% * 40) / 10 
if %p2.wwt.sr%==4 set   p2.wwt.sd=D 
if %p2.wwt.sr%==5 set/a p2.wwt.sm=8 
if %p2.wwt.sr%==5 set/a p2.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==5 set/a p2.wwt.se=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==5 set   p2.wwt.sd=C 
if %p2.wwt.sr%==6 set/a p2.wwt.sm=9 
if %p2.wwt.sr%==6 set/a p2.wwt.sc=(%p1.wwt.sv% * 60) / 10 
if %p2.wwt.sr%==6 set/a p2.wwt.se=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==6 set   p2.wwt.sd=B 
if %p2.wwt.sr%==7 set/a p2.wwt.sm=10 
if %p2.wwt.sr%==7 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==7 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==7 set   p2.wwt.sd=A 
if %p2.wwt.sr%==8 set/a p2.wwt.sm=11 
if %p2.wwt.sr%==8 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==8 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==8 set   p2.wwt.sd=9 
if %p2.wwt.sr%==9 set/a p2.wwt.sm=12 
if %p2.wwt.sr%==9 set/a p2.wwt.sc=(%p1.wwt.sv% * 80) / 10 
if %p2.wwt.sr%==9 set/a p2.wwt.se=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==9 set   p2.wwt.sd=8 
if %p2.wwt.sr%==10 set/a p2.wwt.sm=14 
if %p2.wwt.sr%==10 set/a p2.wwt.sc=(%p1.wwt.sv% * 100) / 10 
if %p2.wwt.sr%==10 set/a p2.wwt.se=(%p1.wwt.sv% * 140) / 10 
if %p2.wwt.sr%==10 set   p2.wwt.sd=7 
if %p2.wwt.sr%==11 set/a p2.wwt.sm=16 
if %p2.wwt.sr%==11 set/a p2.wwt.sc=(%p1.wwt.sv% * 120) / 10 
if %p2.wwt.sr%==11 set/a p2.wwt.se=(%p1.wwt.sv% * 180) / 10 
if %p2.wwt.sr%==11 set   p2.wwt.sd=6 
if %p2.wwt.sr%==12 set/a p2.wwt.sm=18 
if %p2.wwt.sr%==12 set/a p2.wwt.sc=(%p1.wwt.sv% * 140) / 10 
if %p2.wwt.sr%==12 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==12 set   p2.wwt.sd=5 
if %p2.wwt.sr%==13 set/a p2.wwt.sm=20 
if %p2.wwt.sr%==13 set/a p2.wwt.sc=(%p1.wwt.sv% * 160) / 10 
if %p2.wwt.sr%==13 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==13 set   p2.wwt.sd=4 
if %p2.wwt.sr%==14 set/a p2.wwt.sm=24 
if %p2.wwt.sr%==14 set/a p2.wwt.sc=(%p1.wwt.sv% * 240) / 10 
if %p2.wwt.sr%==14 set/a p2.wwt.se=(%p1.wwt.sv% * 200) / 10 
if %p2.wwt.sr%==14 set   p2.wwt.sd=3 
if %p2.wwt.sr%==15 set/a p2.wwt.sm=28 
if %p2.wwt.sr%==15 set/a p2.wwt.sc=(%p1.wwt.sv% * 360) / 10 
if %p2.wwt.sr%==15 set/a p2.wwt.se=(%p1.wwt.sv% * 300) / 10 
if %p2.wwt.sr%==15 set   p2.wwt.sd=2 
if %p2.wwt.sr%==16 set/a p2.wwt.sm=34 
if %p2.wwt.sr%==16 set/a p2.wwt.sc=(%p1.wwt.sv% * 480) / 10 
if %p2.wwt.sr%==16 set/a p2.wwt.se=(%p1.wwt.sv% * 400) / 10 
if %p2.wwt.sr%==16 set   p2.wwt.sd=1 
if %p2.wwt.sr%==17 set/a p2.wwt.sm=40 
if %p2.wwt.sr%==17 set/a p2.wwt.sc=0 
if %p2.wwt.sr%==17 set/a p2.wwt.se=0 
if %p2.wwt.sr%==17   set p2.wwt.sd=0 
goto:eof
:blk.dec
if %p1.blk.sr%==0 set/a p1.blk.sm=0 
if %p1.blk.sr%==0 set/a p1.blk.sc=400
if %p1.blk.sr%==0 set/a p1.blk.se=0 
if %p1.blk.sr%==0   set p1.blk.sd=Not Learnt 
if %p1.blk.sr%==1 set/a p1.blk.sm=4 
if %p1.blk.sr%==1 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==1 set/a p1.blk.se=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==1 set   p1.blk.sd=Novice 
if %p1.blk.sr%==2 set/a p1.blk.sm=5 
if %p1.blk.sr%==2 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==2 set/a p1.blk.se=(%p1.blk.sv% * 30) / 10 
if %p1.blk.sr%==2 set   p1.blk.sd=F 
if %p1.blk.sr%==3 set/a p1.blk.sm=6 
if %p1.blk.sr%==3 set/a p1.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p1.blk.sr%==3 set/a p1.blk.se=(%p1.blk.sv% * 40) / 10 
if %p1.blk.sr%==3 set   p1.blk.sd=E 
if %p1.blk.sr%==4 set/a p1.blk.sm=7 
if %p1.blk.sr%==4 set/a p1.blk.sc=(%p1.blk.sv% * 50) / 10 
if %p1.blk.sr%==4 set/a p1.blk.se=(%p1.blk.sv% * 40) / 10 
if %p1.blk.sr%==4 set   p1.blk.sd=D 
if %p1.blk.sr%==5 set/a p1.blk.sm=8 
if %p1.blk.sr%==5 set/a p1.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==5 set/a p1.blk.se=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==5 set   p1.blk.sd=C 
if %p1.blk.sr%==6 set/a p1.blk.sm=9 
if %p1.blk.sr%==6 set/a p1.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p1.blk.sr%==6 set/a p1.blk.se=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==6 set   p1.blk.sd=B 
if %p1.blk.sr%==7 set/a p1.blk.sm=10 
if %p1.blk.sr%==7 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==7 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==7 set   p1.blk.sd=A 
if %p1.blk.sr%==8 set/a p1.blk.sm=11 
if %p1.blk.sr%==8 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==8 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==8 set   p1.blk.sd=9 
if %p1.blk.sr%==9 set/a p1.blk.sm=12 
if %p1.blk.sr%==9 set/a p1.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p1.blk.sr%==9 set/a p1.blk.se=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==9 set   p1.blk.sd=8 
if %p1.blk.sr%==10 set/a p1.blk.sm=14 
if %p1.blk.sr%==10 set/a p1.blk.sc=(%p1.blk.sv% * 100) / 10 
if %p1.blk.sr%==10 set/a p1.blk.se=(%p1.blk.sv% * 140) / 10 
if %p1.blk.sr%==10 set   p1.blk.sd=7 
if %p1.blk.sr%==11 set/a p1.blk.sm=16 
if %p1.blk.sr%==11 set/a p1.blk.sc=(%p1.blk.sv% * 120) / 10 
if %p1.blk.sr%==11 set/a p1.blk.se=(%p1.blk.sv% * 180) / 10 
if %p1.blk.sr%==11 set   p1.blk.sd=6 
if %p1.blk.sr%==12 set/a p1.blk.sm=18 
if %p1.blk.sr%==12 set/a p1.blk.sc=(%p1.blk.sv% * 140) / 10 
if %p1.blk.sr%==12 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==12 set   p1.blk.sd=5 
if %p1.blk.sr%==13 set/a p1.blk.sm=20 
if %p1.blk.sr%==13 set/a p1.blk.sc=(%p1.blk.sv% * 160) / 10 
if %p1.blk.sr%==13 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==13 set   p1.blk.sd=4 
if %p1.blk.sr%==14 set/a p1.blk.sm=24 
if %p1.blk.sr%==14 set/a p1.blk.sc=(%p1.blk.sv% * 240) / 10 
if %p1.blk.sr%==14 set/a p1.blk.se=(%p1.blk.sv% * 200) / 10 
if %p1.blk.sr%==14 set   p1.blk.sd=3 
if %p1.blk.sr%==15 set/a p1.blk.sm=28 
if %p1.blk.sr%==15 set/a p1.blk.sc=(%p1.blk.sv% * 360) / 10 
if %p1.blk.sr%==15 set/a p1.blk.se=(%p1.blk.sv% * 300) / 10 
if %p1.blk.sr%==15 set   p1.blk.sd=2 
if %p1.blk.sr%==16 set/a p1.blk.sm=34 
if %p1.blk.sr%==16 set/a p1.blk.sc=(%p1.blk.sv% * 480) / 10 
if %p1.blk.sr%==16 set/a p1.blk.se=(%p1.blk.sv% * 400) / 10 
if %p1.blk.sr%==16 set   p1.blk.sd=1 
if %p1.blk.sr%==17 set/a p1.blk.sm=40 
if %p1.blk.sr%==17 set/a p1.blk.sc=0 
if %p1.blk.sr%==17 set/a p1.blk.se=0 
if %p1.blk.sr%==17   set p1.blk.sd=0 
 
 
if %p2.blk.sr%==0 set/a p2.blk.sm=0 
if %p2.blk.sr%==0 set/a p2.blk.sc=400
if %p2.blk.sr%==0 set/a p2.blk.se=0 
if %p2.blk.sr%==0   set p2.blk.sd=Not Learnt 
if %p2.blk.sr%==1 set/a p2.blk.sm=4 
if %p2.blk.sr%==1 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==1 set/a p2.blk.se=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==1 set   p2.blk.sd=Novice 
if %p2.blk.sr%==2 set/a p2.blk.sm=5 
if %p2.blk.sr%==2 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==2 set/a p2.blk.se=(%p1.blk.sv% * 30) / 10 
if %p2.blk.sr%==2 set   p2.blk.sd=F 
if %p2.blk.sr%==3 set/a p2.blk.sm=6 
if %p2.blk.sr%==3 set/a p2.blk.sc=(%p1.blk.sv% * 20) / 10 
if %p2.blk.sr%==3 set/a p2.blk.se=(%p1.blk.sv% * 40) / 10 
if %p2.blk.sr%==3 set   p2.blk.sd=E 
if %p2.blk.sr%==4 set/a p2.blk.sm=7 
if %p2.blk.sr%==4 set/a p2.blk.sc=(%p1.blk.sv% * 50) / 10 
if %p2.blk.sr%==4 set/a p2.blk.se=(%p1.blk.sv% * 40) / 10 
if %p2.blk.sr%==4 set   p2.blk.sd=D 
if %p2.blk.sr%==5 set/a p2.blk.sm=8 
if %p2.blk.sr%==5 set/a p2.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==5 set/a p2.blk.se=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==5 set   p2.blk.sd=C 
if %p2.blk.sr%==6 set/a p2.blk.sm=9 
if %p2.blk.sr%==6 set/a p2.blk.sc=(%p1.blk.sv% * 60) / 10 
if %p2.blk.sr%==6 set/a p2.blk.se=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==6 set   p2.blk.sd=B 
if %p2.blk.sr%==7 set/a p2.blk.sm=10 
if %p2.blk.sr%==7 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==7 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==7 set   p2.blk.sd=A 
if %p2.blk.sr%==8 set/a p2.blk.sm=11 
if %p2.blk.sr%==8 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==8 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==8 set   p2.blk.sd=9 
if %p2.blk.sr%==9 set/a p2.blk.sm=12 
if %p2.blk.sr%==9 set/a p2.blk.sc=(%p1.blk.sv% * 80) / 10 
if %p2.blk.sr%==9 set/a p2.blk.se=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==9 set   p2.blk.sd=8 
if %p2.blk.sr%==10 set/a p2.blk.sm=14 
if %p2.blk.sr%==10 set/a p2.blk.sc=(%p1.blk.sv% * 100) / 10 
if %p2.blk.sr%==10 set/a p2.blk.se=(%p1.blk.sv% * 140) / 10 
if %p2.blk.sr%==10 set   p2.blk.sd=7 
if %p2.blk.sr%==11 set/a p2.blk.sm=16 
if %p2.blk.sr%==11 set/a p2.blk.sc=(%p1.blk.sv% * 120) / 10 
if %p2.blk.sr%==11 set/a p2.blk.se=(%p1.blk.sv% * 180) / 10 
if %p2.blk.sr%==11 set   p2.blk.sd=6 
if %p2.blk.sr%==12 set/a p2.blk.sm=18 
if %p2.blk.sr%==12 set/a p2.blk.sc=(%p1.blk.sv% * 140) / 10 
if %p2.blk.sr%==12 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==12 set   p2.blk.sd=5 
if %p2.blk.sr%==13 set/a p2.blk.sm=20 
if %p2.blk.sr%==13 set/a p2.blk.sc=(%p1.blk.sv% * 160) / 10 
if %p2.blk.sr%==13 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==13 set   p2.blk.sd=4 
if %p2.blk.sr%==14 set/a p2.blk.sm=24 
if %p2.blk.sr%==14 set/a p2.blk.sc=(%p1.blk.sv% * 240) / 10 
if %p2.blk.sr%==14 set/a p2.blk.se=(%p1.blk.sv% * 200) / 10 
if %p2.blk.sr%==14 set   p2.blk.sd=3 
if %p2.blk.sr%==15 set/a p2.blk.sm=28 
if %p2.blk.sr%==15 set/a p2.blk.sc=(%p1.blk.sv% * 360) / 10 
if %p2.blk.sr%==15 set/a p2.blk.se=(%p1.blk.sv% * 300) / 10 
if %p2.blk.sr%==15 set   p2.blk.sd=2 
if %p2.blk.sr%==16 set/a p2.blk.sm=34 
if %p2.blk.sr%==16 set/a p2.blk.sc=(%p1.blk.sv% * 480) / 10 
if %p2.blk.sr%==16 set/a p2.blk.se=(%p1.blk.sv% * 400) / 10 
if %p2.blk.sr%==16 set   p2.blk.sd=1 
if %p2.blk.sr%==17 set/a p2.blk.sm=40 
if %p2.blk.sr%==17 set/a p2.blk.sc=0 
if %p2.blk.sr%==17 set/a p2.blk.se=0 
if %p2.blk.sr%==17   set p2.blk.sd=0 
goto:eof
:lsh.dec
if %p1.lsh.sr%==0 set/a p1.lsh.sm=0 
if %p1.lsh.sr%==0 set/a p1.lsh.sc=300
if %p1.lsh.sr%==0 set/a p1.lsh.se=0 
if %p1.lsh.sr%==0   set p1.lsh.sd=Not Learnt 
if %p1.lsh.sr%==1 set/a p1.lsh.sm=4 
if %p1.lsh.sr%==1 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==1 set/a p1.lsh.se=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==1 set   p1.lsh.sd=Novice 
if %p1.lsh.sr%==2 set/a p1.lsh.sm=5 
if %p1.lsh.sr%==2 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==2 set/a p1.lsh.se=(%p1.lsh.sv% * 30) / 10 
if %p1.lsh.sr%==2 set   p1.lsh.sd=F 
if %p1.lsh.sr%==3 set/a p1.lsh.sm=6 
if %p1.lsh.sr%==3 set/a p1.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p1.lsh.sr%==3 set/a p1.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p1.lsh.sr%==3 set   p1.lsh.sd=E 
if %p1.lsh.sr%==4 set/a p1.lsh.sm=7 
if %p1.lsh.sr%==4 set/a p1.lsh.sc=(%p1.lsh.sv% * 50) / 10 
if %p1.lsh.sr%==4 set/a p1.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p1.lsh.sr%==4 set   p1.lsh.sd=D 
if %p1.lsh.sr%==5 set/a p1.lsh.sm=8 
if %p1.lsh.sr%==5 set/a p1.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==5 set/a p1.lsh.se=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==5 set   p1.lsh.sd=C 
if %p1.lsh.sr%==6 set/a p1.lsh.sm=9 
if %p1.lsh.sr%==6 set/a p1.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p1.lsh.sr%==6 set/a p1.lsh.se=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==6 set   p1.lsh.sd=B 
if %p1.lsh.sr%==7 set/a p1.lsh.sm=10 
if %p1.lsh.sr%==7 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==7 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==7 set   p1.lsh.sd=A 
if %p1.lsh.sr%==8 set/a p1.lsh.sm=11 
if %p1.lsh.sr%==8 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==8 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==8 set   p1.lsh.sd=9 
if %p1.lsh.sr%==9 set/a p1.lsh.sm=12 
if %p1.lsh.sr%==9 set/a p1.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p1.lsh.sr%==9 set/a p1.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==9 set   p1.lsh.sd=8 
if %p1.lsh.sr%==10 set/a p1.lsh.sm=14 
if %p1.lsh.sr%==10 set/a p1.lsh.sc=(%p1.lsh.sv% * 100) / 10 
if %p1.lsh.sr%==10 set/a p1.lsh.se=(%p1.lsh.sv% * 140) / 10 
if %p1.lsh.sr%==10 set   p1.lsh.sd=7 
if %p1.lsh.sr%==11 set/a p1.lsh.sm=16 
if %p1.lsh.sr%==11 set/a p1.lsh.sc=(%p1.lsh.sv% * 120) / 10 
if %p1.lsh.sr%==11 set/a p1.lsh.se=(%p1.lsh.sv% * 180) / 10 
if %p1.lsh.sr%==11 set   p1.lsh.sd=6 
if %p1.lsh.sr%==12 set/a p1.lsh.sm=18 
if %p1.lsh.sr%==12 set/a p1.lsh.sc=(%p1.lsh.sv% * 140) / 10 
if %p1.lsh.sr%==12 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==12 set   p1.lsh.sd=5 
if %p1.lsh.sr%==13 set/a p1.lsh.sm=20 
if %p1.lsh.sr%==13 set/a p1.lsh.sc=(%p1.lsh.sv% * 160) / 10 
if %p1.lsh.sr%==13 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==13 set   p1.lsh.sd=4 
if %p1.lsh.sr%==14 set/a p1.lsh.sm=24 
if %p1.lsh.sr%==14 set/a p1.lsh.sc=(%p1.lsh.sv% * 240) / 10 
if %p1.lsh.sr%==14 set/a p1.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p1.lsh.sr%==14 set   p1.lsh.sd=3 
if %p1.lsh.sr%==15 set/a p1.lsh.sm=28 
if %p1.lsh.sr%==15 set/a p1.lsh.sc=(%p1.lsh.sv% * 360) / 10 
if %p1.lsh.sr%==15 set/a p1.lsh.se=(%p1.lsh.sv% * 300) / 10 
if %p1.lsh.sr%==15 set   p1.lsh.sd=2 
if %p1.lsh.sr%==16 set/a p1.lsh.sm=34 
if %p1.lsh.sr%==16 set/a p1.lsh.sc=(%p1.lsh.sv% * 480) / 10 
if %p1.lsh.sr%==16 set/a p1.lsh.se=(%p1.lsh.sv% * 400) / 10 
if %p1.lsh.sr%==16 set   p1.lsh.sd=1 
if %p1.lsh.sr%==17 set/a p1.lsh.sm=40 
if %p1.lsh.sr%==17 set/a p1.lsh.sc=0 
if %p1.lsh.sr%==17 set/a p1.lsh.se=0 
if %p1.lsh.sr%==17   set p1.lsh.sd=0 
 
 
if %p2.lsh.sr%==0 set/a p2.lsh.sm=0 
if %p2.lsh.sr%==0 set/a p2.lsh.sc=300
if %p2.lsh.sr%==0 set/a p2.lsh.se=0 
if %p2.lsh.sr%==0   set p2.lsh.sd=Not Learnt 
if %p2.lsh.sr%==1 set/a p2.lsh.sm=4 
if %p2.lsh.sr%==1 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==1 set/a p2.lsh.se=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==1 set   p2.lsh.sd=Novice 
if %p2.lsh.sr%==2 set/a p2.lsh.sm=5 
if %p2.lsh.sr%==2 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==2 set/a p2.lsh.se=(%p1.lsh.sv% * 30) / 10 
if %p2.lsh.sr%==2 set   p2.lsh.sd=F 
if %p2.lsh.sr%==3 set/a p2.lsh.sm=6 
if %p2.lsh.sr%==3 set/a p2.lsh.sc=(%p1.lsh.sv% * 20) / 10 
if %p2.lsh.sr%==3 set/a p2.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p2.lsh.sr%==3 set   p2.lsh.sd=E 
if %p2.lsh.sr%==4 set/a p2.lsh.sm=7 
if %p2.lsh.sr%==4 set/a p2.lsh.sc=(%p1.lsh.sv% * 50) / 10 
if %p2.lsh.sr%==4 set/a p2.lsh.se=(%p1.lsh.sv% * 40) / 10 
if %p2.lsh.sr%==4 set   p2.lsh.sd=D 
if %p2.lsh.sr%==5 set/a p2.lsh.sm=8 
if %p2.lsh.sr%==5 set/a p2.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==5 set/a p2.lsh.se=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==5 set   p2.lsh.sd=C 
if %p2.lsh.sr%==6 set/a p2.lsh.sm=9 
if %p2.lsh.sr%==6 set/a p2.lsh.sc=(%p1.lsh.sv% * 60) / 10 
if %p2.lsh.sr%==6 set/a p2.lsh.se=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==6 set   p2.lsh.sd=B 
if %p2.lsh.sr%==7 set/a p2.lsh.sm=10 
if %p2.lsh.sr%==7 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==7 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==7 set   p2.lsh.sd=A 
if %p2.lsh.sr%==8 set/a p2.lsh.sm=11 
if %p2.lsh.sr%==8 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==8 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==8 set   p2.lsh.sd=9 
if %p2.lsh.sr%==9 set/a p2.lsh.sm=12 
if %p2.lsh.sr%==9 set/a p2.lsh.sc=(%p1.lsh.sv% * 80) / 10 
if %p2.lsh.sr%==9 set/a p2.lsh.se=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==9 set   p2.lsh.sd=8 
if %p2.lsh.sr%==10 set/a p2.lsh.sm=14 
if %p2.lsh.sr%==10 set/a p2.lsh.sc=(%p1.lsh.sv% * 100) / 10 
if %p2.lsh.sr%==10 set/a p2.lsh.se=(%p1.lsh.sv% * 140) / 10 
if %p2.lsh.sr%==10 set   p2.lsh.sd=7 
if %p2.lsh.sr%==11 set/a p2.lsh.sm=16 
if %p2.lsh.sr%==11 set/a p2.lsh.sc=(%p1.lsh.sv% * 120) / 10 
if %p2.lsh.sr%==11 set/a p2.lsh.se=(%p1.lsh.sv% * 180) / 10 
if %p2.lsh.sr%==11 set   p2.lsh.sd=6 
if %p2.lsh.sr%==12 set/a p2.lsh.sm=18 
if %p2.lsh.sr%==12 set/a p2.lsh.sc=(%p1.lsh.sv% * 140) / 10 
if %p2.lsh.sr%==12 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==12 set   p2.lsh.sd=5 
if %p2.lsh.sr%==13 set/a p2.lsh.sm=20 
if %p2.lsh.sr%==13 set/a p2.lsh.sc=(%p1.lsh.sv% * 160) / 10 
if %p2.lsh.sr%==13 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==13 set   p2.lsh.sd=4 
if %p2.lsh.sr%==14 set/a p2.lsh.sm=24 
if %p2.lsh.sr%==14 set/a p2.lsh.sc=(%p1.lsh.sv% * 240) / 10 
if %p2.lsh.sr%==14 set/a p2.lsh.se=(%p1.lsh.sv% * 200) / 10 
if %p2.lsh.sr%==14 set   p2.lsh.sd=3 
if %p2.lsh.sr%==15 set/a p2.lsh.sm=28 
if %p2.lsh.sr%==15 set/a p2.lsh.sc=(%p1.lsh.sv% * 360) / 10 
if %p2.lsh.sr%==15 set/a p2.lsh.se=(%p1.lsh.sv% * 300) / 10 
if %p2.lsh.sr%==15 set   p2.lsh.sd=2 
if %p2.lsh.sr%==16 set/a p2.lsh.sm=34 
if %p2.lsh.sr%==16 set/a p2.lsh.sc=(%p1.lsh.sv% * 480) / 10 
if %p2.lsh.sr%==16 set/a p2.lsh.se=(%p1.lsh.sv% * 400) / 10 
if %p2.lsh.sr%==16 set   p2.lsh.sd=1 
if %p2.lsh.sr%==17 set/a p2.lsh.sm=40 
if %p2.lsh.sr%==17 set/a p2.lsh.sc=0 
if %p2.lsh.sr%==17 set/a p2.lsh.se=0 
if %p2.lsh.sr%==17   set p2.lsh.sd=0 
goto:eof
:wrg.dec
if %p1.wrg.sr%==0 set/a p1.wrg.sm=0 
if %p1.wrg.sr%==0 set/a p1.wrg.sc=800
if %p1.wrg.sr%==0 set/a p1.wrg.se=0 
if %p1.wrg.sr%==0   set p1.wrg.sd=Not Learnt 
if %p1.wrg.sr%==1 set/a p1.wrg.sm=4 
if %p1.wrg.sr%==1 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==1 set/a p1.wrg.se=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==1 set   p1.wrg.sd=Novice 
if %p1.wrg.sr%==2 set/a p1.wrg.sm=5 
if %p1.wrg.sr%==2 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==2 set/a p1.wrg.se=(%p1.wrg.sv% * 30) / 10 
if %p1.wrg.sr%==2 set   p1.wrg.sd=F 
if %p1.wrg.sr%==3 set/a p1.wrg.sm=6 
if %p1.wrg.sr%==3 set/a p1.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p1.wrg.sr%==3 set/a p1.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p1.wrg.sr%==3 set   p1.wrg.sd=E 
if %p1.wrg.sr%==4 set/a p1.wrg.sm=7 
if %p1.wrg.sr%==4 set/a p1.wrg.sc=(%p1.wrg.sv% * 50) / 10 
if %p1.wrg.sr%==4 set/a p1.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p1.wrg.sr%==4 set   p1.wrg.sd=D 
if %p1.wrg.sr%==5 set/a p1.wrg.sm=8 
if %p1.wrg.sr%==5 set/a p1.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==5 set/a p1.wrg.se=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==5 set   p1.wrg.sd=C 
if %p1.wrg.sr%==6 set/a p1.wrg.sm=9 
if %p1.wrg.sr%==6 set/a p1.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p1.wrg.sr%==6 set/a p1.wrg.se=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==6 set   p1.wrg.sd=B 
if %p1.wrg.sr%==7 set/a p1.wrg.sm=10 
if %p1.wrg.sr%==7 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==7 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==7 set   p1.wrg.sd=A 
if %p1.wrg.sr%==8 set/a p1.wrg.sm=11 
if %p1.wrg.sr%==8 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==8 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==8 set   p1.wrg.sd=9 
if %p1.wrg.sr%==9 set/a p1.wrg.sm=12 
if %p1.wrg.sr%==9 set/a p1.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p1.wrg.sr%==9 set/a p1.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==9 set   p1.wrg.sd=8 
if %p1.wrg.sr%==10 set/a p1.wrg.sm=14 
if %p1.wrg.sr%==10 set/a p1.wrg.sc=(%p1.wrg.sv% * 100) / 10 
if %p1.wrg.sr%==10 set/a p1.wrg.se=(%p1.wrg.sv% * 140) / 10 
if %p1.wrg.sr%==10 set   p1.wrg.sd=7 
if %p1.wrg.sr%==11 set/a p1.wrg.sm=16 
if %p1.wrg.sr%==11 set/a p1.wrg.sc=(%p1.wrg.sv% * 120) / 10 
if %p1.wrg.sr%==11 set/a p1.wrg.se=(%p1.wrg.sv% * 180) / 10 
if %p1.wrg.sr%==11 set   p1.wrg.sd=6 
if %p1.wrg.sr%==12 set/a p1.wrg.sm=18 
if %p1.wrg.sr%==12 set/a p1.wrg.sc=(%p1.wrg.sv% * 140) / 10 
if %p1.wrg.sr%==12 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==12 set   p1.wrg.sd=5 
if %p1.wrg.sr%==13 set/a p1.wrg.sm=20 
if %p1.wrg.sr%==13 set/a p1.wrg.sc=(%p1.wrg.sv% * 160) / 10 
if %p1.wrg.sr%==13 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==13 set   p1.wrg.sd=4 
if %p1.wrg.sr%==14 set/a p1.wrg.sm=24 
if %p1.wrg.sr%==14 set/a p1.wrg.sc=(%p1.wrg.sv% * 240) / 10 
if %p1.wrg.sr%==14 set/a p1.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p1.wrg.sr%==14 set   p1.wrg.sd=3 
if %p1.wrg.sr%==15 set/a p1.wrg.sm=28 
if %p1.wrg.sr%==15 set/a p1.wrg.sc=(%p1.wrg.sv% * 360) / 10 
if %p1.wrg.sr%==15 set/a p1.wrg.se=(%p1.wrg.sv% * 300) / 10 
if %p1.wrg.sr%==15 set   p1.wrg.sd=2 
if %p1.wrg.sr%==16 set/a p1.wrg.sm=34 
if %p1.wrg.sr%==16 set/a p1.wrg.sc=(%p1.wrg.sv% * 480) / 10 
if %p1.wrg.sr%==16 set/a p1.wrg.se=(%p1.wrg.sv% * 400) / 10 
if %p1.wrg.sr%==16 set   p1.wrg.sd=1 
if %p1.wrg.sr%==17 set/a p1.wrg.sm=40 
if %p1.wrg.sr%==17 set/a p1.wrg.sc=0 
if %p1.wrg.sr%==17 set/a p1.wrg.se=0 
if %p1.wrg.sr%==17   set p1.wrg.sd=0 
 
 
if %p2.wrg.sr%==0 set/a p2.wrg.sm=0 
if %p2.wrg.sr%==0 set/a p2.wrg.sc=800
if %p2.wrg.sr%==0 set/a p2.wrg.se=0 
if %p2.wrg.sr%==0   set p2.wrg.sd=Not Learnt 
if %p2.wrg.sr%==1 set/a p2.wrg.sm=4 
if %p2.wrg.sr%==1 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==1 set/a p2.wrg.se=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==1 set   p2.wrg.sd=Novice 
if %p2.wrg.sr%==2 set/a p2.wrg.sm=5 
if %p2.wrg.sr%==2 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==2 set/a p2.wrg.se=(%p1.wrg.sv% * 30) / 10 
if %p2.wrg.sr%==2 set   p2.wrg.sd=F 
if %p2.wrg.sr%==3 set/a p2.wrg.sm=6 
if %p2.wrg.sr%==3 set/a p2.wrg.sc=(%p1.wrg.sv% * 20) / 10 
if %p2.wrg.sr%==3 set/a p2.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p2.wrg.sr%==3 set   p2.wrg.sd=E 
if %p2.wrg.sr%==4 set/a p2.wrg.sm=7 
if %p2.wrg.sr%==4 set/a p2.wrg.sc=(%p1.wrg.sv% * 50) / 10 
if %p2.wrg.sr%==4 set/a p2.wrg.se=(%p1.wrg.sv% * 40) / 10 
if %p2.wrg.sr%==4 set   p2.wrg.sd=D 
if %p2.wrg.sr%==5 set/a p2.wrg.sm=8 
if %p2.wrg.sr%==5 set/a p2.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==5 set/a p2.wrg.se=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==5 set   p2.wrg.sd=C 
if %p2.wrg.sr%==6 set/a p2.wrg.sm=9 
if %p2.wrg.sr%==6 set/a p2.wrg.sc=(%p1.wrg.sv% * 60) / 10 
if %p2.wrg.sr%==6 set/a p2.wrg.se=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==6 set   p2.wrg.sd=B 
if %p2.wrg.sr%==7 set/a p2.wrg.sm=10 
if %p2.wrg.sr%==7 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==7 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==7 set   p2.wrg.sd=A 
if %p2.wrg.sr%==8 set/a p2.wrg.sm=11 
if %p2.wrg.sr%==8 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==8 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==8 set   p2.wrg.sd=9 
if %p2.wrg.sr%==9 set/a p2.wrg.sm=12 
if %p2.wrg.sr%==9 set/a p2.wrg.sc=(%p1.wrg.sv% * 80) / 10 
if %p2.wrg.sr%==9 set/a p2.wrg.se=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==9 set   p2.wrg.sd=8 
if %p2.wrg.sr%==10 set/a p2.wrg.sm=14 
if %p2.wrg.sr%==10 set/a p2.wrg.sc=(%p1.wrg.sv% * 100) / 10 
if %p2.wrg.sr%==10 set/a p2.wrg.se=(%p1.wrg.sv% * 140) / 10 
if %p2.wrg.sr%==10 set   p2.wrg.sd=7 
if %p2.wrg.sr%==11 set/a p2.wrg.sm=16 
if %p2.wrg.sr%==11 set/a p2.wrg.sc=(%p1.wrg.sv% * 120) / 10 
if %p2.wrg.sr%==11 set/a p2.wrg.se=(%p1.wrg.sv% * 180) / 10 
if %p2.wrg.sr%==11 set   p2.wrg.sd=6 
if %p2.wrg.sr%==12 set/a p2.wrg.sm=18 
if %p2.wrg.sr%==12 set/a p2.wrg.sc=(%p1.wrg.sv% * 140) / 10 
if %p2.wrg.sr%==12 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==12 set   p2.wrg.sd=5 
if %p2.wrg.sr%==13 set/a p2.wrg.sm=20 
if %p2.wrg.sr%==13 set/a p2.wrg.sc=(%p1.wrg.sv% * 160) / 10 
if %p2.wrg.sr%==13 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==13 set   p2.wrg.sd=4 
if %p2.wrg.sr%==14 set/a p2.wrg.sm=24 
if %p2.wrg.sr%==14 set/a p2.wrg.sc=(%p1.wrg.sv% * 240) / 10 
if %p2.wrg.sr%==14 set/a p2.wrg.se=(%p1.wrg.sv% * 200) / 10 
if %p2.wrg.sr%==14 set   p2.wrg.sd=3 
if %p2.wrg.sr%==15 set/a p2.wrg.sm=28 
if %p2.wrg.sr%==15 set/a p2.wrg.sc=(%p1.wrg.sv% * 360) / 10 
if %p2.wrg.sr%==15 set/a p2.wrg.se=(%p1.wrg.sv% * 300) / 10 
if %p2.wrg.sr%==15 set   p2.wrg.sd=2 
if %p2.wrg.sr%==16 set/a p2.wrg.sm=34 
if %p2.wrg.sr%==16 set/a p2.wrg.sc=(%p1.wrg.sv% * 480) / 10 
if %p2.wrg.sr%==16 set/a p2.wrg.se=(%p1.wrg.sv% * 400) / 10 
if %p2.wrg.sr%==16 set   p2.wrg.sd=1 
if %p2.wrg.sr%==17 set/a p2.wrg.sm=40 
if %p2.wrg.sr%==17 set/a p2.wrg.sc=0 
if %p2.wrg.sr%==17 set/a p2.wrg.se=0 
if %p2.wrg.sr%==17   set p2.wrg.sd=0 
goto:eof
:arc.dec
if %p1.arc.sr%==0 set/a p1.arc.sm=0 
if %p1.arc.sr%==0 set/a p1.arc.sc=1000
if %p1.arc.sr%==0 set/a p1.arc.se=0 
if %p1.arc.sr%==0   set p1.arc.sd=Not Learnt 
if %p1.arc.sr%==1 set/a p1.arc.sm=4 
if %p1.arc.sr%==1 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==1 set/a p1.arc.se=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==1 set   p1.arc.sd=Novice 
if %p1.arc.sr%==2 set/a p1.arc.sm=5 
if %p1.arc.sr%==2 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==2 set/a p1.arc.se=(%p1.arc.sv% * 30) / 10 
if %p1.arc.sr%==2 set   p1.arc.sd=F 
if %p1.arc.sr%==3 set/a p1.arc.sm=6 
if %p1.arc.sr%==3 set/a p1.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p1.arc.sr%==3 set/a p1.arc.se=(%p1.arc.sv% * 40) / 10 
if %p1.arc.sr%==3 set   p1.arc.sd=E 
if %p1.arc.sr%==4 set/a p1.arc.sm=7 
if %p1.arc.sr%==4 set/a p1.arc.sc=(%p1.arc.sv% * 50) / 10 
if %p1.arc.sr%==4 set/a p1.arc.se=(%p1.arc.sv% * 40) / 10 
if %p1.arc.sr%==4 set   p1.arc.sd=D 
if %p1.arc.sr%==5 set/a p1.arc.sm=8 
if %p1.arc.sr%==5 set/a p1.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==5 set/a p1.arc.se=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==5 set   p1.arc.sd=C 
if %p1.arc.sr%==6 set/a p1.arc.sm=9 
if %p1.arc.sr%==6 set/a p1.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p1.arc.sr%==6 set/a p1.arc.se=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==6 set   p1.arc.sd=B 
if %p1.arc.sr%==7 set/a p1.arc.sm=10 
if %p1.arc.sr%==7 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==7 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==7 set   p1.arc.sd=A 
if %p1.arc.sr%==8 set/a p1.arc.sm=11 
if %p1.arc.sr%==8 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==8 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==8 set   p1.arc.sd=9 
if %p1.arc.sr%==9 set/a p1.arc.sm=12 
if %p1.arc.sr%==9 set/a p1.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p1.arc.sr%==9 set/a p1.arc.se=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==9 set   p1.arc.sd=8 
if %p1.arc.sr%==10 set/a p1.arc.sm=14 
if %p1.arc.sr%==10 set/a p1.arc.sc=(%p1.arc.sv% * 100) / 10 
if %p1.arc.sr%==10 set/a p1.arc.se=(%p1.arc.sv% * 140) / 10 
if %p1.arc.sr%==10 set   p1.arc.sd=7 
if %p1.arc.sr%==11 set/a p1.arc.sm=16 
if %p1.arc.sr%==11 set/a p1.arc.sc=(%p1.arc.sv% * 120) / 10 
if %p1.arc.sr%==11 set/a p1.arc.se=(%p1.arc.sv% * 180) / 10 
if %p1.arc.sr%==11 set   p1.arc.sd=6 
if %p1.arc.sr%==12 set/a p1.arc.sm=18 
if %p1.arc.sr%==12 set/a p1.arc.sc=(%p1.arc.sv% * 140) / 10 
if %p1.arc.sr%==12 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==12 set   p1.arc.sd=5 
if %p1.arc.sr%==13 set/a p1.arc.sm=20 
if %p1.arc.sr%==13 set/a p1.arc.sc=(%p1.arc.sv% * 160) / 10 
if %p1.arc.sr%==13 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==13 set   p1.arc.sd=4 
if %p1.arc.sr%==14 set/a p1.arc.sm=24 
if %p1.arc.sr%==14 set/a p1.arc.sc=(%p1.arc.sv% * 240) / 10 
if %p1.arc.sr%==14 set/a p1.arc.se=(%p1.arc.sv% * 200) / 10 
if %p1.arc.sr%==14 set   p1.arc.sd=3 
if %p1.arc.sr%==15 set/a p1.arc.sm=28 
if %p1.arc.sr%==15 set/a p1.arc.sc=(%p1.arc.sv% * 360) / 10 
if %p1.arc.sr%==15 set/a p1.arc.se=(%p1.arc.sv% * 300) / 10 
if %p1.arc.sr%==15 set   p1.arc.sd=2 
if %p1.arc.sr%==16 set/a p1.arc.sm=34 
if %p1.arc.sr%==16 set/a p1.arc.sc=(%p1.arc.sv% * 480) / 10 
if %p1.arc.sr%==16 set/a p1.arc.se=(%p1.arc.sv% * 400) / 10 
if %p1.arc.sr%==16 set   p1.arc.sd=1 
if %p1.arc.sr%==17 set/a p1.arc.sm=40 
if %p1.arc.sr%==17 set/a p1.arc.sc=0 
if %p1.arc.sr%==17 set/a p1.arc.se=0 
if %p1.arc.sr%==17   set p1.arc.sd=0 
 
 
if %p2.arc.sr%==0 set/a p2.arc.sm=0 
if %p2.arc.sr%==0 set/a p2.arc.sc=1000
if %p2.arc.sr%==0 set/a p2.arc.se=0 
if %p2.arc.sr%==0   set p2.arc.sd=Not Learnt 
if %p2.arc.sr%==1 set/a p2.arc.sm=4 
if %p2.arc.sr%==1 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==1 set/a p2.arc.se=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==1 set   p2.arc.sd=Novice 
if %p2.arc.sr%==2 set/a p2.arc.sm=5 
if %p2.arc.sr%==2 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==2 set/a p2.arc.se=(%p1.arc.sv% * 30) / 10 
if %p2.arc.sr%==2 set   p2.arc.sd=F 
if %p2.arc.sr%==3 set/a p2.arc.sm=6 
if %p2.arc.sr%==3 set/a p2.arc.sc=(%p1.arc.sv% * 20) / 10 
if %p2.arc.sr%==3 set/a p2.arc.se=(%p1.arc.sv% * 40) / 10 
if %p2.arc.sr%==3 set   p2.arc.sd=E 
if %p2.arc.sr%==4 set/a p2.arc.sm=7 
if %p2.arc.sr%==4 set/a p2.arc.sc=(%p1.arc.sv% * 50) / 10 
if %p2.arc.sr%==4 set/a p2.arc.se=(%p1.arc.sv% * 40) / 10 
if %p2.arc.sr%==4 set   p2.arc.sd=D 
if %p2.arc.sr%==5 set/a p2.arc.sm=8 
if %p2.arc.sr%==5 set/a p2.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==5 set/a p2.arc.se=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==5 set   p2.arc.sd=C 
if %p2.arc.sr%==6 set/a p2.arc.sm=9 
if %p2.arc.sr%==6 set/a p2.arc.sc=(%p1.arc.sv% * 60) / 10 
if %p2.arc.sr%==6 set/a p2.arc.se=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==6 set   p2.arc.sd=B 
if %p2.arc.sr%==7 set/a p2.arc.sm=10 
if %p2.arc.sr%==7 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==7 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==7 set   p2.arc.sd=A 
if %p2.arc.sr%==8 set/a p2.arc.sm=11 
if %p2.arc.sr%==8 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==8 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==8 set   p2.arc.sd=9 
if %p2.arc.sr%==9 set/a p2.arc.sm=12 
if %p2.arc.sr%==9 set/a p2.arc.sc=(%p1.arc.sv% * 80) / 10 
if %p2.arc.sr%==9 set/a p2.arc.se=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==9 set   p2.arc.sd=8 
if %p2.arc.sr%==10 set/a p2.arc.sm=14 
if %p2.arc.sr%==10 set/a p2.arc.sc=(%p1.arc.sv% * 100) / 10 
if %p2.arc.sr%==10 set/a p2.arc.se=(%p1.arc.sv% * 140) / 10 
if %p2.arc.sr%==10 set   p2.arc.sd=7 
if %p2.arc.sr%==11 set/a p2.arc.sm=16 
if %p2.arc.sr%==11 set/a p2.arc.sc=(%p1.arc.sv% * 120) / 10 
if %p2.arc.sr%==11 set/a p2.arc.se=(%p1.arc.sv% * 180) / 10 
if %p2.arc.sr%==11 set   p2.arc.sd=6 
if %p2.arc.sr%==12 set/a p2.arc.sm=18 
if %p2.arc.sr%==12 set/a p2.arc.sc=(%p1.arc.sv% * 140) / 10 
if %p2.arc.sr%==12 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==12 set   p2.arc.sd=5 
if %p2.arc.sr%==13 set/a p2.arc.sm=20 
if %p2.arc.sr%==13 set/a p2.arc.sc=(%p1.arc.sv% * 160) / 10 
if %p2.arc.sr%==13 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==13 set   p2.arc.sd=4 
if %p2.arc.sr%==14 set/a p2.arc.sm=24 
if %p2.arc.sr%==14 set/a p2.arc.sc=(%p1.arc.sv% * 240) / 10 
if %p2.arc.sr%==14 set/a p2.arc.se=(%p1.arc.sv% * 200) / 10 
if %p2.arc.sr%==14 set   p2.arc.sd=3 
if %p2.arc.sr%==15 set/a p2.arc.sm=28 
if %p2.arc.sr%==15 set/a p2.arc.sc=(%p1.arc.sv% * 360) / 10 
if %p2.arc.sr%==15 set/a p2.arc.se=(%p1.arc.sv% * 300) / 10 
if %p2.arc.sr%==15 set   p2.arc.sd=2 
if %p2.arc.sr%==16 set/a p2.arc.sm=34 
if %p2.arc.sr%==16 set/a p2.arc.sc=(%p1.arc.sv% * 480) / 10 
if %p2.arc.sr%==16 set/a p2.arc.se=(%p1.arc.sv% * 400) / 10 
if %p2.arc.sr%==16 set   p2.arc.sd=1 
if %p2.arc.sr%==17 set/a p2.arc.sm=40 
if %p2.arc.sr%==17 set/a p2.arc.sc=0 
if %p2.arc.sr%==17 set/a p2.arc.se=0 
if %p2.arc.sr%==17   set p2.arc.sd=0
goto:eof

:func.save
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Autosaving
echo.
echo.                             
ren saves.lmc saves.bat
echo set name1=%name1%> saves.bat
echo set name2=%name2%>> saves.bat
echo set/a p1.set.hl=%p1.set.hl%>> saves.bat
echo set/a p2.set.hl=%p2.set.hl%>> saves.bat
echo set/a p1.set.en=%p1.set.en%>> saves.bat
echo set/a p2.set.en=%p2.set.en%>> saves.bat

echo set/a p1sh=%p1sh% >> saves.bat
echo set/a p2sh=%p2sh% >> saves.bat
echo set/a e1sh=%e1sh% >> saves.bat
echo set/a e2sh=%e2sh% >> saves.bat
echo set/a d1sh=%d1sh% >> saves.bat
echo set/a d2sh=%d2sh% >> saves.bat

echo set/a p1.set.df=%p1.set.df% >> saves.bat
echo set/a p2.set.df=%p2.set.df% >> saves.bat
echo set/a p1.def=%p1.def% >> saves.bat
echo set/a p2.def=%p1.def% >> saves.bat
echo set/a score1=%score1% >> saves.bat
echo set/a score2=%score2% >> saves.bat
echo set/a p1.exp=%p1.exp% >> saves.bat
echo set/a p2.exp=%p2.exp% >> saves.bat

echo set mainselect1=attack>> saves.bat
echo set mainselect2=attack>> saves.bat
echo set store1=next>> saves.bat
echo set store2=next>> saves.bat
echo set p1.ews.vis=%p1.ews.vis% >> saves.bat
echo set p1.las.vis=%p1.ews.vis% >> saves.bat
echo set p1.fas.vis=%p1.ews.vis% >> saves.bat
echo set p2.ews.vis=%p2.ews.vis% >> saves.bat
echo set p2.las.vis=%p2.ews.vis% >> saves.bat
echo set p2.fas.vis=%p2.ews.vis% >> saves.bat
echo set/a p1.lmc.a=%p1.lmc.a% >> saves.bat
echo set/a p2.lmc.a=%p2.lmc.a% >> saves.bat
echo set/a p1.test.a=%p1.test.a% >> saves.bat
echo set/a p2.test.a=%p2.test.a% >> saves.bat

echo set/a p1.ews.a=%p1.ews.a% >> saves.bat
echo set/a p2.ews.a=%p2.ews.a% >> saves.bat
echo set/a p1.las.a=%p1.las.a% >> saves.bat
echo set/a p2.las.a=%p2.las.a% >> saves.bat
echo set/a p1.fas.a=%p1.fas.a% >> saves.bat
echo set/a p2.fas.a=%p2.fas.a% >> saves.bat
echo set/a p1.att.sr=%p1.att.sr% >> saves.bat
echo set/a p2.att.sr=%p2.att.sr% >> saves.bat
echo set/a p1.fus.sr=%p1.fus.sr% >> saves.bat
echo set/a p2.fus.sr=%p2.fus.sr% >> saves.bat
echo set/a p1.hla.sr=%p1.hla.sr% >> saves.bat
echo set/a p2.hla.sr=%p2.hla.sr% >> saves.bat
echo set/a p1.res.sr=%p1.res.sr% >> saves.bat
echo set/a p2.res.sr=%p2.res.sr% >> saves.bat
echo set/a p1.sok.sr=%p1.sok.sr% >> saves.bat
echo set/a p2.sok.sr=%p2.sok.sr% >> saves.bat
echo set/a p1.lig.sr=%p1.lig.sr% >> saves.bat
echo set/a p2.lig.sr=%p2.lig.sr% >> saves.bat
echo set/a p1.hdr.sr=%p1.hdr.sr% >> saves.bat
echo set/a p2.hdr.sr=%p2.hdr.sr% >> saves.bat
echo set/a p1.get.sr=%p1.get.sr% >> saves.bat
echo set/a p2.get.sr=%p2.get.sr% >> saves.bat
echo set/a p1.ice.sr=%p1.ice.sr% >> saves.bat
echo set/a p2.ice.sr=%p2.ice.sr% >> saves.bat
echo set/a p1.msh.sr=%p1.msh.sr% >> saves.bat
echo set/a p2.msh.sr=%p2.msh.sr% >> saves.bat
echo set/a p1.hly.sr=%p1.hly.sr% >> saves.bat
echo set/a p2.hly.sr=%p2.hly.sr% >> saves.bat
echo set/a p1.gen.sr=%p1.gen.sr% >> saves.bat
echo set/a p2.gen.sr=%p2.gen.sr% >> saves.bat
echo set/a p1.llc.sr=%p1.llc.sr% >> saves.bat
echo set/a p2.llc.sr=%p2.llc.sr% >> saves.bat
echo set/a p1.lbr.sr=%p1.lbr.sr% >> saves.bat
echo set/a p2.lbr.sr=%p2.lbr.sr% >> saves.bat
echo set/a p1.llb.sr=%p1.llb.sr% >> saves.bat
echo set/a p2.llb.sr=%p2.llb.sr% >> saves.bat
echo set/a p1.lbl.sr=%p1.lbl.sr% >> saves.bat
echo set/a p2.lbl.sr=%p2.lbl.sr% >> saves.bat
echo set/a p1.smh.sr=%p1.smh.sr% >> saves.bat
echo set/a p2.smh.sr=%p2.smh.sr% >> saves.bat
echo set/a p1.fsh.sr=%p1.fsh.sr% >> saves.bat
echo set/a p2.fsh.sr=%p2.fsh.sr% >> saves.bat
echo set/a p1.fbr.sr=%p1.fbr.sr% >> saves.bat
echo set/a p2.fbr.sr=%p2.fbr.sr% >> saves.bat
echo set/a p1.fsl.sr=%p1.fsl.sr% >> saves.bat
echo set/a p2.fsl.sr=%p2.fsl.sr% >> saves.bat
echo set/a p1.wwt.sr=%p1.wwt.sr% >> saves.bat
echo set/a p2.wwt.sr=%p2.wwt.sr% >> saves.bat
echo set/a p1.blk.sr=%p1.blk.sr% >> saves.bat
echo set/a p2.blk.sr=%p2.blk.sr% >> saves.bat
echo set/a p1.lsh.sr=%p1.lsh.sr% >> saves.bat
echo set/a p2.lsh.sr=%p2.lsh.sr% >> saves.bat
echo set/a p1.wrg.sr=%p1.wrg.sr% >> saves.bat
echo set/a p2.wrg.sr=%p2.wrg.sr% >> saves.bat
echo set/a p1.arc.sr=%p1.arc.sr% >> saves.bat
echo set/a p2.arc.sr=%p2.arc.sr% >> saves.bat

echo set/a ai.a=%ai.a% >> saves.bat
echo set/a ai.dif=%ai.dif% >> saves.bat
echo set ai.dif.v=%ai.dif.v% >> saves.bat
ren saves.bat saves.lmc
goto:eof