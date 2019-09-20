#!/bin/bash

#fecha: 08.092019
#AUTOR: EQUINOKX
#Proposito: Instalar Docker en Debian

#VARIABLES
usuario=$(whoami)

clear
echo "                                        "
echo "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*                                      -"
echo "-   Instalacion de Docker en Debian    *"
echo "*                                      -"
echo "-          by:Moises Tapia             *"
echo "*             EQUINOKX                 -"
echo "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "                                        "
echo "     Seleccione su sistema:             "
echo "                                        "
echo "     1- Desinstalar versiones viejas    "
echo "                                        "
echo "     2- Instalar Docker                 "
echo "		                                  "
echo "     3- Probar Docker                   "
echo "                                        "
echo "     4- Regresar al menu                "
echo "                                        "
echo "     5- Salir                           "
echo "		                                  "
echo "       Versiones de Sistema.            "
echo "                                        "
echo "       Buster 10                        "
echo "       Stretch 9 (stable)               "
echo "       / Raspbian Stretch               "
echo "                                        "

read -p "   ╭─Debian - Docker  
   ╰─➤ " opc

if [ "$opc" -eq 1 ];then

	clear
	echo "Desinstalando Versiones"
	sleep 3
	sudo apt-get remove docker docker-engine docker.io containerd runc
	echo "                                     "
	echo "          TERMINADO                  "
	sleep 2
	clear
	
elif [ "$opc" -eq 2 ]; then

	clear
	echo "PREPARANDO EL ENTORNO..."
	sleep 3
	sudo apt-get update
	sleep 3
	clear
	echo "INSTALANDO UTILIDADES ..."
	echo "                         "
	sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
	sleep 3
	clear
	echo "AGREGAR EL GPG ..."
	echo "                         "
	curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sleep 3
	clear
	echo "AGREGANDO EL REPO ..."
	echo "                         "
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    sleep 3
	clear
	echo "ACTUALIZANDO ..."
	echo "                         "
	sudo apt-get update
    sleep 3
	clear
	echo "INSTALANDO DOCKER ..."
	echo "                         "
	sudo apt-get install docker-ce
    sleep 3
	clear
	echo "CONFIGURANDO EL INICIO CON EL SISTEMA ..."
	echo "                         "
	sudo systemctl enable docker
    sleep 3
	clear
	echo "AGREGANDO AL USUARIO AL GRUPO DOCKER ..."
	echo "                         "
	sudo usermod -aG docker "${usuario}"
	echo "                             "
	echo "AGREGADO EL USUARIO ${usuario}"
	sleep 2
	exit
	clear
	
elif [ "$opc" -eq 3 ]; then

	clear
	echo "INICIANDO DOCKER CON EL NUEVO USUARIO"
	echo "                         "
	echo "INICIANDO EL SERVICIO"
	service docker start
	echo "PROBANDO DOCKER...."
	sudo docker run hola-mundo

elif [ "$opc" -eq 4 ]; then

    clear
	echo "Regresando al menu"
	sleep 3
	./Script_Docker.sh

elif [ "$opc" -eq 5 ]; then

	clear
	echo "Saliendo del Script_Docker"
	sleep 2
	echo "."
	sleep 2
	echo ".."
	sleep 2
	echo "...."
	sleep 3
	clear
	
fi
