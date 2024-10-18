#!/bin/bash
for ((i=1;i<101;i++)); do
	echo "$i y su cuadrado $(( $i * $i ))"
done

exit 0
