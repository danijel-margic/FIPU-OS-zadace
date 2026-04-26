#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Potrebno je proslijediti točno dva argumenta."
	exit 1
fi

putanja=$1
nastavak=$2
brojac=0

if [ ! -d "$putanja" ]; then
	echo "Direktorij ne postoji"
	exit 1
fi

for datoteka in "$putanja"/*"$nastavak"; do
	if [ -f "$datoteka" ]; then
		basename "$datoteka"
		((brojac++))
	fi
done

if [ "$brojac" -eq 0 ]; then
	echo "Na navedenoj putanji nema datoteka s tim nastavkom"
fi
