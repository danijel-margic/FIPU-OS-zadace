### Zadatak 1

pwd
ls
mkdir vjezba1 && cd vjezba1
touch README.md 
cd ..

### Zadatak 2

mkdir vjezba2 && touch vjezba2/file.txt
cp vjezba2/file.txt vjezba2/file_copy.txt
ls vjezba2
cd vjezba2 && rm file.txt && cd ..
rmdir vjezba2 - nije moguće izbrisati jer unutar direktorija postoji datoteka.

### Zadatak 3

mkdir vjezba3 && mkdir vjezba3/backup
touch vjezba3/notes.txt vjezba3/todo.txt vjezba3/script.sh
cp vjezba3/notes.txt vjezba3/backup && cp vjezba3/todo.txt vjezba3/backup && cp vjezba3/script.sh vjezba3/backup
rm vjezba3/script.sh && ls vjezba3
mkdir vjezba3/backup/$USER
mv vjezba3/backup/notes.txt vjezba3/backup/$USER && mv vjezba3/backup/script.sh vjezba3/backup/$USER && mv vjezba3/backup/todo.txt vjezba3/backup/$USER
    [ili da nam život bude lakši:
    mv vjezba3/backup/* vjezba3/backup/$USER]