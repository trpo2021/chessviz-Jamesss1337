CXXFLAGS= -Wall -Werror -I src
CXX = g++

OBJ_SRC_CHESS = obj/src/Chess/
OBJ_SRC_LIBCHESS = obj/src/libChess/

SRC_CHESS = src/Chess/
SRC_LIBCHESS = src/libChess/

.PHONY: Chess.exe

Chess.exe: $(OBJ_SRC_CHESS)Chess.o $(OBJ_SRC_LIBCHESS)libChess.a
	$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJ_SRC_CHESS)Chess.o: $(SRC_CHESS)Chess.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)libChess.a: $(SRC_LIBCHESS)deletefigura.o $(SRC_LIBCHESS)doska_def.o $(SRC_LIBCHESS)doska_hod.o $(SRC_LIBCHESS)gamestart.o $(SRC_LIBCHESS)print.o
	ar rcs $@ $^


$(SRC_LIBCHESS)Chess.o: $(SRC_LIBCHESS)Chess.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(OBJ_SRC_LIBCHESS)deletefigura.o: $(SRC_LIBCHESS)deletefigura.cpp
	$(CXX) -c $(CXXLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)doska_def.o: $(SRC_LIBCHESS)doska_def.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(OBJ_SRC_LIBCHESS)gamestart.o: $(SRC_LIBCHESS)gamestart.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)doska_hod.o: $(SRC_LIBCHESS)doska_hod.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<
	
$(OBJ_SRC_LIBCHESS)print.o: $(SRC_LIBCHESS)print.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

.PHONY: clean

clean:
	rm $(OBJ_SRC_CHESS)*.o
	rm $(OBJ_SRC_LIBCHESS)*.o
	rm $(OBJ_SRC_LIBCHESS)*.a
	rm $(SRC_LIBCHESS)*.o

-include deletefigura.d doska_def.d doska_hod.d
-include gamestart.d print.d
