.PHONY: __phony

CC ?=gcc
CFLAGS ?=-Wall -Wextra -Wpedantic -Wvla -Werror -std=c99 \
  -Wundef -Wshadow -Wcast-align -Wpointer-arith \
	-fstrict-aliasing -fno-common -pipe -O3 -g

SRC :=$(abspath ../src/)
BIN := \
 mlkem768_amd64_ref\
 mlkem768_amd64_avx2\
 pqcrystals_kyber768_ref\
 pqcrystals_kyber768_avx2

BIN :=$(addprefix bin/,$(BIN))
BIN_CHECKSMALL :=$(addsuffix _checksumsmall,$(BIN))
BIN_CHECKBIG :=$(addsuffix _checksumbig,$(BIN))
BIN_CHECKGIANT :=$(addsuffix _checksumgiant,$(BIN))
BIN :=$(BIN_CHECKSMALL) $(BIN_CHECKBIG) $(BIN_CHECKGIANT)
BIN_OUT :=$(addsuffix .out,$(BIN))

LOOPS ?=100000

EXTERNAL :=$(abspath ../external/)

default: run

#----------------------------------------------------------
#-- build

build: $(BIN)

#--pq-crystals/kyber/ref
define CHECKSUM_RULE1
bin/pqcrystals_kyber768_ref_checksum$(1): TESTING_LOOPS=$(2)
bin/pqcrystals_kyber768_ref_checksum$(1): $(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/ref/lib/libpqcrystals_kyber768_ref.so __phony | bin/
	$(CC) $(CFLAGS) \
	  -o $$@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/ref/ \
	  -DTESTING_LOOPS=$$(TESTING_LOOPS) \
	  -DNAMESPACE=pqcrystals_kyber768_ref \
	  checksums.c \
	  -L$(EXTERNAL)/pq_crystals_kyber/ref/lib \
	  -lpqcrystals_kyber768_ref -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/ref/lib
endef

#--pq-crystals/kyber/avx2
define CHECKSUM_RULE2
bin/pqcrystals_kyber768_avx2_checksum$(1): TESTING_LOOPS=$(2)
bin/pqcrystals_kyber768_avx2_checksum$(1): $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202_ref.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_fips202x4_avx2.so $(EXTERNAL)/pq_crystals_kyber/avx2/libpqcrystals_kyber768_avx2.so __phony | bin/
	$(CC) $(CFLAGS) \
	  -o $$@ \
	  -I $(EXTERNAL)/pq_crystals_kyber/avx2/ \
	  -DTESTING_LOOPS=$$(TESTING_LOOPS) \
	  -DNAMESPACE=pqcrystals_kyber768_avx2 \
	  checksums.c \
	  -L$(EXTERNAL)/pq_crystals_kyber/avx2 \
	  -lpqcrystals_kyber768_avx2 -lpqcrystals_fips202x4_avx2 -lpqcrystals_fips202_ref \
	  -Wl,-rpath,$(EXTERNAL)/pq_crystals_kyber/avx2
endef

define CHECKSUM_RULE3
bin/%_checksum$(1): TESTING_LOOPS=$(2)
bin/%_checksum$(1): __phony | bin/
	$(CC) $(CFLAGS) \
	  -o $$@ \
	  -I $(SRC)/$$*/ \
	  -DTESTING_LOOPS=$$(TESTING_LOOPS) \
	  -DNAMESPACE=jade_kem_mlkem_$$* \
	  checksums.c \
	  $(SRC)/$$*/$$*.s
endef

$(BIN):
$(eval $(call CHECKSUM_RULE1,small,8))
$(eval $(call CHECKSUM_RULE1,big,64))
$(eval $(call CHECKSUM_RULE1,giant,$(LOOPS)))

$(eval $(call CHECKSUM_RULE2,small,8))
$(eval $(call CHECKSUM_RULE2,big,64))
$(eval $(call CHECKSUM_RULE2,giant,$(LOOPS)))

$(eval $(call CHECKSUM_RULE3,small,8))
$(eval $(call CHECKSUM_RULE3,big,64))
$(eval $(call CHECKSUM_RULE3,giant,$(LOOPS)))

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
	for t in small big giant; do \
		(cmp --silent bin/mlkem768_amd64_ref_checksum$$t.out bin/mlkem768_amd64_avx2_checksum$$t.out \
		 && echo -n "OK - ") || echo -n "ERROR - "; \
		echo "bin/mlkem768_amd64_ref_checksum$$t.out / bin/mlkem768_amd64_avx2_checksum$$t.out"; \
	done

bin/%.out: bin/%
	./$< > $@

#----------------------------------------------------------
#-- other

bin/: ; @mkdir -p $@

clean: __phony
	rm -fr bin/
	$(MAKE) -C $(EXTERNAL)/pq_crystals_kyber/ref/ clean
	$(MAKE) -C $(EXTERNAL)/pq_crystals_kyber/avx2/ clean

echo-vars:
	@echo "BIN: $(BIN)"

