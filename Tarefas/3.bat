@echo off
:menu 
cls
echo 1-Abrir Google
echo 2-Abrir Calculadora 
echo 3-Sair do terminal 
set /p opcao=Escolha uma opcao:
if  %opcao%==1 start https://google.com 
if  %opcao%==2 start calc.exe
if  %opcao%==3 exit 
goto menu 