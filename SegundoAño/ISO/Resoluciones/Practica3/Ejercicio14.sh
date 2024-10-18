#!/bin/bash

if [ $# -ne 2 ] 
then
	echo "Se necesita el nombre de un directorio como parametro para ejecutar el script"
	echo "Se necesita una CADENA como parametro para ejecutar el script"
	exit 1
fi

if [ -d $1 ]
then

	select option in "-a" "-b"
	do
		case $option in
			"-a") for i in $1/* 
			             	do mv "$i" "$i$2"
					done;;
			"-b") for i in $1/* 
                                        do mv "$i" "$i$2"
					done;;	
			*) exit 0;;
		esac

	done
else
	echo "El directoorio no existe"
fi
