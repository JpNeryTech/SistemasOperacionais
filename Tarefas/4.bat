@echo off
set senha=1234
set /p usuarioSenha=Digite a senha:
if NOT %usuarioSenha%==%senha% (
    echo +++++++++
    echo senha incorreta
    echo +++++++++
    pause
    exit

)
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