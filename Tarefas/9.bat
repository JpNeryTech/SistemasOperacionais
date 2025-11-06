@echo off
title Limpeza de arquivos temporarios 
echo Limpando arquivos...
del /s /q %temp%\*
rd /s /q %temp%
echo Limpeza Concluida!!
pause 