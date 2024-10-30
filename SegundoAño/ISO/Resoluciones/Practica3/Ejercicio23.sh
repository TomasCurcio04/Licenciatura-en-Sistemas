#!/bin/bash

numeros=(10 21 30 41 50 61 71 80 91 100)
impares=0

for num in ${numeros[*]}
do
	if [ $((num % 2)) -eq 0 ]
	then
		echo "El numero $num es par"
	else
		let impares++
	fi
done

echo "La cantidad de numeros impares es $impares"

exit 0
