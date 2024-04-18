@echo off

:MAIN
color 1e
cls
echo. ------------------------------------------------------------------
echo. -              SCRIPT DE INSTALACAO DO SENIOR ERP                -
echo  -                                                                -
echo  -       OLSEN S.A. - SETOR DE TECNOLOGIA DA INFORMACAO           -
echo  -                                                                -
echo. -        AUTOR - RAFAEL RODRIGO SILVEIRA - 20-03-2022            -
echo  -                                                                -
echo. -                          VERSAO 0.1                            -
echo. ------------------------------------------------------------------
echo.
echo Escolha uma Opção:
echo. 
echo.
echo.
echo - (1) Instalar o Oracle DB
echo.
echo - (2) Instalar o Senior ERP
echo.
echo - (3) Copiar os arquivos de configuracao
echo.
echo - (4) Sair do programa
echo.
echo.
set /p input=
if %input%==1 goto INSTALLORACLE
if %input%==2 goto INSTALLSENIOR
if %input%==3 goto COPIAARQ
if %input%==4 goto SAIR
EXIT
:SAIR
color 1e
cls
echo Saindo do programa...
PAUSE
EXIT

:INSTALLORACLE
cls
color 1e
echo .
echo (1) Instalando o Oracle DB...
\\ols-vm04\SuporteTI\Programas\Oracle\win32_12201_client\client32\setup.exe
GOTO ORACLECANCELADO

:ORACLECANCELADO
cls
color c9
echo Instalacao do Oracle cancelada! Aperte uma tecla para voltar...
PAUSE
GOTO MAIN
EXIT
:ORACLEOK
echo.
echo O Oracle DB foi instalado com sucesso!
echo.
echo Pressione qualquer tecla para prosseguir ao passo 2.
PAUSE

GOTO INSTALLSENIOR
EXIT

:INSTALLSENIOR
cls
color 1e
echo .
echo (2) Instalando o Senior...
\\ols-hv02\Senior\SeniorInstaller.exe
GOTO SENIORCANCELADO

:SENIORCANCELADO
cls
color c9
echo Instalacao do Senior cancelada! Aperte uma tecla para voltar...
PAUSE
GOTO MAIN
EXIT
:SENIOROK
echo.
echo O Senior foi instalado com sucesso!
echo.
echo Pressione qualquer tecla para prosseguir ao passo 3.
PAUSE
GOTO COPIAARQ
EXIT


:COPIAARQ
cls
color 1e
echo .
echo (3) Copiando arquivos...
copy \\ols-hv02\Senior\tnsnames.ora c:\Sapien\
GOTO COPIAARQCANCELADO

:COPIAARQCANCELADO
cls
color c9
echo A copia dos arquivos foi cancelada! Aperte uma tecla para voltar...
PAUSE
GOTO MAIN
EXIT
:COPIAARQOK
echo.
echo Arquivos copiados com sucesso!
echo.
echo Pressione qualquer tecla para sair.
PAUSE
EXIT