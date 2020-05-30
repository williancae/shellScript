#!/bin/bash 
tab=("Pedra" "Papel" "Tesoura")
read -p "Nome do Jogador: " name
clear; alt="n"
while [[ $alt == "n" ]];do clear
    echo "======================================"
    echo -e "[0] Pedra   [1] Papel    [2] Tesoura"
    echo "======================================"
    echo -n "Digite uma opção: "; read play1
    play2=$[RANDOM%3]
    
    esc1=${tab[$play1]}; esc2=${tab[$play2]}
    echo "computador $esc2"
    if [[ $esc1 == $esc2 ]];then
        echo -e "\033[01;05;33m EMPATE \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Papel" ]] && [[ $esc2 == "Tesoura" ]];then
        echo -e "\033[01;05;31m COMPUTADOR GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Tesoura" ]] && [[ $esc2 == "Papel" ]];then
        echo -e "\033[01;05;32m ${name} GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Tesoura" ]]  &&  [[ $esc2 == "Pedra" ]];then
        echo -e "\033[01;05;31m COMPUTADOR GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Pedra" ]] && [[ $esc2 == "Tesoura" ]];then
        echo -e "\033[01;05;32m ${name} GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Pedra" ]] && [[ $esc2 == "Papel" ]];then
        echo -e "\033[01;05;31m COMPUTADOR GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"

    elif [[ $esc1 == "Papel" ]] &&  [[ $esc2 == "Pedra" ]];then
        echo -e "\033[01;05;32m ${name} GANHOU! \033[00m"
        echo "${name^^} jogou $esc1, COMPUTADOR jogou $esc2"
    fi
    echo -ne "> Deseja sair do jogo?[s/n]: "; read alt
done