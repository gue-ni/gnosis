# a very versatile Makefile that supports nested src directories
CC      = gcc
CFLAGS  = --std=iso9899:1999 -Wall -Wextra -pedantic -fsanitize=bounds -O3 -g
LFLAGS  = -lm

OBJDIR 	= obj
BINDIR 	= bin
SRCDIR 	= src

SRC 	= $(shell find $(SRCDIR) -name '*.c')
OBJ 	= $(patsubst %.c, $(OBJDIR)/%.o, $(SRC))

.PHONY: all clean run valgrind gprof format

TARGET = app

all: $(BINDIR)/$(TARGET)

clean:
	rm -rf $(OBJDIR) $(BINDIR)

run: $(BINDIR)/$(TARGET)
	./$(BINDIR)/$(TARGET)

# check for memory leaks
valgrind: all
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind_report.txt $(BINDIR)/$(TARGET)

# performance benchmark
gprof: CFLAGS += -pg
gprof: LFLAGS += -pg
gprof: clean run
	gprof $(BINDIR)/$(TARGET) gmon.out > gprof_report.txt

format: .clang-format
	clang-format -i --style=Google $(SRCDIR)/*.[ch]

$(BINDIR)/$(TARGET): $(OBJ)
	@mkdir -p $(dir $@)
	$(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: %.c
	@mkdir -p  $(dir $@)
	$(CC) $(CFLAGS) -c -o $@ $<


