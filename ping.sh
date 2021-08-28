#!/bin/bash
log=./log/pingshell.log
  if [ $1 != null ] && ! ping -c 1 $1 1> /dev/null   ; then
    echo "##### TESTANDO PING   #####"
    echo -e " \033[0;31m LINK DOWN $1  \033[0m "
    echo -e "log_ping: LINK-DOWN - $1 USER:  "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`  >> $log
    elif   ping -c 1 $1 >> /dev/null ; then
    echo "##### TESTANDO PING   #####"
    echo -e " \033[0;32m LINK UP $1  \033[0m " 
    echo -e "log_ping: LINK-UP - $1 USER:  "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`  >> $log 
else
  while true
  do
     IP=
      form=$(yad --center --width=380 \
          --window-icon="gtk-execute"  --item-separator=","   \
          --title "PING TESTE"                                                           \
          --form                                                                         \
          --text="<span font='15' color='#1df09b'>TESTE DE PING, DESAFIO DEVOPS</span>"                         \
          --field="LINK OU IP QUE DESEJA"  $IP "google.com"                \
          --button="CANCELAR":1 --button="VERIFICA":0)
      [ $? != 0 ] && exit
      IP=$(echo $form          | awk -F '|' '{ print $1 }')

(
echo "Testando icmp por destino - ${IP}" ;
sleep 3
) |
zenity --progress \
  --title="Validando conexão" \
  --text="Verificando conexão...." \
  --pulsate=0 \
   --width=500 --auto-close
#######################################################
################### MOURA DEV #########################
#######################################################
if ! ping -c 1 $IP >> /dev/null ; then
 yad --form --title="Informação!" --height=40 --width=500 \
--center  \
--borders=10 --button="Sair:0"  \
--text="
<span font_weight='bold' font='20' color='#FF0000'>LINK DOWN - $IP</span>"
echo -e "log_ping: LINK-DOWN - $IP USER:  "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`  >> $log

else
yad --form --title="Informação!" --height=40 --width=500 --auto-close \
--center \
--borders=10 --button="Sair:0"  \
--text="<span font_weight='bold' font='20' color='#00FF00'>LINK UP - $IP </span>"
echo -e "log_ping: LINK-UP - $IP USER:  "${USER}  "DATA: " `date +%d/%m/%Y" HORA: "%H:%M:%S`  >> $log


fi
      break
  done
fi
