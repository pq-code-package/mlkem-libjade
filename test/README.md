# Running the tests

After cloning and initializing this repository, for example, with
```
git clone https://github.com/pq-code-package/mlkem-libjade.git
git submodule init
git submodule update
```


Run `make` in this directory (expected runtime: between 5 and 10 minutes, depending on the CPU).


The expected output is as follows:
```
OK - bin/mlkem768_amd64_avx2_checksumsmall.out / bin/pqcrystals_kyber768_avx2_checksumsmall.out
OK - bin/mlkem1024_amd64_avx2_checksumsmall.out / bin/pqcrystals_kyber1024_avx2_checksumsmall.out
OK - bin/mlkem768_amd64_avx2_checksumbig.out / bin/pqcrystals_kyber768_avx2_checksumbig.out
OK - bin/mlkem1024_amd64_avx2_checksumbig.out / bin/pqcrystals_kyber1024_avx2_checksumbig.out
OK - bin/mlkem768_amd64_avx2_checksumgiant.out / bin/pqcrystals_kyber768_avx2_checksumgiant.out
OK - bin/mlkem1024_amd64_avx2_checksumgiant.out / bin/pqcrystals_kyber1024_avx2_checksumgiant.out
```


The testing procedure included in this repository checks whether the implementations compute the same results as the corresponding pq-crystals implementation. We plan to integrate additional implementations into this testing procedure in the future.


The executables and their corresponding outputs are placed in the `bin/` directory.


Running `make clean` removes the `bin/` directory and invokes the corresponding `make clean` targets in the external repositories.
