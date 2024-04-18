# .bash_profile
        #
        # verifica se existe um .bashrc, se existir, executa-o
#
        if [ -e .bashrc ]; then 
           source .bashrc 
        fi

        #
        # verifica se existe alguma tela desconectada
        #
        DETACH=`screen -ls | grep -c "Detached"` 
        #
        # Se houver mais que uma, lista as seções na tela com
        # o comando para recuperá-las
        #
        if [ $DETACH -gt 1 ]; then 
           screen -ls 
           echo "You can reattach one of detached session using:"
           echo -e "\tscreen -r nnnn.tty.host\n" 
        # 
        # Se houver apenas uma sessão aberta, ele conecta
        # automaticamente, sem precisar de comando nenhum.
        #
        elif [ $DETACH -eq 1 ]; then 
           SESSION=`screen -ls | grep "Detached" | awk '{print $1}'`
           screen -r $SESSION 
        # 
        # Se houver menos que uma sessão (ou seja, nenhuma) aciona
        # um novo screen
        #
        else 
           screen -a 
        fi

