.PHONY: __phony

CC ?=gcc
CFLAGS ?=-Wall -Wextra -O3 -fomit-frame-pointer -z noexecstack

RUNS ?=5
TIMINGS ?=1001
CHECK_SHARED_SECRET ?=1
CHECK_POINTERS_ALIGNMENT ?=1
PRINT_SORTED_RUNS ?=1
PRINT_RUNS_MEDIAN ?=1
PRINT_JUST_DERAND ?=1
CONFIG :=\
 -DRUNS=$(RUNS) \
 -DTIMINGS=$(TIMINGS) \
 -DCHECK_SHARED_SECRET=$(CHECK_SHARED_SECRET) \
 -DCHECK_POINTERS_ALIGNMENT=$(CHECK_POINTERS_ALIGNMENT) \
 -DPRINT_SORTED_RUNS=$(PRINT_SORTED_RUNS) \
 -DPRINT_RUNS_MEDIAN=$(PRINT_RUNS_MEDIAN) \
 -DPRINT_JUST_DERAND=$(PRINT_JUST_DERAND)

SRC :=$(abspath ../src/)
BIN := \
 mlkem768_amd64_ref\
 mlkem768_amd64_avx2\
 pqcrystals_kyber768_ref\
 pqcrystals_kyber768_avx2

BIN :=$(addprefix bin/,$(BIN))
BIN_OUT :=$(addsuffix .csv,$(BIN))

EXTERNAL :=$(abspath ../external/)

default: run

#----------------------------------------------------------
#-- build

$(BIN):
bin/pqcrystals_kyber768_ref: $(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_kyber768_ref.so __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/ref/ crypto_kem.c \
	  -DNAMESPACE=pqcrystals_kyber768_ref \
	  $(CONFIG) \
	  -L$(EXTERNAL)/pq_crystals_kyber/ref/lib \
	  -lpqcrystals_kyber768_ref -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/ref/lib \
	  -lcrypto

bin/pqcrystals_kyber768_avx2: $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber768_avx2.so __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/avx2/ crypto_kem.c \
	  -DNAMESPACE=pqcrystals_kyber768_avx2 \
	  $(CONFIG) \
	  -L$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lpqcrystals_kyber768_avx2 -lpqcrystals_fips202x4_avx2 -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lcrypto

bin/%: __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(SRC)/$*/ crypto_kem.c \
	  -DNAMESPACE=jade_kem_mlkem_$* \
	  $(CONFIG) \
	  $(SRC)/$*/$*.s \
	  -lcrypto

#----------------------------------------------------------
#-- build external

#-- pqcrystals-kyber768-ref
$(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_fips202_ref.so: __phony
	$(MAKE) CFLAGS="-Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -O3 -fomit-frame-pointer -z noexecstack -mno-sse -mno-sse2 -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-avx -mno-avx2 -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/ref/ lib/libpqcrystals_fips202_ref.so

$(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_kyber768_ref.so: __phony
	$(MAKE) CFLAGS="-Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -O3 -fomit-frame-pointer -z noexecstack -mno-sse -mno-sse2 -mno-sse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -mno-avx -mno-avx2 -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/ref/ lib/libpqcrystals_kyber768_ref.so

#-- pqcrystals-kyber768-avx2

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so: __phony
	$(MAKE) CFLAGS="-Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -z noexecstack -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_fips202_ref.so

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so: __phony
	$(MAKE) CFLAGS="-Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -z noexecstack -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_fips202x4_avx2.so

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber768_avx2.so: __phony
	$(MAKE) CFLAGS="-Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -z noexecstack -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_kyber768_avx2.so

#----------------------------------------------------------
#-- run

run: $(BIN_OUT)
	for i in $(BIN_OUT); do \
		echo "$$i"; cat $$i; echo ""; \
	done

bin/%.csv: bin/%
	./$< > $@

#----------------------------------------------------------
#-- other

bin/: ; @mkdir -p $@

.PHONY: clean
clean:
	rm -fr bin/ *.csv
	$(MAKE) -C $(EXTERNAL)/pq_crystals_kyber/ref/ clean
	$(MAKE) -C $(EXTERNAL)/pq_crystals_kyber/avx2/ clean

