#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Se necesita el nombre de un usuario como parametro"
	exit 1
fi

while  true 
do
	echo "Esperando a que el usuario $1 se loguee"
	if  who | grep -w "$1" > /dev/null
        then
                echo "El usuario $1 se ha logueado"
                break
        fi
	
	sleep 10
done

