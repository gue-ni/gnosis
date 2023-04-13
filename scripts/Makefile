CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds
LFLAGS  = -lm

OBJDIR = obj
BINDIR = bin
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: all clean run

TARGET = app

all: $(TARGET)

clean:
        rm -rf $(OBJDIR) $(TARGET)

run: $(TARGET)
        ./$(TARGET)

$(BIN): $(OBJ)
        $(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: %.c | $(OBJDIR) 
        $(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR):
        mkdir -p $(OBJDIR)
