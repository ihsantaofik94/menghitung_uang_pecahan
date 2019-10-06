@echo off
SET THEFILE=d:\latihan_pascal\project github\menghitung_uang_pecahan\menghitung_uang_pecahan.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o "d:\latihan_pascal\project github\menghitung_uang_pecahan\menghitung_uang_pecahan.exe" link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
