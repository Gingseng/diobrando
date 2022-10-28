@echo off

echo %computername%
set /p pc=Nome do Computador da Impressora:

set /p zz=Nome do Compartilhamento:






:repet

set /p brd=Nome do Computador:

REM echo ^^XA^^PMN^^LL768^^PR2^^JMA^^LH16,16^^FO320,20^^CI0^^A0N,60,50^^FR^^FD%brd%^^FS^^FO320,80^^BY4,2.0,104^^B2N,104,N,N,N^^FR^^FD %brd%^^FS^^PQ1^^XZ > %temp%\brd.txt


ECHO ^^XA^^EG^^MTT^^XZ^^XA^^PMN^^MNY^^MMT^^MD0^^LH0,0^^LL508^^PR5^^JMA > %temp%\brd.txt
ECHO ^^FO120,20^^BY3,2.0,100^^BCN,100,N,N,Y^^FR^^FD%brd%^^FS^^FO120,150^^CI0^^ACN,53,24^^FR^^FD%brd%^^FS^^PQ1^^XZ >> %temp%\brd.txt



echo Impressora zebra_2 ... ...
rem print /d:\\%pc%\%zz% H:\TI\Zebra\micro.txt
print /d:\\%pc%\%zz% %temp%\brd.txt




echo 0 - Repetir


CHOICE /C 0123456789 /M "Select... "

IF %errorlevel% EQU 1 goto repet





Pause 
