[//]: # (SPDX-License-Identifier: CC-BY-4.0)
[//]: # (TODO Customize project readme)

# ML-KEM libjade

## Current status

This repository includes two ML-KEM-768 Jasmin implementations:
`src/mlkem768_amd64_ref` and `src/mlkem768_amd64_avx2`. 

These Jasmin implementations **will be updated soon**, as
significant performance and security improvements are on
the verge of completion.

These implementations were also published in the
[artifact](https://artifacts.formosa-crypto.org) of the
[CRYPTO 24](https://crypto.iacr.org/2024/program.php) paper,
[Formally verifying Kyber Episode V: Machine-checked IND-CCA security and correctness of ML-KEM in EasyCrypt](https://eprint.iacr.org/2024/843).

## TLDR; How can I quickly test this code?

Go to `examples/mlkem768_amd64_ref` (or `examples/mlkem768_amd64_avx2`)
and type `make`, then, `./example`. Read file `example.c` (including
comments). Check the corresponding `src` folders. If you are already
familiar with ML-KEM-768 API, this should be enough for you to start
prototyping something.

We provide a litle more detail next. When running `make`, you should be
able to see the following:

```
cc -Wall -Wextra  -o example -I ../../src/mlkem768_amd64_ref/ example.c ../../src/mlkem768_amd64_ref/mlkem768_amd64_ref.s -lcrypto
```

Which produces an program named `example` that runs the Jasmin
ML-KEM-768 implementation and prints the inputs/outputs of the
executed functions to the terminal (note that ./example is not
deterministic, meaning that running more than once always prints
different data to the terminal, because we are getting "real"
randombytes for the executions).

Next, we provide an overview of the files related to the example.
First, the files are under the `src` directory and then under `examples`.

In the folder `src/mlkem768_amd64_ref` (or `src/mlkem768_amd64_avx2`),
you can find the following:

* `mlkem768_amd64_ref.jazz` - the Jasmin implementation (available
in a single file for convenience; this might change).

* * `mlkem768_amd64_ref.s` - the assembly file produced with the release
2024.07.2 of the Jasmin compiler. This file defines the ML-KEM-768 functions.
You can recompile this file if you wish; for that, you need a recent release
of the Jasmin compiler. For the user's convenience, we provide the assembly
file so the user can get started quickly.

* `api.h` - The C header file for `mlkem768_amd64_ref.s`. It contains the
function's prototypes and corresponding macros defining, for instance, the
public and secret key lengths.

* * `jasmin_syscall.h` - The ML-KEM-768 implementation needs to get
cryptographically secure random bytes. In the case of the "randomized"
implementation, the implementation itself needs to call an external
function to obtain those random bytes. It is the user's responsibility
to provide such a function, named `__jasmin_syscall_randombytes__`.
`jasmin_syscall.h` shows the type for this function.

In the `examples/mlkem768_amd64_ref` (or `examples/mlkem768_amd64_avx2`),
you find the following two files:

* `Makefile` - defines a rule to build `example` and to remove it
(`make clean`).

* `example.c` - This file is commented on for the user's convenience.
It contains discussions concerning random bytes, the API and namespacing,
and the code to perform key generation, encapsulate, and decapsulate,
followed by a check to ensure that the shared secret from encapsulate
is equal to the one from decapsulate. It contains examples of "randomized"
and "derandomized" APIs.


