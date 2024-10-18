#!/bin/bash

if [ $# -ne 1 ]
then
        echo "Se necesita un parametro para ejecutar correctamente el script"
fi

if [ -e $1 ]
then
        echo "El archivo si existe"
        if [ -d $1 ]
        then
                echo "y es un directorio"
        else
                echo "y no es un directorio"
        fi
else
        mkdir $1 
        echo "Se ha creado el directorio $1"
fi

exit 0
