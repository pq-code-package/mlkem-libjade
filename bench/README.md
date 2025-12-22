# Running the benchmarks

After cloning and initializing this repository, for example, with
```
git clone https://github.com/pq-code-package/mlkem-libjade.git
git submodule init
git submodule update
```

Note that in the benchmarking code, file `crypto_kem.c` line 239, you can find
the following: `#include <openssl/rand.h>`. You might need to install the
corresponding library, for example, with `apt install libssl-dev` (or similar,
depending on your package manager). Please read the notes on providing a
`randombytes`/`__jasmin_syscall_randombytes__` implementation.

Run `make` in this directory (expected runtime: around 1 minute, depending on the CPU).

The expected output is as follows:
```
| operation        | mlkem768_avx2 | pqcrystals_kyber768_avx2   | mlkem1024_avx2 | pqcrystals_kyber1024_avx2 |
|------------------|---------------|----------------------------|----------------|---------------------------|
| keypair_derand   | 41534         | 47157                      | 59977          | 65265                     |
| enc_derand       | 42849         | 48129                      | 62188          | 68549                     |
| dec              | 46210         | 53727                      | 66983          | 76633                     |
```

The executables and their corresponding outputs are placed in the `bin/` directory.

Running `make clean` removes the `bin/` directory and invokes the corresponding `make clean` targets in the external repositories.

# Some results

## i5-8250U

| operation        | mlkem768_avx2 | pqcrystals_kyber768_avx2   | mlkem1024_avx2 | pqcrystals_kyber1024_avx2 |
|------------------|---------------|----------------------------|----------------|---------------------------|
| keypair_derand   | 41534         | 47157                      | 59977          | 65265                     |
| enc_derand       | 42849         | 48129                      | 62188          | 68549                     |
| dec              | 46210         | 53727                      | 66983          | 76633                     |

## i7-11700K

| operation        | mlkem768_avx2 | pqcrystals_kyber768_avx2   | mlkem1024_avx2 | pqcrystals_kyber1024_avx2 |
|------------------|---------------|----------------------------|----------------|---------------------------|
| keypair_derand   | 36077         | 38735                      | 50589          | 54533                     |
| enc_derand       | 36840         | 39371                      | 52843          | 56626                     |
| dec              | 39214         | 43679                      | 56018          | 62707                     |



