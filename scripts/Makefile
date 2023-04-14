# a very versatile Makefile that supports nested src directories
CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds -O2
LFLAGS  = -lm

OBJDIR = obj
BINDIR = bin
SRCDIR = src

SRC = $(shell find $(SRCDIR) -name '*.c')
OBJ = $(patsubst %.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: all clean run

TARGET = app

all: $(BINDIR)/$(TARGET)

clean:
	rm -rf $(OBJDIR) $(BINDIR)

run: $(BINDIR)/$(TARGET)
	./$(BINDIR)/$(TARGET)

$(BINDIR)/$(TARGET): $(OBJ)
	@mkdir -p $(dir $@)
	$(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: %.c
	@mkdir -p  $(dir $@)
	$(CC) $(CFLAGS) -c -o $@ $<

