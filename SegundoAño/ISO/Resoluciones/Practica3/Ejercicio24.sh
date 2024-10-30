#!/bin/bash

vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )

cant=${#vector1[*]}

for ((i=0; i < cant; i++))
do
	num1=${vector1[i]}
	num2=${vector2[i]}
	suma=$((num1 + num2))
	echo "La suma de los elementos de la posicion $i de los vectores es $suma"
done

exit 0

