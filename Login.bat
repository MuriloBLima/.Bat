@echo off
title Atividade valendo muita nota!
mode 60,30
color 1f
rem comentário
:inicio
cls
echo.
echo.==============================
echo.            LOGIN
echo.==============================
set /p log=Digite Seu Usuario: 
if %log% equ Murilo (set /p senha=Digite sua senha: ) else (
echo.
echo.__________________________
echo.
echo. USUARIO INVALIDO!!!
echo.__________________________
pause > nul
goto:inicio)
if %senha% equ 123 (call menu.bat) else (
echo.
echo.__________________________
echo.
echo. SENHA INVALIDA!!! Tente novamente
echo.__________________________
pause > nul
goto:inicio)