@echo off
title SERVICOS DE REDE
mode 60,30
color 0b
rem comentario
:inicio
cls
echo ===========================
echo          SERVICOS DE REDE
echo ===========================
echo [N]AVEGAR INTERNET
echo [T]ESTAR CONEXAO DE REDE
echo [O]BTER O IP DA MAQUINA
echo [R]ETORNAR AO MENU
echo ============================
echo.
set /p op=Digite sua Opcao:
if /i %op% equ n (goto:web)
if /i %op% equ t (goto:rede)
if /i %op% equ o (goto:ip)
if /i %op% equ r (call menu.bat)  else (
   echo.
   echo --------------------
   echo  Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )

:web
echo.
set /p site=Digite a pagina da web: 
start %site%
goto:inicio

:rede
set /p rede=Digite a pagina da web para teste de rede: 
ping %rede% -t
goto:inicio

:ip
ipconfig
pause
goto:inicio