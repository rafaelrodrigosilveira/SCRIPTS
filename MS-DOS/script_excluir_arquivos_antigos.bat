@echo off
setlocal enabledelayedexpansion

:: Defina o diretório onde os arquivos serão analisados
set "diretorio=C:\pasta_arquivos_excluir\"

:: Defina o número de dias para exclusão (exemplo: 30 dias)
set "dias=15"

:: Obtém a data atual no formato YYYYMMDD
for /f %%a in ('wmic os get LocalDateTime ^| find "."') do set "dataAtual=%%a"
set "dataAtual=%dataAtual:~0,8%"

:: Percorre todos os arquivos da pasta
for %%F in ("%diretorio%\*") do (
    rem Obtém a data de modificação do arquivo no formato YYYYMMDD
    for %%A in ("%%F") do set "dataArquivo=%%~tA"
    
    rem Converte para formato YYYYMMDD
    set "dataArquivo=!dataArquivo:~6,4!!dataArquivo:~3,2!!dataArquivo:~0,2!"

    rem Calcula a diferença de dias
    set /a "diferenca=!dataAtual! - !dataArquivo!"

    rem Exclui o arquivo se for mais antigo que o número de dias definido
    if !diferenca! GTR %dias% (
        echo Excluindo %%F
        del "%%F"
    )
)

echo Processamento concluído.