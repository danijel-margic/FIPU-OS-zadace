---
naslov: Druga zadaća iz kolegija Operacijski sustavi
autor: Danijel Margić
datum: 27. 3. 2026. godine
---

### Zadatak 2

```bash
# U radnom direktoriju stvorite direktorije vjezba_2/data i vjezba_2/backup koristeći dvije naredbe mkdir.
mkdir -p vjezba_2/data
mkdir vjezba_2/backup

# Unutar data stvorite sljedeće datoteke:
# script.js
# style.css
# .env
touch vjezba_2/data/{script.js,style.css,.env}


# Naredbom echo unesite sljedeći sadržaj u datoteke:
# script.js: console.log("Hello, World!")
# style.css: body { background-color: #f0f0f0; }
# .env: VJEZBE=OS

echo 'console.log("Hello World!")' > vjezba_2/data/script.js
cat vjezba_2/data/script.js

echo 'body { background-color: #f0f0f0; }' > vjezba_2/data/style.css
cat vjezba_2/data/style.css

echo 'VJEZBE=OS' > vjezba_2/data/.env
cat vjezba_2/data/.env
```

### Zadatak 3

```bash
# Kopirajte sav sadržaj direktorija data u direktorij backup, uključujući i skrivene datoteke. Po potrebi upotrijebite više od jedne naredbe. Ispišite detalje o radnji.

cp -av vjezba_2/data/. vjezba_2/backup/

# Zatim se prebacite u direktorij data i napravite ispis sadržaja direktorija ../backup. Ispis mora:
# biti detaljan,
# uključivati skrivene datoteke,
# biti sortiran po veličini (od najveće prema najmanjoj datoteci)

cd vjezba_2/data/ && ls -laS ../backup
```