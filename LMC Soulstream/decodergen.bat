@echo on
title decodergen
:decs
cls
set/p main=skillcode=
set/a no=1
echo. >> dec.output.txt
echo. %main% dec.output.txt
echo. >> dec.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.sm=0 >> dec.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.sc=%%p1.%main%.sc%% >> dec.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.se=0 >> dec.output.txt
echo if %%p1.%main%.sr%%==0   set p1.%main%.sd=Not Learnt >> dec.output.txt

:start
if %no%==17 goto final
if %no%==1 (
set/a sm=4
set/a se=20
set/a sc=20
set sd=Novice
)
if %no%==2 (
set/a sm=5
set/a se=30
set/a sc=20
set sd=F
)
if %no%==3 (
set/a sm=6
set/a se=40
set/a sc=20
set sd=E
)
if %no%==4 (
set/a sm=7
set/a sc=50
set/a se=40
set sd=D
)
if %no%==5 (
set/a sm=8
set/a sc=60
set/a se=60
set sd=C
)
if %no%==6 (
set/a sm=9
set/a sc=60
set/a se=80
set sd=B
)
if %no%==7 (
set/a sm=10
set/a sc=80
set/a se=100
set sd=A
)
if %no%==8 (
set/a sm=11
set/a sc=80
set/a se=100
set sd=9
)
if %no%==9 (
set/a sm=12
set/a sc=80
set/a se=100
set sd=8
)
if %no%==10 (
set/a sm=14
set/a sc=100
set/a se=140
set sd=7
)
if %no%==11 (
set/a sm=16
set/a sc=120
set/a se=180
set sd=6
)
if %no%==12 (
set/a sm=18
set/a sc=140
set/a se=200
set sd=5
)
if %no%==13 (
set/a sm=20
set/a sc=160
set/a se=200
set sd=4
)
if %no%==14 (
set/a sm=24
set/a sc=240
set/a se=200
set sd=3
)
if %no%==15 (
set/a sm=28
set/a sc=360
set/a se=300
set sd=2
)
if %no%==16 (
set/a sm=34
set/a sc=480
set/a se=400
set sd=1
)

echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.sm=%sm% >> dec.output.txt
echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.sc=(%%p1.%main%.sv%% * %sc%) / 10 >> dec.output.txt
echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.se=(%%p1.%main%.sv%% * %se%) / 10 >> dec.output.txt
echo if %%p1.%main%.sr%%==%no% set   p1.%main%.sd=%sd% >> dec.output.txt
set/a no+=1
goto start

:final
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.sm=40 >> dec.output.txt
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.sc=0 >> dec.output.txt
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.se=0 >> dec.output.txt
echo if %%p1.%main%.sr%%==17   set p1.%main%.sd=0 >> dec.output.txt

set/a no=1
echo :%main%.dec >> func.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.sm=0 >> func.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.sc=%%p1.%main%.sc%% >> func.output.txt
echo if %%p1.%main%.sr%%==0 set/a p1.%main%.se=0 >> func.output.txt
echo if %%p1.%main%.sr%%==0   set p1.%main%.sd=Not Learnt >> func.output.txt

:dec.1
if %no%==17 goto final.dec
if %no%==1 (
set/a sm=4
set/a se=20
set/a sc=20
set sd=Novice
)
if %no%==2 (
set/a sm=5
set/a se=30
set/a sc=20
set sd=F
)
if %no%==3 (
set/a sm=6
set/a se=40
set/a sc=20
set sd=E
)
if %no%==4 (
set/a sm=7
set/a sc=50
set/a se=40
set sd=D
)
if %no%==5 (
set/a sm=8
set/a sc=60
set/a se=60
set sd=C
)
if %no%==6 (
set/a sm=9
set/a sc=60
set/a se=80
set sd=B
)
if %no%==7 (
set/a sm=10
set/a sc=80
set/a se=100
set sd=A
)
if %no%==8 (
set/a sm=11
set/a sc=80
set/a se=100
set sd=9
)
if %no%==9 (
set/a sm=12
set/a sc=80
set/a se=100
set sd=8
)
if %no%==10 (
set/a sm=14
set/a sc=100
set/a se=140
set sd=7
)
if %no%==11 (
set/a sm=16
set/a sc=120
set/a se=180
set sd=6
)
if %no%==12 (
set/a sm=18
set/a sc=140
set/a se=200
set sd=5
)
if %no%==13 (
set/a sm=20
set/a sc=160
set/a se=200
set sd=4
)
if %no%==14 (
set/a sm=24
set/a sc=240
set/a se=200
set sd=3
)
if %no%==15 (
set/a sm=28
set/a sc=360
set/a se=300
set sd=2
)
if %no%==16 (
set/a sm=34
set/a sc=480
set/a se=400
set sd=1
)

echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.sm=%sm% >> func.output.txt
echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.sc=(%%p1.%main%.sv%% * %sc%) / 10 >> func.output.txt
echo if %%p1.%main%.sr%%==%no% set/a p1.%main%.se=(%%p1.%main%.sv%% * %se%) / 10 >> func.output.txt
echo if %%p1.%main%.sr%%==%no% set   p1.%main%.sd=%sd% >> func.output.txt
set/a no+=1
goto dec.1

:final.dec
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.sm=40 >> func.output.txt
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.sc=0 >> func.output.txt
echo if %%p1.%main%.sr%%==17 set/a p1.%main%.se=0 >> func.output.txt
echo if %%p1.%main%.sr%%==17   set p1.%main%.sd=0 >> func.output.txt
echo. >> func.output.txt
::p2

