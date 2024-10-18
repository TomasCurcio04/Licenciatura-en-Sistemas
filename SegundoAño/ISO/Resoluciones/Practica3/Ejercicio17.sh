#!/bin/bash

for archivo in *
do
	if [ -f "$archivo" ]
	then
		resultado=$(echo "$archivo" | tr 'a-z A-Z' 'A-Z a-z' | tr -d 'aA')
		echo "$resultado"
	fi
done
