@echo off
title GERENCIAMENTO DA MAQUINA
mode 60,30
color 0b
rem comentario
:inicio
cls
echo ===========================
echo          GERENCIAMENTO DA MAQUINA
echo ===========================
echo [DM]DESLIGAR A MAQUINA
echo [RM]REINICIAR A MAQUINA
echo [HM]HIBERNAR A MAQUINA
echo [R]RETORNAR AO MENU
echo ============================
echo.
set /p op=Digite sua Opcao:
if /i %op% equ dm (goto:desligar)
if /i %op% equ rm (goto:reiniciar)
if /i %op% equ hm (goto:hibernar)
if /i %op% equ r (call menu.bat)  else (
   echo.
   echo --------------------
   echo  Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )

:desligar
shutdown /s
goto:inicio

:reiniciar
shutdown /r
goto:inicio

:hibernar
shutdown /h
goto:inicio