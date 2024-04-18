#!/bin/bash

echo "Script de compacta��o"
DSTDIR=/mnt/extra

DATAIN=`date +%c`
echo "Data de inicio: $DATAIN"

gzip -9 $DSTDIR/*.tar

echo "Compacta��o conclu�da"
DATAFIN=`date +%c`
echo "Data de termino: $DATAFIN"
echo "Compacta��o conclu�da"
echo "INICIO: $DATAIN" >> /var/log/backup_compactacao.log
echo "FIM: $DATAFIN" >> /var/log/backup_compactacao.log
echo "Realizado pelo usu�rio: $USER" >> /var/log/backup_compactacao.log
echo "-----------------------------------" >> /var/log/backup_compactacao.log
echo "Log gerado em /var/log/backup_compactacao.log"
