#!/bin/bash

arreglo=$(cat /etc/group | grep users | cut -d: -f4 )

if [ $# -eq 2 ]
then
	if [ ${#arreglo[*]} -gt $2 ]
	then
		echo ${arreglo[$2]}
	else
		echo "Error la posicion $2 no existe"
	fi
fi

if [ $# -eq 1 ]
then

	case $1 in 
	"-l") echo "La longitud del arreglo es: ${#arreglo[*]}"
	;;

	"-i") echo ${arreglo[*]}
	;;
	esac
fi
