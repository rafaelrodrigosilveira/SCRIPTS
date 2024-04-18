#!/bin/bash
clear
echo "SCRIPT PARA DESINSTALAÇAO DO XCODE"
echo ""
echo "Apagando o software Xcode..."
sudo rm -R /Applications/Xcode.app
echo "Apagando a pasta Developer (1)..."
sudo rm -R ~/Library/Developer/
echo "Apagando a pasta Developer (2)..."
sudo rm -R /Library/Developer/
echo "Programa desinstalado com sucesso."
