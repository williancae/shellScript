#! /bin/bash
# pedra = 0
# papel = 1
# tesoura = 2

read -p "Digite  o nome do jogador: " name
while true; do
    clear
    echo "======================================="
    echo "    [0] Pedra [1] Papel [2] Tesoura"
    echo "======================================="
    echo -n "Escolha uma opção: "; read play1
    play2=$[RANDOM%3]
    #echo "Computador: $play2" #Opção do computador
    if (($play1 == $play2));then
        echo "Empate"
    elif (( $play1 == 0 || $play2 == 1));then
        echo "Computador ganhou"
    elif (( $play1 == 1 || $play2 == 0));then
        echo "$name ganhou"
        break
    elif (( $play1 == 1 || $play2 == 2));then
        echo "Computador ganhou"
    elif (( $play1 == 2 || $play2 == 1));then
        echo "$name ganhou"
        break
    fi
done