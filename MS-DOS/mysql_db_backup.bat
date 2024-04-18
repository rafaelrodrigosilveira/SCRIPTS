@echo off  
 
for /f "tokens=1-4 delims=/ " %%a IN ('DATE /T') do (set MYDATE=%%a%%b%%c%%d)
for /f "tokens=1-2 delims=: " %%a in ('TIME /T') do (set MYTIME=%%ah%%bm)
  
SET MYSQL_PATH="C:\\xampp\\mysql\\"
SET MYSQL_USER=USUARIO
SET MYSQL_PASS=SENHA
   
SET MYSQL_HOST=localhost
SET MYSQL_PORT=3306
SET NOME_ARQUIVO=CRM-backup.%MYDATE%.%MYTIME%.sql  
     
SET ARQUIVO="E:\BACKUPS\DATACENTER\CRM BACKUP\BD\%NOME_ARQUIVO%" 
   
SET MYSQL_DATABASE=crm
   
@echo iniciando o backup...
@echo.
  
%MYSQL_PATH%\bin\mysqldump.exe -v -v -v --host=%MYSQL_HOST% --user=%MYSQL_USER% --password=%MYSQL_PASS% --port=%MYSQL_PORT% --protocol=tcp --force --allow-keywords --compress  --add-drop-table --default-character-set=latin1 --hex-blob --result-file=%ARQUIVO% %MYSQL_DATABASE%
 
@echo.
 
@echo compactando o arquivo...
@echo.
@echo |TIME /T
@echo.
 
@echo finalizando o backup...
@echo.