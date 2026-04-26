#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je unijeti točno jedan argument"
    exit 1
fi

direktorij=$1

if [ ! -d "$direktorij" ]; then
    echo "U trenutnom direktoriju ne postoji navedeni direktorij"
    exit 1
fi

zip -j svi_zapisi.zip "$direktorij"/*

if [ $? -eq 0 ]; then
    echo "Datoteke su uspješno komprimirane u svi_zapisi.zip."
else
    echo "Došlo je do pogreške prilikom komprimiranja."
fi
