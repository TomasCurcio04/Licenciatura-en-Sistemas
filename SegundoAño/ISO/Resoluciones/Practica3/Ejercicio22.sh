#!/bin/bash

num=(10 3 5 7 9 3 5 4)
productoria(){

local total=1

for var in ${num[*]}
do
	total=$((var * total))
done

echo "Total es $total"
}

productoria
