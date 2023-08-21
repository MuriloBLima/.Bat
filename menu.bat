@echo off
title Menu Principal da atividade
mode 60,30
color fa
rem comentário
:inicio
cls
echo ==============================
echo     MENU PRINCIPAL
echo ==============================
echo [P] ACOTE OFFICE
echo [S] ERVICOS DE REDE
echo [A] PLICATIVOS WINDOWS
echo [G] ERENCIAMENTO DA MAQUINA
echo [E] NCERRAR SESSAO
echo [F] INALIZAR PROGRAMA
echo ===========================
echo.
set /p op=Digite sua opcao: 
if /i %op% equ p (call pacote_office.bat)
if /i %op% equ s (call servidos_de_rede.bat)
if /i %op% equ a (call aplicativos_windows.bat)
if /i %op% equ g (call gerenciamento_da_maquina.bat)
if /i %op% equ e (call Login.bat)
if /i %op% equ f (call exit) else (
   echo.
   echo --------------------
   echo  Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )
