# Notes

The checksums between the implementations from this repository and the pq-crystals/kyber do not match at the moment. This is due to a a [commit](https://github.com/pq-crystals/kyber/commit/3c874cddd5fdaf4a7bd13f7e2e4d98a2a1eb8dc4) in pq-crystals that adds domain separation to key generation. Domain separation in key generation is not yet integrated into the implementations from this repository.

Nonetheless, checksums can be seen matching as follows:
```
cd external/pq_crystals_kyber/
git revert --no-commit 3c874cddd5fdaf4a7bd13f7e2e4d98a2a1eb8dc4
cd ../../test/
make clean
make -j$(nproc) LOOPS=1000
find bin/ -name "*checksumgiant.out" | sort | xargs cat
```


