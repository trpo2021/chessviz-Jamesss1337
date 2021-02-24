all: chessviz

chessviz: main.o
	g++ main.o -o chessviz

main.o: main.cpp
	g++ -Wall -Werror -c main.cpp

clean:
	rm -rf *.o chessviz
