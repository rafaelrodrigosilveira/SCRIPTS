#!/bin/bash
# HABILITA/DESABILITA PRIORIDADE BACKUP - MACBOOK
# Rafael Rodrigo Silveira - 2019

menu ()
{
a="ok"

while true $a !="ok"
do
   echo "----------------------------------------"
   echo "MENU PRINCIPAL"
   echo ""
   echo "1 - Aumenta prioridade de backup"
   echo "2 - Voltar ao normal"
   echo "3 - Sair"
   echo ""
   echo "----------------------------------------"
   echo ""
   echo "Digite a opção desejada: "
   read a
   case $a in
   4) clear; echo "FINALIZADO O SCRIPT REINICIANDO O SERVIDOR";
   sleep 2; reboot; 
   sleep 2; clear; break;;
   1)clear; 
      echo "Aumentando prioridade de Backup";
      cd /Aplicativos/Utilitários/;
      sudo sysctl debug.lowpri_throttle_enabled=0;;
   2)clear; 
      echo "Diminuindo prioridade de Backup";
      cd /Aplicativos/Utilitários/;
      sudo sysctl debug.lowpri_throttle_enabled=1;;
   3)exit 0;;
   esac
done
}

menu