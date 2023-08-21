@echo off
title APLICATIVOS DO WINDOWS
mode 60,30
color 0b
rem comentario
:inicio
cls
echo ===========================
echo          APLICATIVOS DO WINDOWS
echo ===========================
echo [C]ALCULADORA
echo [T]ECLADO VIRTUAL
echo [W]INDOWS EXPLORER
echo [P]PAINT
echo [B]LOCO DE NOTAS
echo [R]ETORNAR AO MENU
echo ============================
echo.
set /p op=Digite sua Opcao:
if /i %op% equ c (goto:calc)
if /i %op% equ t (goto:teclado)
if /i %op% equ w (goto:diretorio)
if /i %op% equ p (goto:paint)
if /i %op% equ b (goto:notepad)
if /i %op% equ r (call menu.bat)  else (
   echo.
   echo --------------------
   echo  Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )

:calc
start calc.exe
goto:inicio

:teclado
start osk.exe
goto:inicio

:diretorio
start explorer.exe
goto:inicio

:paint
start mspaint.exe
goto:inicio

:notepad
start notepad.exe
goto:inicio