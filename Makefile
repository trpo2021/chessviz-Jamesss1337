all: chessvizz

chessviz: chessviz.o
	gcc chessviz.o -o chessvizz

chessviz.o: chessviz.c
	gcc -Wall -Werror -c chessviz.c

clean:
	rm -rf *.o chessvizz