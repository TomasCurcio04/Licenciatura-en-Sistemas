#!/bin/bash
 
if [ $# -ne 1 ]
then
	echo "Se necesita el nombre de una extension como parametro"
	exit 1
fi

echo > reporte.txt

for  linea in $(cat /etc/passwd | cut -d: -f 1,6)
do
	user=$(echo $linea | cut -d: -f1)
	home=$(echo $linea | cut -d: -f2)

	if [ -d $home ]
	then
		echo $user $(find $home -name "*.$1 | wc -l") >> reporte.txt
	fi
done

exit 0
