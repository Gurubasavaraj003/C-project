# Makefile for main.c, big.c, fact.c, rev.c -> ABC.exe

CC     = gcc
CFLAGS = -Wall -Wextra -g
TARGET = ABC.exe
OBJS   = main.o big.o fact.o rev.o

.PHONY: all clean rebuild

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

big.o: big.c
	$(CC) $(CFLAGS) -c big.c

fact.o: fact.c
	$(CC) $(CFLAGS) -c fact.c

rev.o: rev.c
	$(CC) $(CFLAGS) -c rev.c

clean:
	rm -rf *.o $(TARGET)

rebuild: clean all
