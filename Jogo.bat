@echo off
title Jogos
mode 60,30
color f4
set /a cont=5
:sorteio
cls
echo Numero de tentativas =%cont% 
pause > nul)
set /a numero=(%random% %%5) + 1
echo.
echo ---------------------------------------------
set /p usuario=Digite seu numero da sorte: 
if /i %usuario% == %numero% (
echo    Acertou o Numero Sorteado foi exatamente o %numero%) else (
echo    ERRROU!!!Numero Sorteado: %numero%)
echo ----------------------------------------------
set /a cont=%cont% - 1
echo.
pause > nul)
set /p resp=Deseja sortear novo numero? [S/N]:
if /i %resp% == s (goto:sorteio) else (exit)
