CC = gcc
CFLAGS  = -I.

libcos_doubles.so : cos_doubles.o
	$(CC) -dynamiclib -v -Wl -o libcos_doubles.dylib cos_doubles.o

cos_doubles.o : cos_doubles.c
	$(CC) -c -fPIC -v cos_doubles.c -o cos_doubles.o

.PHONY: clean

clean:
	rm -f *.o *.pyc