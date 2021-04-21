CFLAGS= -Wall -Werror -I src

OBJ_SRC_CHESS = obj/src/chess/
OBJ_SRC_LIBCHESS = obj/src/libchess/

SRC_CHESS = src/chess/
SRC_LIBCHESS = src/libchess/
.PHONY: chess.exe

chess.exe: $(OBJ_SRC_CHESS)Chess.o $(OBJ_SRC_LIBCHESS)libchess.a
	g++ $(CFLAGS) -o $@ $^

$(OBJ_SRC_CHESS)Chess.o: $(SRC_CHESS)Chess.cpp
	g++ -c $(CFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)libchess.a: $(OBJ_SRC_LIBCHESS)*.o
	ar rcs $@ $^


$(OBJ_SRC_LIBCHESS)*.o: $(SRC_LIBCHESS)*.cpp
	g++ -c $(CFLAGS) -o $@ $<

.PHONY: clean

clean:
	rm -rf *.o chesss

-include check_figure_black.d check_figure_white.d draw_chessboard.d
-include game_start.d move_black.d move_white.d
