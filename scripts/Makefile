CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds
LFLAGS  = -lm

OBJDIR = obj
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: all clean run

BIN = app

all: $(BIN)

clean:
        rm -rf $(OBJDIR) $(BIN)

run: $(BIN)
        ./$(BIN)

$(BIN): $(OBJ)
        $(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: %.c | $(OBJDIR) 
        $(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR):
        mkdir -p $(OBJDIR)
