#!/bin/bash
#Moura dev calculadora 1.0
log=./log/calculadora.log
if [ $1 != null ]; then
   echo "##### RESULTADO  #####"
   echo " $1 / $2"
   echo "scale=1; $1 / $2" | bc
   echo -e "Resultado da soma via parametro: $(echo "scale=1; $1 / $2" | bc) "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`   >> $log
else
A=$(zenity --title="valor inicial: " --text "Digite um numero " --entry --width="250" height="100")
B=$(zenity --title="Segundo  numero" --text "Digite o segundo  numero?" --entry --width="250" height="100")

echo -e "Resultado da soma: $(echo "scale=1; $A / $B" | bc) USER:  "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`   >> $log
zenity --info --title="INFORMAÇÃO" --text="Resultado: $(echo "scale=1; $A / $B" | bc)" --width="200" height="100"
fi