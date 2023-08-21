@echo off
title Jogos
mode 60,30
color f4
set /a cont=0
cls
set /a cont=5
echo Numero de tentativas =%cont% 
set /a numero=(%random% %%5) + 1
set /a cont=%cont% - 1
echo    Numero Sorteado: %numero%
echo.
echo ---------------------------------------------
:sorteio
cls
for /l %%n in (1,1,5) do (echo %%n)
set /p usuario=Digite seu numero da sorte: 
if /i %usuario% == %numero% (
echo    Acertou o Numero Sorteado foi exatamente o %numero%
) else (
if /i %usuario% LSS %numero% (
echo    ERROU!! Digite um numero maior) else (
echo    ERROU!! Digite um numero menor)
echo ----------------------------------------------
echo.
pause > nul)




set /p resp=Deseja sortear novo numero? [S/N]:
if /i %resp% == s (goto:sorteio) else (exit)
