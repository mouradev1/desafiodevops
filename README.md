# Desafio DevOps

Desafio Devops Interno
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/mouradev1/desafiodevops/blob/main/LICENSE)

# Sobre o projeto 

Desfio devops foi um teste de hablidade para vaga interna de devops,com objtivo de verifica nossas habilidades.

## Layout shell script
![Main.sh](https://mouradev.net/img/main.png) ![Ping shell](https://mouradev.net/img/pingshell.png)
![Result calculo shell](https://mouradev.net/img/resultcalculo.png)![Resultado ping UP](https://mouradev.net/img/resultup.png)


# Tecnologias utilizadas
- Shell Scrit
- zenity
- PYTHON
- PHP

```bash
# instalar dependências
DEBIAN
sudo apt update
sudo apt install snapd
sudo snap install core
sudo snap install zenity
sudo apt -y install php7.4

UBUNTU 
sudo apt-get update -y
sudo apt-get install -y zenity
sudo apt install php libapache2-mod-php
# clonar repositório
git clone git@github.com:mouradev1/desafiodevops.git
# Da permissão a pasta do projeto
sudo chmod +x desafiodevops/*
# entrar na pasta do desafiodevops
cd desafiodevops

# executar o projeto
Para abri o menu com os scripts em shell sigar o comando abaixo

./main.sh

##Passando paramentro por script em shell, sigo os exemplo abaixo 
./ping.sh google.com

./calculadora.sh 23 3

##Passando paramentro por script em python, sigo os exemplo abaixo 
python3 python/ping.py google.com
python3 python/calculadora.py

##Passando paramentro por script em PHP, sigo os exemplo abaixo 
php php/ping.php google.com
php php/calculaadora.php 23 3

```
# Teste ping php Online
http://mouradev.net/ping/

# Autor

Moura dev

https://www.linkedin.com/in/jose-moura-463562176/
