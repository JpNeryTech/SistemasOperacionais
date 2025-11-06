echo off
title Backup de arquivos
set origem=C:\Users\jpper\OneDrive\Desktop\IESB\sistemasOperacionais\threadsTeste\thread2.py
set destino=C:\Users\jpper\OneDrive\Desktop\dowloads\
echo Processo de Backup em andamento
xcopy "%origem%" "%destino%"

echo Backup Realizado 
pause 
