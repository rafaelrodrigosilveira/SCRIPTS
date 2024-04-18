CLS

REM Registra data e hora do início da cópia (caso você queira registrar um log das cópias)

echo ================================== 
echo - Início do Backup dos arquivos do SERVIDOR Datacenter

@ echo on

REM Copiar todos os arquivos da pasta selecionada

xcopy "C:\xampp\htdocs\crm" /e /f /v "E:\BACKUPS\DATACENTER\CRM BACKUP\APLICATIVO"

@ echo off

echo ==============================================
