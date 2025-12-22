.PHONY: __phony

CC ?=gcc
CFLAGS ?=-Wall -Wextra -O3 -fomit-frame-pointer -z noexecstack

RUNS ?=10
TIMINGS ?=10001
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
 mlkem768_amd64_avx2\
 mlkem1024_amd64_avx2\
 pqcrystals_kyber768_avx2\
 pqcrystals_kyber1024_avx2

BIN :=$(addprefix bin/,$(BIN))
BIN_OUT :=$(addsuffix .csv,$(BIN))

EXTERNAL :=$(abspath ../external/)

default: run

#----------------------------------------------------------
#-- build

$(BIN):
bin/pqcrystals_kyber768_avx2: $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber768_avx2.so __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/avx2/ crypto_kem.c \
	  -DNAMESPACE=pqcrystals_kyber768_avx2 \
	  $(CONFIG) \
	  -L$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lpqcrystals_kyber768_avx2 -lpqcrystals_fips202x4_avx2 -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lcrypto

bin/pqcrystals_kyber1024_avx2: $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber1024_avx2.so __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/avx2/ crypto_kem.c \
	  -DNAMESPACE=pqcrystals_kyber1024_avx2 \
	  $(CONFIG) \
	  -L$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lpqcrystals_kyber1024_avx2 -lpqcrystals_fips202x4_avx2 -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lcrypto

bin/%: __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(SRC)/$*/ crypto_kem.c \
	  -DNAMESPACE=jade_kem_mlkem_$* \
	  -Wa,--noexecstack \
	  $(CONFIG) \
	  $(SRC)/$*/$*.s \
	  -lcrypto

#----------------------------------------------------------
#-- build external

#-- pqcrystals-fips

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so: __phony
	$(MAKE) CFLAGS="-Wa,--noexecstack -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_fips202_ref.so

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so: __phony
	$(MAKE) CFLAGS="-Wa,--noexecstack -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_fips202x4_avx2.so

#-- pqcrystals-kyber768-avx2

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber768_avx2.so: __phony
	$(MAKE) CFLAGS="-Wa,--noexecstack -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_kyber768_avx2.so

#-- pqcrystals-kyber1024-avx2

$(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber1024_avx2.so: __phony
	$(MAKE) CFLAGS="-Wa,--noexecstack -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls -Wshadow -Wpointer-arith -mavx2 -mbmi2 -mpopcnt -march=native -mtune=native -O3 -fomit-frame-pointer -mno-avx512f" -C $(EXTERNAL)/pq_crystals_kyber/avx2/ libpqcrystals_kyber1024_avx2.so

#----------------------------------------------------------
#-- run

run: $(BIN_OUT)
	./table.sh

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

echo-vars:
	@echo "BIN: $(BIN)"

