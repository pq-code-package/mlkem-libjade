
CFLAGS ?= -Wall -Wextra 
SRC :=../../src/mlkem768_amd64_avx2

example-linux: example.c $(SRC)/mlkem768_amd64_avx2_linux.s $(SRC)/jasmin_syscall.c
	$(CC) $(CFLAGS) -o $@ -I $(SRC)/ $^ -lcrypto

clean:
	rm -f example-linux

