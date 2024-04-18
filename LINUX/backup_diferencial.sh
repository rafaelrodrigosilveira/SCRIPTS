#!/bin/bash
echo "Programa de Backup Diferencial"
#Autor: Jhoni Vieceli
#Programa de cria��o de backup diferencial
#DATA: 04/02/2008
echo " "

dadosdif() {

SRCDIR="/home/jhoni /etc" #diret�rios que ser�o feitos backup
DSTDIR=/mnt/extra #diret�rio de destino do backup
DATA=`date +%x-%k%M%S`
TIME_FIND=-720 #+xx busca arquivos criados existentes a xx minutos (arquivos que tenham mais de xx minutos)
#-xx arquivos que tenham sido criados nos �ltimos xx minutos
#12 horas = 720 minutos 8horas 480 minutos
TIME_DEL=+7   # dias em que permanecera o backup diferencial armazenado

#criar o arquivo dif-data.tar no diret�rio de destino
ARQ=$DSTDIR/dif-$DATA.tar
#data de inicio backup
DATAIN=`date +%c`
echo " Data de inicio: $DATAIN"

}

backupdif(){
sync

find $SRCDIR -type f -cmin $TMP_FIND -exec tar -rvf $ARQ {} ";"

if [ $? -eq 0 ] ; then
   echo "--------------------------------------"
        echo "Backup Diferencial conclu�do com sucesso"
   DATAFIN=`date +%c`
   echo "Data de termino: $DATAFIN"
   echo "Backup realizado com sucesso" >> /var/log/backup_diferencial.log
   echo "Criado pelo usu�rio: $USER" >> /var/log/backup_diferencial.log
   echo "INICIO: $DATAIN" >> /var/log/backup_diferencial.log
   echo "FIM: $DATAFIN" >> /var/log/backup_diferencial.log
   echo "------------------------------------------------" >> /var/log/backup_diferencial.log
   echo " "
   echo "Log gerado em /var/log/backup_diferencial.log"

else
   echo "ERRO! Backup Diferencial $DATAIN" >> /var/log/backup_diferencial.log
fi  
}

procuraedestroidif(){

#apagando arquivos mais antigos (a 7 dias que existe (-cmin +2)
find $DSTDIR -name "dif*" -ctime $TIME_DEL -exec rm -f {} ";"
   if [ $? -eq 0 ] ; then
      echo "Arquivo de backup mais antigo eliminado com sucesso!"
   else
      echo "Erro durante a busca e destrui��o do backup antigo!"
   fi
}

dadosdif
backupdif
procuraedestroidif

. ./compactar.backup #chama e roda o script de compacta��o de backup

exit 0 