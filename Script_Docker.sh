#!/bin/bash

#fecha: 08.092019
#AUTOR: EQUINOKX
#Proposito: Instalar Docker en diferentes sistema

clear
echo "                                        "
echo "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*                                      -"
echo "-Script para la instalacion de Docker  *"
echo "*                                      -"
echo "-          by:Moises Tapia             *"
echo "*              EQUINOKX                -"
echo "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "                                        "
echo "     Seleccione su sistema:             "
echo "                                        "
echo "     1- Debian   | 2- Ubuntu            "
echo "                                        "
echo "     3- Centos   | 4- Fedora            "
echo "		                                  "
echo "             5- Salir                   "
echo "		                                  "

read -p "   ╭─Docker-Install  
   ╰─➤ " opc

if [ $opc -eq 1 ];then

	clear
	echo "Instalacion para Debian"
	sleep 3
	chmod +x debianinstall.sh
	./debianinstall.sh
	
elif [ $opc -eq 2 ]; then

	clear
	echo "Instalacion para Ubuntu"
	sleep 3
	chmod +x ubuntuinstall.sh
	./ubuntuinstall.sh

elif [ $opc -eq 3 ]; then

	clear
	echo "Instalacion para Centos"
	sleep 3
	chmod +x centosinstall.sh
	./centosinstall.sh

elif [ $opc -eq 4 ]; then

	clear
	echo "Instalacion para Fedora"
	sleep 3
	chmod +x fedorainstall.sh
	./fedorainstall.sh

elif [ $opc -eq 5 ]; then

	clear
	echo "Saliendo del Script"
	sleep 3
	clear

fi
