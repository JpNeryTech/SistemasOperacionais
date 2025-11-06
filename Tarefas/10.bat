@echo off
:menu
echo Calculadora
echo 1-Somar
echo 2-Subtrair
echo 3-Multiplicar
echo 4-Dividir 
echo 5-Sair 

set /p opcao=Escolha um numero:
if %opcao%=="1" goto somar 
if %opcao%=="2" goto Subtrair 
if %opcao%=="3" goto Multiplicar 
if %opcao%=="4" goto Dividir  
if %opcao%==5 goto Exit
:somar 
cls 
set /p a=Digite o primeiro numero:  
set /p b=Digite o segundo numero:  
set /a c= resultado= "%a%" + "%b%": 
echo resultado: %resultado%
pause
goto menu