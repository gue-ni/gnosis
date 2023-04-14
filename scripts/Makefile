CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds
LFLAGS  = -lm

OBJDIR = obj
BINDIR = bin
SRC = $(wildcard *.c) $(wildcard **/*.c)
OBJ = $(patsubst %.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: all clean run

TARGET = app

all: $(TARGET)

clean:
	rm -rf $(OBJDIR) $(TARGET)

run: $(TARGET)
	./$(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: %.c
	@mkdir -p  $(dir $@)
	$(CC) $(CFLAGS) -c -o $@ $<

