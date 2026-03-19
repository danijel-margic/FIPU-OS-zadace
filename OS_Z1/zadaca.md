---
naslov: Prva zadaća iz kolegija Operacijski sustavi
autor: Danijel Margić
datum: 16. 3. 2026. godine
---

### Zadatak 1

```bash
# Provjerite trenutni radni direktorij
pwd 

# Izlistajte sadržaj trenutnog radnog direktorija
ls 

# Napravite novi direktorij vjezba1 i prebacite se u njega
mkdir vjezba1 && cd vjezba1

# Unutar direktorija vjezba1 napravite novu datoteku README.md
touch README.md

# Vratite se u početni radni direktorij
cd .. 
```

### Zadatak 2

``` bash
# Napravite praznu datoteku file.txt unutar direktorija vjezba2
mkdir vjezba2 && touch vjezba2/file.txt

# Kopirajte datoteku file.txt u direktorij vjezba2 i nazovite ju file_copy.txt
cp vjezba2/file.txt vjezba2/file_copy.txt

# Ispišite sve datoteke unutar direktorija vjezba2
ls vjezba2

# Obrišite datoteku file.txt i vratite se u početni radni direktorij
cd vjezba2 && rm file.txt && cd ..

Pokušajte izbrisati direktorij vjezba2. Zašto ne možete?
rmdir vjezba2 # nije moguće izbrisati jer unutar direktorija postoji datoteka.
```

### Zadatak 3

```bash
# Napravite novi direktorij vjezba3 i unutar njega direktorij backup
mkdir vjezba3 && mkdir vjezba3/backup

# Unutar direktorija vjezba3 napravite 3 datoteke: notes.txt, todo.txt i script.sh
touch vjezba3/notes.txt vjezba3/todo.txt vjezba3/script.sh

# Kopirajte sve datoteke iz direktorija vjezba3 u direktorij backup
cp vjezba3/notes.txt vjezba3/backup && cp vjezba3/todo.txt vjezba3/backup && cp vjezba3/script.sh vjezba3/backup

# Izbrišite samo datoteku script.sh iz direktorija vjezba3 i ispišite sve datoteke
rm vjezba3/script.sh && ls vjezba3

# U backup dodajte još jedan direktorij koju ćete imenovati USER varijablom
mkdir vjezba3/backup/$USER

# Premjestite sve datoteke iz direktorija backup u direktorij nazvan varijablom USER
mv vjezba3/backup/notes.txt vjezba3/backup/$USER && mv vjezba3/backup/script.sh vjezba3/backup/$USER && mv vjezba3/backup/todo.txt vjezba3/backup/$USER

# [ili da nam život bude lakši: mv vjezba3/backup/* vjezba3/backup/$USER]
```

### Zadatak 4

```bash
# Napravite novi direktorij vjezba4 i unutar njega direktorij subfolder
mkdir vjezba4 && mkdir vjezba4/subfolder

# Unutar direktorija vjezba4 napravite datoteku prema nazivu varijable HOSTNAME
touch vjezba4/$HOSTNAME

# Preimenujte novoizrađenu datoteku prema nazivu varijable USER
mv vjezba4/$USER vjezba4/subfolder/

# Izbrišite datoteku USER koristeći apsolutnu putanju
rm /mnt/c/Users/Daniel/GitHub/FIPU-OS-zadace/vjezba4/subfolder/$USER
```

### Zadatak 5

```bash
# Unutar direktorija vjezba5 napravite datoteku naziva prema nasumičnom broju generiranom varijablom $RANDOM i s ekstenzijom .num
mkdir vjezba5 && touch vjezba5/${RANDOM}.num

# Kako ćete provjeriti da je datoteka stvorena? Koju naredbu ćete koristiti?
ls vjezba5/

# Napravite kopiju datoteke nazvanu backup.num unutar direktorija vjezba5
cp vjezba5/19333.num vjezba5/backup.num

# Stvorite novi direktorij unutar roditeljskog direktorija vjezba5 i nazovite ga backup
mkdir vjezba5/backup

# Premjestite datoteku backup.num u direktorij backup
mv vjezba5/backup.num vjezba5/backup/
```


