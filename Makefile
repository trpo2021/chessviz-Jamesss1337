CFLAGS= -Wall -Werror -I src
CC = g++

OBJ_SRC_CHESS = obj/src/Chess/
OBJ_SRC_LIBCHESS = obj/src/libChess/

SRC_CHESS = src/Chess/
SRC_LIBCHESS = src/libChess/

.PHONY: Chess.exe

Chess.exe: $(OBJ_SRC_CHESS)Chess.o $(OBJ_SRC_LIBCHESS)libChess.a
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_SRC_CHESS)Chess.o: $(SRC_CHESS)Chess.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)libChess.a: $(SRC_LIBCHESS)deletefigura.o $(SRC_LIBCHESS)doska_def.o $(SRC_LIBCHESS)doska_hod.o $(SRC_LIBCHESS)gamestart.o $(SRC_LIBCHESS)print.o
	ar rcs $@ $^


$(SRC_LIBCHESS)Chess.o: $(SRC_LIBCHESS)Chess.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_SRC_LIBCHESS)deletefigura.o: $(SRC_LIBCHESS)deletefigura.cpp
	$(CC) -c $(CLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)doska_def.o: $(SRC_LIBCHESS)doska_def.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJ_SRC_LIBCHESS)gamestart.o: $(SRC_LIBCHESS)gamestart.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)doska_hod.o: $(SRC_LIBCHESS)doska_hod.cpp
	$(CC) -c $(CFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)print.o: $(SRC_LIBCHESS)print.cpp
	$(CC) -c $(CFLAGS) -o $@ $<

.PHONY: clean

clean:
	rm $(OBJ_SRC_LIBCHESS)*.o Chess

-include deletefigura.d doska_def.d doska_hod.d
-include gamestart.d print.d
