#!/bin/bash

select archivo  in *.sh "Salir"
do
	if [ "$archivo" == "Salir" ] 
	then
		 break
	else
		bash $archivo
	fi
done
