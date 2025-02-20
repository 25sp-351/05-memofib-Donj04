
OBJS = main.o fibonacci.o cache.o
LIBS = libmemoize.so

all: main $(LIBS)

CC = gcc
CFLAGS = -Wall -ansi -std=c11 --pedantic -Wextra

# A Rule: How to make a .so from a .c file
lib%.so: %.c cache.h
	$(CC) -shared -fPIC $(CFLAGS) -o $@ $<

main: $(OBJS)
	gcc -o $@ $(CFLAGS) $(OBJS) -ldl

# DEPENDENCIES

main.o: fibonacci.h cache.h

fibonacci.o: fibonacci.h

clean:
	rm -f main $(OBJS) $(LIBS)
