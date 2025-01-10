all: compile

CFLAGS = -O2 -Wall -Werror -g

compile:
	clang $(CFLAGS) -DPUSH=1 -target bpf -S -c test.c -o test.s

clean:
	rm -rf *.o || true
