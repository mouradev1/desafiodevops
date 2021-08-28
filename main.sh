#!/bin/bash
title="MENU DESAFIO DEVOPS" 
menu=("PING" "CALCULADORA") ##MENU

while i=$(zenity --title="$title" --list \
                 --column="SELECIONE UMA OPÇÃO" "${menu[@]}" --width="350" --height="250")
do
    case "$i" in
    "${menu[0]}")./ping.sh;;
    "${menu[1]}")./calculadora.sh;;
    *) zenity --error --text="Opção Invalida";;
    esac
done