#!/bin/bash

for datoteka in old_dir/*; do
	ime=$(basename "$datoteka")
	mv "$datoteka" new_dir/
	echo "Datoteka $ime je prebacena"
	sleep 1
done

