#!/bin/bash
# define o formato do nome do arquivo de backup
#NARQUIVO="Backup_BD_tradepar_brasil--`date +%d_%m_%Y__%H_%M`"
NARQUIVO="Backup_BD_tradepar_brasil--`date +%d_%m_%Y`"

# utiliza o programa mysqldump para efetuar backup no banco de dados do servidor de MySQL,
# direcionando a saída para o arquivo de backup em si. O sinal '&&' no final do
# comando significa que o próximo comando só será executado caso este seja realizado
# com sucesso.
mysqldump --host=localhost --user=tradepar --password=gui0604 --databases tradepar_brasil > /home/ricardo/$NARQUIVO.sql &&

# targiando o arquivo para que não fique muito grande e comer a banda da lan
tar -zcvf /home/ricardo/$NARQUIVO.tar.gz /home/ricardo/$NARQUIVO.sql

# removendo o arquivo original para liberar espaço
rm -f /home/ricardo/$NARQUIVO.sql

# espere por 20 segundos
sleep 20

FTPSERVER="192.168.0.50"
USERNAME="ricardo"
PASSWORD="rs-232"
LOCALDIR="/home/ricardo"

# conecte-se ao servidor FTP e envie o arquivo
ftp -ni $FTPSERVER <<FIM
user $USERNAME $PASSWORD
lcd $LOCALDIR
mdelete *.tar.gz
mput $NARQUIVO.tar.gz