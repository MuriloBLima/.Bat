@echo off
title PACOTE OFFICE
mode 60,30
color 0b
rem comentario
:inicio
cls
echo ===========================
echo          PACOTE OFFICE
echo ===========================
echo [W]ORD
echo [E]XCEL
echo [A]CCESS
echo [P]POWER POINT
echo [R]ETORNAR AO MENU
echo ============================
echo.
set /p op=Digite sua Opcao:
if /i %op% equ w (goto:word)
if /i %op% equ e (goto:excel)
if /i %op% equ a (goto:access)
if /i %op% equ p (goto:powerpoint)
if /i %op% equ r (call menu.bat)  else (
   echo.
   echo --------------------
   echo  Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )

:word
start WINWORD.EXE
goto:inicio

:excel
start EXCEL.EXE
goto:inicio

:access
start MSACCESS.EXE
goto:inicio

:powerpoint
start POWERPNT.EXE
goto:inicio