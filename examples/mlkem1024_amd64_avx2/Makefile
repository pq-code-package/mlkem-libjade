
CC ?=cc
CFLAGS ?=-Wall -Wextra
SRC :=../../src/mlkem1024_amd64_avx2

example: example.c $(SRC)/mlkem1024_amd64_avx2.s
	$(CC) -Wa,--noexecstack $(CFLAGS) -o $@ -I $(SRC)/ $^ -lcrypto

clean:
	rm -f example

