ABC.exe: main.o big.o fact.o rev.o
<TAB>gcc -o ABC.exe main.o big.o fact.o rev.o

main.o: main.c
<TAB>gcc -c main.c

big.o: big.c
<TAB>gcc -c big.c

fact.o: fact.c
<TAB>gcc -c fact.c

rev.o: rev.c
<TAB>gcc -c rev.c

clean:
<TAB>rm -rf *.o
