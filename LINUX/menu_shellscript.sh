#!/bin/bash
# Menu Shell

menu ()
{
a="ok"

while true $a !="ok"
do
   echo "MENU PRINCIPAL"
   echo ""
   echo "1 - Executar comando1"
   echo "2 - Executar comando2"
   echo "3 - Executar comando3"
   echo "4 - Finalizar e Carregar as Alterações"
   echo ""
   echo "OBS. pressione 'ctrl+c' p/ sair sem reiniciar o Linux"
   echo ""
   echo "Digite a opção desejada: "
   read a
   case $a in
   4) clear; echo "FINALIZADO O SCRIPT REINICIANDO O SERVIDOR";
sleep 2; reboot; 
sleep 2; clear; break;;
   1)comando1;;
   2)comando2;;
   3)comando3;;
   4)reboot;;
   esac
done
}

menu