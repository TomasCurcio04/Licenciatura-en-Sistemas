#!/bin/bash

select opcion in Listar DondeEstoy QuienEsta
do
	case $opcion in
		"Listar") ls;;
		"DondeEstoy") pwd;;
		"QuienEsta") who;;
		*) exit 0;;
	esac
done
