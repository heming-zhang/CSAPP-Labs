.PHONY: all clean

# define variables necessary
PROG = test-list
CFLAGS = -g -Wall -O0

all: $(PROG) 

%.o: %.c
	gcc $(CFLAGS) -c $^ -o $@ 

test-list: test-list.o list.o
	gcc $^ -o $@ 

clean:
	rm -f $(PROG) *.o
