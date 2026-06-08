#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Krivi broj argumenata!"
    exit 1
fi

dozvola="$1"
putanja="$2"

if [ "${#dozvola}" -ne 9 ]; then
    echo "Reprezentacija dozvola mora imati točno 9 znakova."
    exit 1
fi

if [ ! -f "$putanja" ] && [ ! -d "$putanja" ]; then
    echo "Datoteka ili direktorij na putanji '$putanja' ne postoji."
    exit 1
fi

izracunaj_znamenku() {
    local dio="$1"
    local zbroj=0
    
    if [ "${dio:0:1}" = "r" ]; then zbroj=$((zbroj + 4)); fi
    
    if [ "${dio:1:1}" = "w" ]; then zbroj=$((zbroj + 2)); fi
    
    if [ "${dio:2:1}" = "x" ]; then zbroj=$((zbroj + 1)); fi
    
    echo "$zbroj"
}

vlasnik=$(izracunaj_znamenku "${dozvola:0:3}")
grupa=$(izracunaj_znamenku "${dozvola:3:3}")
ostali=$(izracunaj_znamenku "${dozvola:6:3}")

oktalno="${vlasnik}${grupa}${ostali}"

chmod "$oktalno" "$putanja"

echo "Uspjeh: Dozvola '$dozvola' je pretvorena u oktalni '$oktalno' i primijenjena na '$putanja'."
