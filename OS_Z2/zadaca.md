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

### Povijest naredbi
```bash
    1  ls -r
    2  ls -R
    3  cd OS_Z2
    4  ls
    5  ls -R
    6  mkdir vjezba_2/data
    7  mkdir -p vjezba_2/data
    8  mkdir vjezba_2/backup
    9  ls -R
   10  touch vjezba_2/data/script.js style.css .env
   11  ls -R
   12  tree
   13  ls -tree
   14  tree
   15  sudo snap install tree
   16  tree
   17  sudo snap remove tree
   18  sudo apt update
   19  sudo apt install tree
   20  tree
   21  tree vjezba_2
   22  hash -r
   23  tree
   24  cd OS_Z2
   25  tree
   26  rm .env
   27  rm style.css 
   28  rm vjezba_2/data/script.js 
   29  tree
   30  touch vjezba_2/data/{script.js, style.css, .env}
   31  tree
   32  touch vjezba_2/data/{script.js,style.css,.env}
   33  tree
   34  tree ls -a
   35  ls vjezba_2/data/
   36  ls -a vjezba_2/data/
   37  rm vjezba_2/data/\{script.js\, 
   38  ls -a vjezba_2/data/
   39  tree
   40  history
   41  ls -h
   42  rm style.css, 
   43  ls -a
   44  rm .env} 
   45  ls -a
   46  ls -ha
   47  ls -lh
   48  ls -t
   49  ls -lth
   50  ls -1
   51  ls -1 vjezba_2/
   52  ls --color
   53  la -1
   54  ls -X
   55  tree
   56  cd ..
   57  tree
   58  cd OS_Z2
   59  man ls
   60  tree
   61  echo 'console.log("Hello World!")' > vjezba_2/data/script.js 
   62  cat vjezba_2/data/script.js 
   63  echo 'body { background-color: #f0f0f0; }' . vjezba_2/data/style.css 
   64  cat vjezba_2/data/style.css 
   65  echo 'body { background-color: #f0f0f0; }' > vjezba_2/data/style.css 
   66  cat vjezba_2/data/style.css 
   67  echo 'VJEZBE=OS' > vjezba_2/data/.env 
   68  cat vjezba_2/data/.env
   69  git add .
   70  git commit -m "Vjezžbe 2 rješenja"
   71  git add .
   72  git commit -m "Dodana rješenja za Vježbu 2 Zadatak 2"
   73  git push
   74  tree
   75  man ls
   76  ls -l
   77  ls -1
   78  ls -l1
   79  ls -1l
   80  ls -l
   81  ls -h
   82  ls -lh
   83  ls -t
   84  ls -lth
   85  cd OS_Z2
   86  ls
   87  ls -1
   88  ls -S
   89  ls --color
   90  ls -1 --color
   91  tree -h
   92  pwd
   93  tree
   94  tree -a
   95  tree ..
   96  clear
   97  tree -a
   98  cp vjezba_2/data/.* vjezba_2/backup/
   99  tree -a
  100  rm vjezba_2/backup/.env 
  101  tree -a
  102  cp -v vjezba_2/data/script.js vjezba_2/backup/
  103  tree
  104  rm vjezba_2/backup/script.js 
  105  tree
  106  clear
  107  tree
  108  cp -av vjezba_2/data/. vjezba_2/backup/
  109  tree -a
  110  cd vjezba_2/data/ && ls -laS
  111  cd .. ..
  112  cd ..
  113  cd..
  114  cd .
  115  cd ..
  116  cd vjezba_2/data/ && la -laS ../backup
  117  cd ..
  118  cd vjezba_2/data/ && ls -laS ../backup
  119  clear
  120  pwd
  121  git add .
  122  git commit -m "Dodavanje rješenja za vježbu 2 zadatak 3"
  123  cd ..
  124  git add .
  125  git commit -m "Dodavanje rješenja za vježbu 2 zadatak 3"
  126  push
  127  cd ..
  128  git add .
  129  git commit -m "Dodavanje rješenja za vježbu 2 zadatak 3"
  130  git push
  131  ls -l1
  132  ls -l
  133  git add .
  134  git commit -m "Dodavanje rješenja za vježbu 2 zadatak 3"
  135  git push
  136  git --version
  137  clear
  138  cd OS_Z2
  139  ls
  140  tree
  141  rm -i vjezba_2/data/*
  142  tree
  143  cp -avn vjezba_2/backup/. vjezba_2/data/
  144  tree -a
  145  rm vjezba_2/data/*
  146  tree -a
  147  cp -av -n vjezba_2/backup/. vjezba_2/data/
  148  cp -avn vjezba_2/backup/. vjezba_2/data/
  149  rm vjezba_2/data/*
  150  clear
  151  tree
  152  tree -a
  153  cp -avn vjezba_2/backup/. vjezba_2/data/
  154  ls -A vjezba_2/data/
  155  ls -At vjezba_2/data/
  156  ls -At1 vjezba_2/data/
  157  ls -aAt1 vjezba_2/data/
  158  ls -at1 vjezba_2/data/
  159  ls -At1 vjezba_2/data/
  160  ls -lAt1 vjezba_2/data/
  161  ls -lA1 vjezba_2/data/
  162* ls -lAt vjezba_2/data/
  163  ls -lAt1 vjezba_2/data/
  164  tree -lAt1 vjezba_2/data/
  165  tree -lA vjezba_2/data/
  166  tree -l vjezba_2/data/
  167  tree -a vjezba_2/data/
  168  cd ..
  169  cd ..\
  170  cd ..
  171  ls -a
  172  ls -a1
  173  ls -la
  174  ls -laS
  175  ls -lS
  176  ls -lSh
  177  tree -a
  178  git add .
  179  cd git
  180  ls
  181  cd GitHub/
  182  ls
  183  cd FIPU-OS-zadace/
  184  ls
  185  ls -1
  186  cd FIPU-OS-zadace/
  187  ls
  188  cd ..
  189  git add .
  190  git push
  191  cd ..
  192  ls
  193  ls -laS
  194  ls -lASh
  195  ls -lSh
  196  tree -a 
  197  git add .
  198  cd GitHub/
  199  cd FIPU-OS-zadace/
  200  ls
  201  git add .
  202  git commit "Dodavanje rješenja 5. zadatka"
  203  git commit -m "Dodavanje rješenja 5. zadatka"
  204  git push
  205  history
  206  history > vjezba_2_history.txt
  207  rm vjezba_2_history.txt 
  208  ls -a
  209  cd OS_Z2
  210  ls -a1
  211  history > vjezba_2_history.txt
```