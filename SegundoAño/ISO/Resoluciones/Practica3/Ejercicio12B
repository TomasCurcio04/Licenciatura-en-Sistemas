#!/bin/bash
if [ $# -ne 2 ]; then
	echo "no se enviaron los dos parametros con numeros"
	exit 1
fi

if [ $1 -gt $2 ]; then
	echo "El mayor numero leido es: $1 "
else
	echo "El mayor numero leido es: $2"
fi

echo "El resultado de la multiplicacion de estos numeros es: $(($1 * $2))"
echo "El resultado de la suma de estos numeros es: $(($1 + $2))"
echo "El resultado de la resta de estos numeros es: $(($1 - $2))"

exit 0
