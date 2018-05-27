CC=gcc
CFLAGS=-I.
DEPS=hellomake.h
OBJ=hellomain.o hellomake.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomain: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY:clean
clean:
	rm -f $(OBJ) hellomain
