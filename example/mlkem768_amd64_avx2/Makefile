
CFLAGS ?= -Wall -Wextra 
SRC :=../../src/mlkem768_amd64_avx2

example: example.c $(SRC)/mlkem768_amd64_avx2.s $(SRC)/jasmin_syscall.c
	$(CC) $(CFLAGS) -o $@ -I $(SRC)/ $^ -lcrypto

clean:
	rm -f example

