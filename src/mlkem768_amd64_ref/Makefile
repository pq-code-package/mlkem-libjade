JASMINC ?=jasminc

JASMINC_FLAGS_COMMON ?=-nowarning -set0 -noinsertarraycopy -ATT -arch x86-64
JASMINC_FLAGS_LINUX ?=$(JASMINC_FLAGS_COMMON) -call-conv linux -stack-zero loopSCT -stack-zero-size u64
JASMINC_FLAGS_WINDOWS ?=$(JASMINC_FLAGS_COMMON) -call-conv windows

default: mlkem768_amd64_ref_linux.s mlkem768_amd64_ref_windows.s

mlkem768_amd64_ref_linux.s: mlkem768_amd64_ref.jazz
	$(JASMINC) $(JASMINC_FLAGS_LINUX) -o $@ $<

mlkem768_amd64_ref_windows.s: mlkem768_amd64_ref.jazz
	$(JASMINC) $(JASMINC_FLAGS_WINDOWS) -o $@ $<

distclean:
	rm -f *.s