set/a no=1
echo. >> dec.output.txt
echo. %main% dec.output.txt
echo. >> dec.output.txt
echo if %%p2.%main%.sr%%==0 set/a p2.%main%.sm=0 >> dec.output.txt
echo if %%p2.%main%.sr%%==0 set/a p2.%main%.sc=%%p1.%main%.sc%% >> dec.output.txt
echo if %%p2.%main%.sr%%==0 set/a p2.%main%.se=0 >> dec.output.txt
echo if %%p2.%main%.sr%%==0   set p2.%main%.sd=Not Learnt >> dec.output.txt

:start2
if %no%==17 goto final2
if %no%==1 (
set/a sm=4
set/a se=20
set/a sc=20
set sd=Novice
)
if %no%==2 (
set/a sm=5
set/a se=30
set/a sc=20
set sd=F
)
if %no%==3 (
set/a sm=6
set/a se=40
set/a sc=20
set sd=E
)
if %no%==4 (
set/a sm=7
set/a sc=50
set/a se=40
set sd=D
)
if %no%==5 (
set/a sm=8
set/a sc=60
set/a se=60
set sd=C
)
if %no%==6 (
set/a sm=9
set/a sc=60
set/a se=80
set sd=B
)
if %no%==7 (
set/a sm=10
set/a sc=80
set/a se=100
set sd=A
)
if %no%==8 (
set/a sm=11
set/a sc=80
set/a se=100
set sd=9
)
if %no%==9 (
set/a sm=12
set/a sc=80
set/a se=100
set sd=8
)
if %no%==10 (
set/a sm=14
set/a sc=100
set/a se=140
set sd=7
)
if %no%==11 (
set/a sm=16
set/a sc=120
set/a se=180
set sd=6
)
if %no%==12 (
set/a sm=18
set/a sc=140
set/a se=200
set sd=5
)
if %no%==13 (
set/a sm=20
set/a sc=160
set/a se=200
set sd=4
)
if %no%==14 (
set/a sm=24
set/a sc=240
set/a se=200
set sd=3
)
if %no%==15 (
set/a sm=28
set/a sc=360
set/a se=300
set sd=2
)
if %no%==16 (
set/a sm=34
set/a sc=480
set/a se=400
set sd=1
)

echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.sm=%sm% >> dec.output.txt
echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.sc=(%%p1.%main%.sv%% * %sc%) / 10 >> dec.output.txt
echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.se=(%%p1.%main%.sv%% * %se%) / 10 >> dec.output.txt
echo if %%p2.%main%.sr%%==%no% set   p2.%main%.sd=%sd% >> dec.output.txt
set/a no+=1
goto start2

:final2
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.sm=40 >> dec.output.txt
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.sc=0 >> dec.output.txt
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.se=0 >> dec.output.txt
echo if %%p2.%main%.sr%%==17   set p2.%main%.sd=0 >> dec.output.txt

set/a no=0

echo if %%p2.%main%.sr%%==0 set/a p2.%main%.sm=0 >> func.output.txt
echo if %%p2.%main%.sr%%==0 set/a p2.%main%.sc=%%p2.%main%.sc%% >> func.output.txt
echo if %%p2.%main%.sr%%==0 set/a p2.%main%.se=0 >> func.output.txt
echo if %%p2.%main%.sr%%==0   set p2.%main%.sd=Not Learnt >> func.output.txt

:dec.2
if %no%==17 goto final.dec2
if %no%==1 (
set/a sm=4
set/a se=20
set/a sc=20
set sd=Novice
)
if %no%==2 (
set/a sm=5
set/a se=30
set/a sc=20
set sd=F
)
if %no%==3 (
set/a sm=6
set/a se=40
set/a sc=20
set sd=E
)
if %no%==4 (
set/a sm=7
set/a sc=50
set/a se=40
set sd=D
)
if %no%==5 (
set/a sm=8
set/a sc=60
set/a se=60
set sd=C
)
if %no%==6 (
set/a sm=9
set/a sc=60
set/a se=80
set sd=B
)
if %no%==7 (
set/a sm=10
set/a sc=80
set/a se=100
set sd=A
)
if %no%==8 (
set/a sm=11
set/a sc=80
set/a se=100
set sd=9
)
if %no%==9 (
set/a sm=12
set/a sc=80
set/a se=100
set sd=8
)
if %no%==10 (
set/a sm=14
set/a sc=100
set/a se=140
set sd=7
)
if %no%==11 (
set/a sm=16
set/a sc=120
set/a se=180
set sd=6
)
if %no%==12 (
set/a sm=18
set/a sc=140
set/a se=200
set sd=5
)
if %no%==13 (
set/a sm=20
set/a sc=160
set/a se=200
set sd=4
)
if %no%==14 (
set/a sm=24
set/a sc=240
set/a se=200
set sd=3
)
if %no%==15 (
set/a sm=28
set/a sc=360
set/a se=300
set sd=2
)
if %no%==16 (
set/a sm=34
set/a sc=480
set/a se=400
set sd=1
)
echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.sm=%sm% >> func.output.txt
echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.sc=(%%p2.%main%.sv%% * %sc%) / 10 >> func.output.txt
echo if %%p2.%main%.sr%%==%no% set/a p2.%main%.se=(%%p2.%main%.sv%% * %se%) / 10 >> func.output.txt
echo if %%p2.%main%.sr%%==%no% set   p2.%main%.sd=%sd% >> func.output.txt
set/a no+=1
goto dec.2

:final.dec2
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.sm=40 >> func.output.txt
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.sc=0 >> func.output.txt
echo if %%p2.%main%.sr%%==17 set/a p2.%main%.se=0 >> func.output.txt
echo if %%p2.%main%.sr%%==17   set p2.%main%.sd=0 >> func.output.txt
echo goto:eof >> func.output.txt
goto decs