JASMINC ?=jasminc

JASMINC_FLAGS_COMMON ?=-nowarning -set0 -noinsertarraycopy -ATT -arch x86-64
JASMINC_FLAGS ?=$(JASMINC_FLAGS_COMMON) -call-conv linux -stack-zero loopSCT -stack-zero-size u64

default: mlkem768_amd64_ref.s

mlkem768_amd64_ref.s: mlkem768_amd64_ref.jazz
	$(JASMINC) $(JASMINC_FLAGS) -o $@ $<

distclean:
	rm -f *.s
