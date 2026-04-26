#!/bin/bash


if [ "$#" -ne 1 ]; then
	echo "Potrebno je proslijediti samo jedan argument"
	exit 1
fi

broj=$1

if ! [[ "$broj" =~ ^[0-9] ]] || [ "$broj" -lt 1 ] || [ "$broj" -gt 10 ]; then
	echo "Broj mora biti u rasponu od 1 do 10"
	exit 1
fi

> brojevi.txt

for (( i=1; i<"$broj"; i++ )); do
	echo "$i" >> brojevi.txt
done
