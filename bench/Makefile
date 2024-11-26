CC ?=gcc
CFLAGS ?=-Wall -Wextra -O3

RUNS ?=5
TIMINGS ?=1001
CHECK_SHARED_SECRET ?=1
CHECK_POINTERS_ALIGNMENT ?=1
PRINT_SORTED_RUNS ?=1
PRINT_RUNS_MEDIAN ?=1
PRINT_JUST_DERAND ?=1

SRC :=$(abspath ../src/)
BIN := \
 mlkem768_amd64_ref\
 mlkem768_amd64_avx2

BIN :=$(addprefix bin/,$(BIN))

default: $(BIN)

.PHONY: __phony
$(BIN):
bin/%: __phony | bin/
	$(CC) $(CFLAGS) -o $@ \
	  -I $(SRC)/$*/ crypto_kem.c \
	  -DNAMESPACE=jade_kem_mlkem_$* \
	  -DRUNS=$(RUNS) \
	  -DTIMINGS=$(TIMINGS) \
	  -DCHECK_SHARED_SECRET=$(CHECK_SHARED_SECRET) \
	  -DCHECK_POINTERS_ALIGNMENT=$(CHECK_POINTERS_ALIGNMENT) \
	  -DPRINT_SORTED_RUNS=$(PRINT_SORTED_RUNS) \
	  -DPRINT_RUNS_MEDIAN=$(PRINT_RUNS_MEDIAN) \
	  -DPRINT_JUST_DERAND=$(PRINT_JUST_DERAND) \
	  $(SRC)/$*/$*.s \
	  $(SRC)/$*/jasmin_syscall.c \
	  -lcrypto

bin/: ; @mkdir -p $@

.PHONY: clean
clean:
	rm -fr bin/ *.csv

