CHESSVIZ_OBJ = obj/src/Chess/
CXXFLAGS = -Wall -Werror -Wextra -I src -I thirdparty
CHESSVIZ_SRC = src/Chess/
LIBCHESSVIZ_SRC = src/libChess/

CHESSVIZ_OBJ = obj/src/Chess/
LIBCHESSVIZ_OBJ = obj/src/libChess/

CHESSVIZ_BIN = bin/

SRC = src/

TEST = test/

TEST_OBJ = obj/test/

TEST_THIRDPARTY = test/thirdparty/

.PHONY: Chess

$(CHESSVIZ_BIN)Chess.exe: $(CHESSVIZ_OBJ)Chess.o $(LIBCHESSVIZ_OBJ)libChess.a $(LIBCHESSVIZ_SRC)gamestart.h
	$(CXX) $(CXXFLAGS) -o $@ $^

$(CHESSVIZ_OBJ)Chess.o: $(CHESSVIZ_SRC)Chess.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(LIBCHESSVIZ_OBJ)libChess.a: $(LIBCHESSVIZ_OBJ)print.o $(LIBCHESSVIZ_OBJ)gamestart.o $(LIBCHESSVIZ_OBJ)doska_def.o $(LIBCHESSVIZ_OBJ)doska_hod.o $(LIBCHESSVIZ_OBJ)deletefigura.o 
	ar rcs $@ $^

$(LIBCHESSVIZ_OBJ)print.o: $(LIBCHESSVIZ_SRC)print.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<
		
$(LIBCHESSVIZ_OBJ)gamestart.o: $(LIBCHESSVIZ_SRC)gamestart.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(LIBCHESSVIZ_OBJ)doska_def.o: $(LIBCHESSVIZ_SRC)doska_def.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(LIBCHESSVIZ_OBJ)doska_hod.o: $(LIBCHESSVIZ_SRC)doska_hod.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(LIBCHESSVIZ_OBJ)deletefigura.o: $(LIBCHESSVIZ_SRC)deletefigura.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<


.PHONY: test

test: $(CHESSVIZ_BIN)test.exe

$(CHESSVIZ_BIN)test.exe: $(TEST_OBJ)main.o $(TEST_OBJ)testlibchessviz.a
	$(CXX) $(CXXFLAGS) -o $@ $^

$(TEST_OBJ)main.o: $(TEST)main.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(TEST_OBJ)testlibchessviz.a: $(TEST_OBJ)print.o $(TEST_OBJ)doska_def.o $(TEST_OBJ)doska_hod.o $(TEST_OBJ)gamestart.o $(TEST_OBJ)deletefigura.o 
	ar rcs $@ $^

$(TEST_OBJ)print.o: $(LIBCHESSVIZ_SRC)print.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<
			
$(TEST_OBJ)doska_def.o: $(LIBCHESSVIZ_SRC)doska_def.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(TEST_OBJ)doska_hod.o: $(LIBCHESSVIZ_SRC)doska_hod.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(TEST_OBJ)gamestart.o: $(LIBCHESSVIZ_SRC)gamestart.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

$(TEST_OBJ)deletefigura.o: $(LIBCHESSVIZ_SRC)deletefigura.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<

### TEST

-include print.d doska_def.d doska_hod.d gamestart.d deletefigura.d

.PHONY: clean-test

clean-test:
	rm $(TEST_OBJ)*.o
	rm $(TEST_OBJ)*.a
	rm $(CHESSVIZ_BIN)*.exe

.PHONY: clean

clean:
	rm $(OBJ_SRC_CHESS)*.o
	rm $(OBJ_SRC_LIBCHESS)*.o
	rm $(OBJ_SRC_LIBCHESS)*.a
	rm $(SRC_LIBCHESS)*.o

-include deletefigura.d doska_def.d doska_hod.d
-include gamestart.d print.d
