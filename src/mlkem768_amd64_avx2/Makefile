JASMINC ?=jasminc

JASMINC_FLAGS_COMMON ?=-nowarning -set0 -noinsertarraycopy -ATT -arch x86-64
JASMINC_FLAGS ?=$(JASMINC_FLAGS_COMMON) -call-conv linux -stack-zero loopSCT -stack-zero-size u256

default: mlkem768_amd64_avx2.s

mlkem768_amd64_avx2.s: mlkem768_amd64_avx2.jazz
	$(JASMINC) $(JASMINC_FLAGS) -o $@ $<

distclean:
	rm -f *.s
