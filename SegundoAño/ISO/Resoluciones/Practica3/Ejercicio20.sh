#!/bin/bash
pila=()

push(){
	pila+=($1)
}

length() {
	echo "la longitud del arreglo es ${#pila[*]}"
}

pop(){
	if [ "${#pila[*]}" -ne 0 ];
	then
		unset pila [-1]
	else
		echo "La pila esta vacia"
		return 1
	fi
}

print() {
	for item in "${pila[@]}"
	do
		echo $item
	done
}

select opcion in "push" "length" "pop" "print" "salir";
do
	case $REPLY in 
		1) echo "Se necesita un valor para ingresarlo a la pila"
		   read valor
		   push $valor
		;;
		2) length
		;;
		3) pop;
		;;
		4) print
		;;
		5) exit 0
		;;
		*) echo "opcion no valida"
		;;
	esac
done

