.PHONY: __phony

CC ?=gcc
CFLAGS ?=-Wall -Wextra -Wpedantic -Wvla -Werror -std=c99 \
  -Wundef -Wshadow -Wcast-align -Wpointer-arith \
	-fstrict-aliasing -fno-common -pipe -O3 -g

SRC :=$(abspath ../src/)
BIN := \
 mlkem768_amd64_ref\
 mlkem768_amd64_avx2

BIN :=$(addprefix bin/,$(BIN))
BIN_CHECKSMALL :=$(addsuffix _checksumsmall,$(BIN))
BIN_CHECKBIG :=$(addsuffix _checksumbig,$(BIN))
BIN_CHECKGIANT :=$(addsuffix _checksumgiant,$(BIN))
BIN :=$(BIN_CHECKSMALL) $(BIN_CHECKBIG) $(BIN_CHECKGIANT)
BIN_OUT :=$(addsuffix .out,$(BIN))

GIANT_LOOPS ?=100000

default: run

#----------------------------------------------------------
#-- build

build: $(BIN)
define CHECKSUM_RULE
bin/%_checksum$(1): TESTING_LOOPS=$(2)
bin/%_checksum$(1): __phony | bin/
	$(CC) $(CFLAGS) \
	  -o $$@ \
	  -I $(SRC)/$$*/ checksums.c \
	  -DTESTING_LOOPS=$$(TESTING_LOOPS) \
	  -DNAMESPACE=jade_kem_mlkem_$$* \
	  $(SRC)/$$*/$$*.s
endef

$(BIN_CHECKSMALL):
$(eval $(call CHECKSUM_RULE,small,8))

$(BIN_CHECKBIG):
$(eval $(call CHECKSUM_RULE,big,64))

$(BIN_CHECKGIANT):
$(eval $(call CHECKSUM_RULE,giant,$(GIANT_LOOPS)))

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

echo-vars:
	@echo "BIN: $(BIN)"

