#!/bin/bash

if [ $# -eq 0 ]
then
	echo "El script debe recibir como minimo un parametro"
	exit 1
fi

iteracion=1
inexistentes=0
for parametro in $*
do
	resto=$(($iteracion % 2))
	if [ $resto  -eq 1 ]
	then
		if [ -e $parametro ]
		then
			if [ -d $parametro ]
			then
				echo "$parametro es un directorio"
			else
				echo "$parametro es un archivo"
			fi
		fi
		else
			inexistentes=$(($inexistentes+1))
	fi
	iteracion=$(($iteracion+1))
done

echo "Cantidad de archivos inexistentes: $inexistentes"
