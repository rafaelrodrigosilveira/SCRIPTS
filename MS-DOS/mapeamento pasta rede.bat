REM EXPLICAÇAO:

REM K: = Unidade a ser criada no compartilhamento.

REM SERVERNAME = Nome ou IP da máquina q vc vai acessar.

REM C$ = Unidade compartilhada na máquina server.

REM SENHA = senha do usuário na máquina server.

REM USUARIO = usuário devidamente cadastrado na máquina server.

REM /PERSISTENT:YES = SALVA CONFIGURAÇOES APOS LOGON

REM %username% = todos usuarios


REM PARA USUARIO ESPECIFICO:



REM NET USE K: \\SERVERNAME\C$ SENHA /USER:USUARIO /PERSISTENT:YES




REM PARA USUARIO ATUAL:

NET USE K: \\192.168.1.1\volume1 /USER:%username% /PERSISTENT:YES