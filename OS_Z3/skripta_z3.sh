#!/bin/bash

direktorij="screenshots"

brojac=1

for putanja in "$direktorij"/*; do
	if [ -f "$putanja" ]; then
		ime=$(basename "$putanja")

		novo_ime="screenshot_${brojac}_${ime}"

		mv "$putanja" "$direktorij/$novo_ime"

		echo "Preimenovano: $ime -> $novo_ime"

		((brojac++))
    	fi
done
