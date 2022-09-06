# 2022-09-03

CC 				= g++
CPPFLAGS 	= -Wall -Werror --std=c++17 -Iinclude 

SRC 			= $(wildcard src/*.cpp)
HEADERS 	= $(wildcard include/*.h)
OBJ 			= $(patsubst src/%.cpp, build/%.o, $(SRC))

CPPFLAGS 	+= -pthread

APP = sandbox

.PHONY: all clean

all: $(APP) 

$(APP): $(OBJ)
	$(CC) $(CPPFLAGS) -o $@ $^

build/%.o: src/%.cpp $(HEADERS)
	$(CC) $(CPPFLAGS) -c -o $@ $<

clean:
	rm -f $(APP) build/*.o 


