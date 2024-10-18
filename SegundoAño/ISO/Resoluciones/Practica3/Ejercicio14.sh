#!/bin/bash

if [ $# -ne 1 ] 
then
	echo "Se necesita el nombre de un fichero como parametro para ejecutar el script"
	exit 1
fi

if [ -e $1 ]
then

	select option in "-a CADENA" "-b CADENA"
	do
		case $option in
			"-a CADENA") mv "$1" "$1CADENA";;
			"-b CADENA") mv "$1" "CADENA$1";;
			*) exit 0;;
		esac

	done
else
	echo "El fichero no existe"
fi
