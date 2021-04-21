CFLAGS= -Wall -Werror -I src

OBJ_SRC_CHESS = obj/src/Chess/
OBJ_SRC_LIBCHESS = obj/src/libChess/

SRC_CHESS = src/Chess/
SRC_LIBCHESS = src/libChess/
.PHONY: Chess.exe

chess.exe: $(OBJ_SRC_CHESS)Chess.o $(OBJ_SRC_LIBCHESS)libChess.a
	g++ $(CFLAGS) -o $@ $^

$(OBJ_SRC_CHESS)Chess.o: $(SRC_CHESS)Chess.cpp
	g++ -c $(CFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)libChess.a: $(OBJ_SRC_LIBCHESS)*.o
	ar rcs $@ $^


$(OBJ_SRC_LIBCHESS)*.o: $(SRC_LIBCHESS)*.cpp
	g++ -c $(CFLAGS) -o $@ $<

.PHONY: clean

clean:
	rm -rf *.o
	rm -rf *.a
	rm -rf *.exe

-include deletefigura.d doska_def.d doska_hod.d
-include gamestart.d print.d 
