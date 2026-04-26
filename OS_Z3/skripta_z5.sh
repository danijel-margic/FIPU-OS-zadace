#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Broj argumenata mora biti tocno jedan."
    exit 1
fi

putanja=$1

if [ ! -d "$putanja" ]; then
    echo "Natoj putanji ne postoji direktroij."
    exit 1
fi


if [ ! -d "$putanja/.git" ]; then
    echo "Navedeni direktroij nije Git repozitroij."
    exit 1
fi

cd "$putanja"

touch repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Pokretanje skripte iz 5. zadatka"

git log 
