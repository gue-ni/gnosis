CC = g++
CPPFLAGS = -Wall -Werror -I include --std=c++17
CFLAGS = 

SRC = $(wildcard src/*.cpp)
HEADERS = $(wildcard include/*.h)
OBJ = $(patsubst src/%.cpp, build/%.o, $(SRC))

APP = sandbox

.PHONY: all clean

all: $(APP) 

$(APP): ${OBJ}
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $<

build/%.o: src/%.cpp ${HEADERS}
	$(CC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

clean:
	rm -f $(APP) build/*.o 


