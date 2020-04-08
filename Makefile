CC=gcc
CFLAGS= -pedantic -std=c89

.PHONY: build run test clean

all: build

build: a.out

a.out:
	$(CC) $(CFLAGS) task1.c

run: a.out
	./a.out

test: a.out
	./a.out bacc

clean:
	rm -rf *.o a.out