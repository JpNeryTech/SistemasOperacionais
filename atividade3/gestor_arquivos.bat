@echo off

:: Serve para habilita uso de variaveis que mudam durante o script
setlocal enabledelayedexpansion

:: Aqui estou definindo as variaveis de caminho
set "BASE=C:\GestorArquivos"
set "DOC=%BASE%\Documentos"
set "LOG=%BASE%\Logs"
set "BKP=%BASE%\Backups"
set "LOGFILE=%LOG%\atividade.log"

echo Iniciando o Gestor de Arquivos...
echo.

:: Aui estou Cria a pasta de LOG antes de começar a registrar logs
if not exist "%LOG%" (
    md "%LOG%"
)

:: Função para registrar os LOGs
:log
set DATA_HORA=%date% %time%
echo [%DATA_HORA%] %~1 - %~2 >> "%LOGFILE%"
goto :eof

:: Contadores de criação
set /a pastas=0
set /a arquivos=0

:: Criação dos diretórios
if not exist "%BASE%" (
    md "%BASE%"
    call :log "Criar Pasta GestorArquivos" "Sucesso"
    set /a pastas+=1
) else (
    call :log "Criar Pasta GestorArquivos" "Ja Existia"
)

if not exist "%DOC%" (
    md "%DOC%"
    call :log "Criar Pasta Documentos" "Sucesso"
    set /a pastas+=1
) else (
    call :log "Criar Pasta Documentos" "Ja Existia"
)

if not exist "%LOG%" (
    md "%LOG%"
    call :log "Criar Pasta Logs" "Sucesso"
    set /a pastas+=1
) else (
    call :log "Criar Pasta Logs" "Ja Existia"
)

if not exist "%BKP%" (
    md "%BKP%"
    call :log "Criar Pasta Backups" "Sucesso"
    set /a pastas+=1
) else (
    call :log "Criar Pasta Backups" "Ja Existia"
)

:: Aqui é aonde crio dos arquivos
echo Relatorio do sistema > "%DOC%\relatorio.txt"
call :log "Criar relatorio.txt" "Sucesso"
set /a arquivos+=1

echo nome,idade,cidade > "%DOC%\dados.csv"
call :log "Criar dados.csv" "Sucesso"
set /a arquivos+=1

echo modo=producao > "%DOC%\config.ini"
call :log "Criar config.ini" "Sucesso"
set /a arquivos+=1

:: Backup dos arquivos
copy "%DOC%\*" "%BKP%\" > nul
if %errorlevel%==0 (
    call :log "Backup arquivos" "Sucesso"
) else (
    call :log "Backup arquivos" "Falha"
)

:: Arquivo final de backup
set DATA=%date%
set HORA=%time%
echo Backup realizado em: %DATA% %HORA% > "%BKP%\backup_completo.bak"
call :log "Criar backup_completo.bak" "Sucesso"

:: Relatório final
(
echo RELATÓRIO DE EXECUÇÃO
echo ----------------------
echo Total de arquivos criados: %arquivos%
echo Total de pastas criadas: %pastas%
echo Data/Hora do backup: %DATA% %HORA%
) > "%BASE%\resumo_execucao.txt"
call :log "Gerar resumo_execucao.txt" "Sucesso"

echo.
echo Todas as operações foram concluídas!
pause
