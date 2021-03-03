CFLANG= -Wall -Werror
all:chessvz
chessvz: main.cpp
	g++ $(CFLANG) main.cpp

clean:
	rm -rf *.o chessvz
