# A simple Makefile
# Usage:
# make 
# make clean

CC = gcc

.PHONY: all clean

BIN = hello

all: $(BIN)

clean:
	rm -f *.o $(BIN)

%: %.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -c -o $@ $<

