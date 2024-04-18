#!/bin/bash
echo "Programa de backup full"
#Autor: Jhoni Vieceli
#Programa de cria��o de backup full
#DATA: 04/02/2008
echo " "

dadosfull() {

SRCDIR="/home/jhoni /etc" #diret�rios que ser�o feito backup
DSTDIR=/mnt/extra #diret�rio de destino do backup
DATA=`date +%x-%k%M%S` #pega data atual
TIME_BKCP=+15 #n�mero de dias em que ser� deletado o arquivo de backup

#criar o arquivo full-data.tar no diret�rio de destino
ARQ=$DSTDIR/full-$DATA.tar.gz
#data de inicio backup
DATAIN=`date +%c`
echo "Data de inicio: $DATAIN"

}

backupfull(){
sync
tar -czvf $ARQ $SRCDIR
if [ $? -eq 0 ] ; then
   echo "----------------------------------------"
        echo "Backup Full conclu�do com Sucesso"
   DATAFIN=`date +%c`
   echo "Data de termino: $DATAFIN"
   echo "Backup realizado com sucesso" >> /var/log/backup_full.log
   echo "Criado pelo usu�rio: $USER" >> /var/log/backup_full.log
   echo "INICIO: $DATAIN" >> /var/log/backup_full.log
   echo "FIM: $DATAFIN" >> /var/log/backup_full.log
   echo "-----------------------------------------" >> /var/log/backup_full.log
   echo " "
   echo "Log gerado em /var/log/backup_full.log"

else
   echo "ERRO! Backup do dia $DATAIN" >> /var/log/backup_full.log
fi  
}

procuraedestroifull(){

#apagando arquivos mais antigos (a mais de 20 dias que existe)
find $DSTDIR -name "f*" -ctime $TIME_BKCP -exec rm -f {} ";"
   if [ $? -eq 0 ] ; then
      echo "Arquivo de backup mais antigo eliminado com sucesso!"
   else
      echo "Erro durante a busca e destrui��o do backup antigo!"
   fi
}

dadosfull
backupfull
procuraedestroifull

exit 0 