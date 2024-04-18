#!/bin/bash

# Limpa a tela
clear

# Define as cores
txtwhite=$(tput setaf 7)
bgyellow=$(tput setab 3)

# Exibe o banner
echo -e "${bgyellow}${txtwhite}"
echo "MENU SIMPLES - LINUX BASH"
echo -e "\033[0m"  # Reseta as cores

# Perguntas
while true; do
    echo -e "\nEscolha uma opção:"
    echo "1 - Desinstalar programa"
    echo "2 - Desinstalar programa 2"
    echo "3 - Sair do Script"
    read -p "Digite o número da opção desejada: " choice

    case $choice in
        1)
            echo "Você escolheu Desinstalar programa."
            # Coloque aqui o código para desinstalar o programa
            ;;
        2)
            echo "Você escolheu Desinstalar programa 2."
            # Coloque aqui o código para desinstalar o segundo programa
            ;;
        3)
            echo "Encerrando o script."
            exit 0
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            ;;
    esac
done
