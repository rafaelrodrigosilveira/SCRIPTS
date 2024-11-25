#!/bin/bash

# Instala Pre Requisitos
clear
echo "Instalando pre requisitos..."
sudo apt install lshw

# Nome do arquivo de saída para armazenar as informações
OUTPUT_FILE="hardware_info.txt"

# Função para verificar o processador
function verificar_processador() {
    echo "Verificando o processador..." >> "$OUTPUT_FILE"
    cat /proc/cpuinfo | grep "model name" | uniq >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
}

# Função para verificar o modelo da placa-mãe
function verificar_placa_mae_modelo() {
    echo "Verificando o modelo da placa-mãe..." >> "$OUTPUT_FILE"
    cat /sys/devices/virtual/dmi/id/board_name >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
}

# Função para verificar o fabricante da placa-mãe
function verificar_fabricante_placa_mae() {
    echo "Verificando o fabricante da placa-mãe..." >> "$OUTPUT_FILE"
    cat /sys/devices/virtual/dmi/id/board_vendor >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
}

# Função para verificar a memória RAM
function verificar_memoria_ram() {
    echo "Verificando a memória RAM..." >> "$OUTPUT_FILE"
    lshw -class memory >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
}

# Chama todas as funções para capturar as informações e armazená-las no arquivo
verificar_processador
verificar_placa_mae_modelo
verificar_fabricante_placa_mae
verificar_memoria_ram

# Mensagem final
echo "Verificação de hardware concluída. As informações foram salvas em $OUTPUT_FILE."
