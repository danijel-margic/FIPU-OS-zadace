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

### Zadatak 4

```bash
# U direktoriju data izbrišite sve datoteke osim datoteke .env, pri čemu brisanje mora biti interaktivno. Ispišite detalje o radnji.

rm -i vjezba_2/data/*

# Nakon toga u direktorij data kopirajte sav sadržaj direktorija backup (samo sadržaj - bez direktorija), uključujući skrivene datoteke. Po potrebi upotrijebite jednu ili više naredbi, ali spriječite prepisivanje datoteka koje već postoje. Ispišite detalje o radnji.

cp -avn vjezba_2/backup/. vjezba_2/data/

# Na kraju detaljno ispišite sadržaj direktorija data tako da ispis:
# uključuje skrivene datoteke,
# ne uključuje posebne direktorije . i ..,
# bude sortiran prema datumu zadnje izmjene (od najnovije prema najstarijoj datoteci),
# prikazuje po jednu stavku u svakom retku.

ls -lAt1 vjezba_2/data/

# Kojom još naredbom možete ispisati sadržaj direktorija data? Napišite naredbom i primjer rezultata.

tree -a vjezba_2/data/

vjezba_2/data/
├── .env
├── script.js
└── style.css
```

### Zadatak 5

```bash
# Otvorite direktorij na vašem računalu po želji kroz CLI, ali neka ne sadrži više od 20 datoteka. Direktorij mora sadržavati ugniježđene direktorije s nekoliko datoteka unutar njih.

# Ispišite detaljno sadržaj glavnog direktorija, uključujući sve skrivene datoteke, i sortirajte ga po veličini (od najveće prema najmanjoj datoteci).

ls -laS

# Ispišite detaljno sadržaj glavnog direktorija bez skrivenih datoteka, sortirajte ga po veličini i prikažite jedinice uz veličinu datoteka.

ls -lSh

# Ispišite sav sadržaj direktorija, uključujući poddirektorije, njihove datoteke i skrivene datoteke koristeći stablastu strukturu.

tree -a
```