#
# Makefile de Floating Decimal Point
#

CC = gcc
AR = ar
ARFLAGS = rcs

fdp.o: fdp.c
	$(CC) -c -o fdp.o fdp.c

libfdp.a: fdp.o
	$(AR) $(ARFLAGS) libfdp.a fdp.o

.PHONY: all clean

all: fdp.o libfdp.a
clean: 
	rm -rf fdp.o libfdp.a
