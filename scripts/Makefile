CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds
LFLAGS  = -lm

SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, obj/%.o, $(SRC))

.PHONY: all clean run

BIN = app

all: $(BIN)

clean:
        rm -rf $(OBJ) $(BIN)

run: $(BIN)
        ./$(BIN)

$(BIN): $(OBJ)
        $(CC) $(LFLAGS) -o $@ $^

obj/%.o: %.c
        $(CC) $(CFLAGS) -c -o $@ $<
