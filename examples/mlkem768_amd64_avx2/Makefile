
CC ?=cc
CFLAGS ?=-Wall -Wextra
SRC :=../../src/mlkem768_amd64_ref

example: example.c $(SRC)/mlkem768_amd64_avx2.s
	$(CC) $(CFLAGS) -o $@ -I $(SRC)/ $^ -lcrypto

clean:
	rm -f example

