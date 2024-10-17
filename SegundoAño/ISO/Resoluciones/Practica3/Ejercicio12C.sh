#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Se necesita un operador aritmetico y dos numeros como parametros"
	exit 1
fi

case $1 in
	"+") echo "La suma entre los dos numeros es de: $(( $2 + $3 ))"
	;;
	"-") echo "La resta entre los doos numeros es de: $(($2 - $3 )) "
	;;
	"*") echo "La multiplicacion entre los dos numeros es de: $(($2 * $3))"
	;;
	"%") if [ $3 -eq 0 ]; then
	       	echo "No se puede dividir por 0"
	     else
	        echo "La division entre los dos numeros es de: $(($2 / $3))"
	     fi
	;;
	*) echo "Operador aritmetico invalido"
	;;
esac

exit 0
