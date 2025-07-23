#!/bin/bash


Inicializar() {
	arrayVacio=()
	return 0
}

Agregar_Elem() {
	tamanio=${#arrayVacio[*]}
	arrayVacio[tamanio]=$1
	echo "Elemento agregado"
	return 0
}

Eliminar_Elem(){
	if [ ${#arrayVacio[*]} -gt $1 ]
	then
		unset arrayVacio[$1]
		echo "Elemento eliminado"
	else
		echo "El arreglo no tiene esa posicion"
	fi
	return 0
}

Longitud(){
	echo "Longitud del arreglo" ${#arrayVacio[*]}
	return 0
}


Imprimir(){
	echo "Elementos del arreglo" ${arrayVacio[*]}
	return 0
}


Inicializar_Con_Valores(){
	arrayLongitud=()
	for ((i=0; i < $1; i++))
	do
		arrayLongitud[i]=$2
	done
	return 0
}



select valor in Inicializar Agregar_Elem Eliminar_Elem Longitud Imprimir Inicializar_Con_Valores Salir
do
case $valor in
    "Inicializar")
        Inicializar
    ;;
    "Agregar_Elem")
        echo "Ingresa un elemento"
        read elemento
        Agregar_Elem $elemento
    ;;
    "Eliminar_Elem")
        echo "Ingrese una posicion a borrar"
        read posicion
        Eliminar_Elem $posicion
    ;;
    "Longitud")
    	Longitud
    ;;
    "Imprimir")
        Imprimir
    ;;
    "Inicializar_Con_Valores") 
        echo "Ingrese cantidad"
        read cantidad
        echo "Ingrese valor"
        read valor
        Inicializar_Con_Valores $cantidad $valor
    ;;
    "Salir")
        exit 0
    ;;
esac
done
