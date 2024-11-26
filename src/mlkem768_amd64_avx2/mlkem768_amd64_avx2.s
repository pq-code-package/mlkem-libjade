	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_mlkem_mlkem768_amd64_avx2_dec
	.globl	jade_kem_mlkem_mlkem768_amd64_avx2_dec
	.globl	_jade_kem_mlkem_mlkem768_amd64_avx2_enc
	.globl	jade_kem_mlkem_mlkem768_amd64_avx2_enc
	.globl	_jade_kem_mlkem_mlkem768_amd64_avx2_keypair
	.globl	jade_kem_mlkem_mlkem768_amd64_avx2_keypair
	.globl	_jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand
	.globl	jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand
	.globl	_jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand
	.globl	jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand
_jade_kem_mlkem_mlkem768_amd64_avx2_dec:
jade_kem_mlkem_mlkem768_amd64_avx2_dec:
	movq	%rsp, %rax
	leaq	-14592(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 14512(%rsp)
	movq	%rbp, 14520(%rsp)
	movq	%r12, 14528(%rsp)
	movq	%r13, 14536(%rsp)
	movq	%r14, 14544(%rsp)
	movq	%r15, 14552(%rsp)
	movq	%rax, 14560(%rsp)
	movq	%rdi, 14016(%rsp)
	movq	%rsi, 14024(%rsp)
	movq	%rsp, %rax
	vpbroadcastd	glob_data + 3164(%rip), %ymm0
	vmovdqu	glob_data + 32(%rip), %ymm1
	vpbroadcastq	glob_data + 2960(%rip), %ymm2
	vpbroadcastd	glob_data + 3160(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3264(%rsp)
	vmovdqu	20(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3296(%rsp)
	vmovdqu	40(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3328(%rsp)
	vmovdqu	60(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3360(%rsp)
	vmovdqu	80(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3392(%rsp)
	vmovdqu	100(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3424(%rsp)
	vmovdqu	120(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3456(%rsp)
	vmovdqu	140(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3488(%rsp)
	vmovdqu	160(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3520(%rsp)
	vmovdqu	180(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3552(%rsp)
	vmovdqu	200(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3584(%rsp)
	vmovdqu	220(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3616(%rsp)
	vmovdqu	240(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3648(%rsp)
	vmovdqu	260(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3680(%rsp)
	vmovdqu	280(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3712(%rsp)
	vmovdqu	300(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3744(%rsp)
	vmovdqu	320(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3776(%rsp)
	vmovdqu	340(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3808(%rsp)
	vmovdqu	360(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3840(%rsp)
	vmovdqu	380(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3872(%rsp)
	vmovdqu	400(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3904(%rsp)
	vmovdqu	420(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3936(%rsp)
	vmovdqu	440(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3968(%rsp)
	vmovdqu	460(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4000(%rsp)
	vmovdqu	480(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4032(%rsp)
	vmovdqu	500(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4064(%rsp)
	vmovdqu	520(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4096(%rsp)
	vmovdqu	540(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4128(%rsp)
	vmovdqu	560(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4160(%rsp)
	vmovdqu	580(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4192(%rsp)
	vmovdqu	600(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4224(%rsp)
	vmovdqu	620(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4256(%rsp)
	vmovdqu	640(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4288(%rsp)
	vmovdqu	660(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4320(%rsp)
	vmovdqu	680(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4352(%rsp)
	vmovdqu	700(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4384(%rsp)
	vmovdqu	720(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4416(%rsp)
	vmovdqu	740(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4448(%rsp)
	vmovdqu	760(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4480(%rsp)
	vmovdqu	780(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4512(%rsp)
	vmovdqu	800(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4544(%rsp)
	vmovdqu	820(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4576(%rsp)
	vmovdqu	840(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4608(%rsp)
	vmovdqu	860(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4640(%rsp)
	vmovdqu	880(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4672(%rsp)
	vmovdqu	900(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4704(%rsp)
	vmovdqu	920(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4736(%rsp)
	vmovdqu	940(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpsllvd	%ymm2, %ymm1, %ymm1
	vpsrlw	$1, %ymm1, %ymm1
	vpand	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 4768(%rsp)
	addq	$960, %rsi
	leaq	128(%rsp), %rcx
	leaq	-24(%rsp), %rsp
	call	L_poly_decompress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$205:
	leaq	24(%rsp), %rsp
	movq	%rdx, %rdi
	leaq	4800(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$204:
	addq	$384, %rdi
	leaq	5312(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$203:
	addq	$384, %rdi
	leaq	5824(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$202:
	leaq	3264(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$201:
	leaq	3776(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$200:
	leaq	4288(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$199:
	leaq	640(%rsp), %rcx
	leaq	4800(%rsp), %rsi
	leaq	3264(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$198:
	leaq	1152(%rsp), %rcx
	leaq	5312(%rsp), %rsi
	leaq	3776(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$197:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$196:
	leaq	1152(%rsp), %rcx
	leaq	5824(%rsp), %rsi
	leaq	4288(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$195:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$194:
	leaq	640(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$193:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	640(%rsp), %rdi
	call	L_poly_sub$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$192:
	leaq	1152(%rsp), %rcx
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	32(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rcx)
	vmovdqu	64(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	96(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	128(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	160(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rcx)
	vmovdqu	192(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rcx)
	vmovdqu	224(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	256(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	288(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rcx)
	vmovdqu	320(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	352(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	384(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rcx)
	vmovdqu	416(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rcx)
	vmovdqu	448(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	480(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	leaq	1152(%rsp), %rcx
	call	L_poly_tomsg_1$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$191:
	movq	%rdx, %rax
	addq	$2336, %rax
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	%rdx, 14032(%rsp)
	leaq	64(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$190:
	leaq	208(%rsp), %rsp
	movq	14032(%rsp), %rcx
	addq	$1152, %rcx
	leaq	2176(%rsp), %rdx
	movq	%rsp, %rax
	leaq	96(%rsp), %rsi
	movq	%rdx, 14040(%rsp)
	movq	%rcx, %rdi
	leaq	3264(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$189:
	addq	$384, %rdi
	leaq	3776(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$188:
	addq	$384, %rdi
	leaq	4288(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$187:
	xorq	%rdx, %rdx
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$185
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$186:
	movq	(%rcx), %rdi
	movq	%rdi, 14072(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$185:
	cmpq	$4, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$186
	leaq	1152(%rsp), %rcx
	call	L_poly_frommsg_1$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$184:
	movq	%rsi, 14048(%rsp)
	movq	$1, %rax
	movq	%rax, 14056(%rsp)
	movb	14072(%rsp), %al
	movb	%al, 14104(%rsp)
	movb	14073(%rsp), %al
	movb	%al, 14105(%rsp)
	movb	14074(%rsp), %al
	movb	%al, 14106(%rsp)
	movb	14075(%rsp), %al
	movb	%al, 14107(%rsp)
	movb	14076(%rsp), %al
	movb	%al, 14108(%rsp)
	movb	14077(%rsp), %al
	movb	%al, 14109(%rsp)
	movb	14078(%rsp), %al
	movb	%al, 14110(%rsp)
	movb	14079(%rsp), %al
	movb	%al, 14111(%rsp)
	movb	14080(%rsp), %al
	movb	%al, 14112(%rsp)
	movb	14081(%rsp), %al
	movb	%al, 14113(%rsp)
	movb	14082(%rsp), %al
	movb	%al, 14114(%rsp)
	movb	14083(%rsp), %al
	movb	%al, 14115(%rsp)
	movb	14084(%rsp), %al
	movb	%al, 14116(%rsp)
	movb	14085(%rsp), %al
	movb	%al, 14117(%rsp)
	movb	14086(%rsp), %al
	movb	%al, 14118(%rsp)
	movb	14087(%rsp), %al
	movb	%al, 14119(%rsp)
	movb	14088(%rsp), %al
	movb	%al, 14120(%rsp)
	movb	14089(%rsp), %al
	movb	%al, 14121(%rsp)
	movb	14090(%rsp), %al
	movb	%al, 14122(%rsp)
	movb	14091(%rsp), %al
	movb	%al, 14123(%rsp)
	movb	14092(%rsp), %al
	movb	%al, 14124(%rsp)
	movb	14093(%rsp), %al
	movb	%al, 14125(%rsp)
	movb	14094(%rsp), %al
	movb	%al, 14126(%rsp)
	movb	14095(%rsp), %al
	movb	%al, 14127(%rsp)
	movb	14096(%rsp), %al
	movb	%al, 14128(%rsp)
	movb	14097(%rsp), %al
	movb	%al, 14129(%rsp)
	movb	14098(%rsp), %al
	movb	%al, 14130(%rsp)
	movb	14099(%rsp), %al
	movb	%al, 14131(%rsp)
	movb	14100(%rsp), %al
	movb	%al, 14132(%rsp)
	movb	14101(%rsp), %al
	movb	%al, 14133(%rsp)
	movb	14102(%rsp), %al
	movb	%al, 14134(%rsp)
	movb	14103(%rsp), %al
	movb	%al, 14135(%rsp)
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$182
	movb	$0, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$183
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$182:
	movb	$0, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$183:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$181:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$171
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$172:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$180:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$173
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$174:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$175
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$173
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$175:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$179
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$179:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$173
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$173
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$178:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$177:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$176:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$173:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$174
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$171:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$172
	xorq	%rax, %rax
	leaq	9408(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$169
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$170:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$169:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$170
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$167
	movb	$0, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$168
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$167:
	movb	$1, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$168:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$166:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$156
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$157:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$165:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$158
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$159:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$160
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$158
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$160:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$164
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$164:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$158
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$158
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$163:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$162:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$161:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$158:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$159
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$156:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$157
	xorq	%rax, %rax
	leaq	9920(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$154
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$155:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$154:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$155
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$152
	movb	$0, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$153
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$152:
	movb	$2, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$153:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$151:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$141
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$142:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$150:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$143
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$144:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$145
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$143
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$145:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$149
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$149:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$143
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$143
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$148:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$147:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$146:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$143:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$144
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$141:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$142
	xorq	%rax, %rax
	leaq	10432(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$139
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$140:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$139:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$140
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$137
	movb	$1, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$138
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$137:
	movb	$0, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$138:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$136:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$126
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$127:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$135:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$128
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$129:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$130
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$128
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$130:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$134
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$134:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$128
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$128
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$133:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$132:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$131:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$128:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$129
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$126:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$127
	xorq	%rax, %rax
	leaq	10944(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$124
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$125:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$124:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$125
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$122
	movb	$1, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$123
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$122:
	movb	$1, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$123:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$121:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$111
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$112:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$120:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$113
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$114:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$115
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$113
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$115:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$119
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$119:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$113
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$113
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$118:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$117:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$116:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$113:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$114
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$111:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$112
	xorq	%rax, %rax
	leaq	11456(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$109
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$110:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$109:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$110
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$107
	movb	$1, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$108
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$107:
	movb	$2, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$108:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$106:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$96
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$97:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$105:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$98
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$99:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$100
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$98
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$100:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$104
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$104:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$98
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$98
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$103:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$102:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$101:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$98:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$99
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$96:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$97
	xorq	%rax, %rax
	leaq	11968(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$94
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$95:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$94:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$95
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$92
	movb	$2, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$93
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$92:
	movb	$0, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$93:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$91:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$81
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$82:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$90:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$83
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$84:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$85
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$83
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$85:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$89
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$89:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$83
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$83
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$88:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$87:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$86:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$83:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$84
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$81:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$82
	xorq	%rax, %rax
	leaq	12480(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$79
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$80:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$79:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$80
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$77
	movb	$2, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$78
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$77:
	movb	$1, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$78:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$76:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$66
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$67:
	movq	%rax, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$75:
	leaq	8(%rsp), %rsp
	movq	14064(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$68
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$69:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$70
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$68
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$70:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$74
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$74:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$68
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$68
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$73:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$72:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$71:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$68:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$69
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$66:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$67
	xorq	%rax, %rax
	leaq	12992(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$64
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$65:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$64:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$65
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$62
	movb	$2, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$63
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$62:
	movb	$2, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$63:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$61:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$51
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$52:
	movq	%rax, 14056(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$60:
	leaq	8(%rsp), %rsp
	movq	14056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$54:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$55
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$55:
	movzbw	14144(%rsp,%rcx), %dx
	movzbw	14145(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14146(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$59
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$59:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$58:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$57:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$56:
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$54
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$51:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$52
	xorq	%rax, %rax
	leaq	13504(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$49
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$50:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$49:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$50
	leaq	9408(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$48:
	leaq	9920(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$47:
	leaq	10432(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$46:
	leaq	10944(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$45:
	leaq	11456(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$44:
	leaq	11968(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$43:
	leaq	12480(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$42:
	leaq	12992(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$41:
	leaq	13504(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$40:
	movq	14048(%rsp), %rdi
	xorb	%r8b, %r8b
	leaq	6336(%rsp), %rax
	leaq	6848(%rsp), %rcx
	leaq	7360(%rsp), %rdx
	leaq	4800(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$39:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	5312(%rsp), %rax
	leaq	5824(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	7872(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$38:
	leaq	1496(%rsp), %rsp
	leaq	6336(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$37:
	leaq	6848(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$36:
	leaq	7360(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$35:
	leaq	7872(%rsp), %rcx
	leaq	9408(%rsp), %rsi
	leaq	6336(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$34:
	leaq	128(%rsp), %rcx
	leaq	9920(%rsp), %rsi
	leaq	6848(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$33:
	leaq	7872(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$32:
	leaq	128(%rsp), %rcx
	leaq	10432(%rsp), %rsi
	leaq	7360(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$31:
	leaq	7872(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$30:
	leaq	8384(%rsp), %rcx
	leaq	10944(%rsp), %rsi
	leaq	6336(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$29:
	leaq	128(%rsp), %rcx
	leaq	11456(%rsp), %rsi
	leaq	6848(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$28:
	leaq	8384(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$27:
	leaq	128(%rsp), %rcx
	leaq	11968(%rsp), %rsi
	leaq	7360(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$26:
	leaq	8384(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$25:
	leaq	8896(%rsp), %rcx
	leaq	12480(%rsp), %rsi
	leaq	6336(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$24:
	leaq	128(%rsp), %rcx
	leaq	12992(%rsp), %rsi
	leaq	6848(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$23:
	leaq	8896(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$22:
	leaq	128(%rsp), %rcx
	leaq	13504(%rsp), %rsi
	leaq	7360(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$21:
	leaq	8896(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$20:
	leaq	128(%rsp), %rcx
	leaq	3264(%rsp), %rsi
	leaq	6336(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$19:
	leaq	1664(%rsp), %rcx
	leaq	3776(%rsp), %rsi
	leaq	6848(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$18:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$17:
	leaq	1664(%rsp), %rcx
	leaq	4288(%rsp), %rsi
	leaq	7360(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$16:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$15:
	leaq	7872(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$14:
	leaq	8384(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$13:
	leaq	8896(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$12:
	leaq	128(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$11:
	leaq	7872(%rsp), %rcx
	leaq	4800(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$10:
	leaq	8384(%rsp), %rcx
	leaq	5312(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$9:
	leaq	8896(%rsp), %rcx
	leaq	5824(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$8:
	leaq	128(%rsp), %rcx
	leaq	640(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$7:
	leaq	128(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$6:
	leaq	7872(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8384(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8896(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	128(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	14040(%rsp), %rax
	movq	%rax, %rdx
	leaq	7872(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$5:
	leaq	8384(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$4:
	leaq	8896(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$3:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rdx)
	vpextrd	$0, %xmm8, 16(%rdx)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rdx)
	vpextrd	$0, %xmm8, 36(%rdx)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rdx)
	vpextrd	$0, %xmm8, 56(%rdx)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rdx)
	vpextrd	$0, %xmm8, 76(%rdx)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rdx)
	vpextrd	$0, %xmm8, 96(%rdx)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rdx)
	vpextrd	$0, %xmm8, 116(%rdx)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rdx)
	vpextrd	$0, %xmm8, 136(%rdx)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rdx)
	vpextrd	$0, %xmm8, 156(%rdx)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rdx)
	vpextrd	$0, %xmm8, 176(%rdx)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rdx)
	vpextrd	$0, %xmm8, 196(%rdx)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rdx)
	vpextrd	$0, %xmm8, 216(%rdx)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rdx)
	vpextrd	$0, %xmm8, 236(%rdx)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rdx)
	vpextrd	$0, %xmm8, 256(%rdx)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rdx)
	vpextrd	$0, %xmm8, 276(%rdx)
	vmovdqu	8320(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rdx)
	vpextrd	$0, %xmm8, 296(%rdx)
	vmovdqu	8352(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rdx)
	vpextrd	$0, %xmm8, 316(%rdx)
	vmovdqu	8384(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rdx)
	vpextrd	$0, %xmm8, 336(%rdx)
	vmovdqu	8416(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rdx)
	vpextrd	$0, %xmm8, 356(%rdx)
	vmovdqu	8448(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rdx)
	vpextrd	$0, %xmm8, 376(%rdx)
	vmovdqu	8480(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rdx)
	vpextrd	$0, %xmm8, 396(%rdx)
	vmovdqu	8512(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rdx)
	vpextrd	$0, %xmm8, 416(%rdx)
	vmovdqu	8544(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rdx)
	vpextrd	$0, %xmm8, 436(%rdx)
	vmovdqu	8576(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rdx)
	vpextrd	$0, %xmm8, 456(%rdx)
	vmovdqu	8608(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rdx)
	vpextrd	$0, %xmm8, 476(%rdx)
	vmovdqu	8640(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rdx)
	vpextrd	$0, %xmm8, 496(%rdx)
	vmovdqu	8672(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rdx)
	vpextrd	$0, %xmm8, 516(%rdx)
	vmovdqu	8704(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rdx)
	vpextrd	$0, %xmm8, 536(%rdx)
	vmovdqu	8736(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rdx)
	vpextrd	$0, %xmm8, 556(%rdx)
	vmovdqu	8768(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rdx)
	vpextrd	$0, %xmm8, 576(%rdx)
	vmovdqu	8800(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rdx)
	vpextrd	$0, %xmm8, 596(%rdx)
	vmovdqu	8832(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rdx)
	vpextrd	$0, %xmm8, 616(%rdx)
	vmovdqu	8864(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rdx)
	vpextrd	$0, %xmm8, 636(%rdx)
	vmovdqu	8896(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rdx)
	vpextrd	$0, %xmm8, 656(%rdx)
	vmovdqu	8928(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rdx)
	vpextrd	$0, %xmm8, 676(%rdx)
	vmovdqu	8960(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rdx)
	vpextrd	$0, %xmm8, 696(%rdx)
	vmovdqu	8992(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rdx)
	vpextrd	$0, %xmm8, 716(%rdx)
	vmovdqu	9024(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rdx)
	vpextrd	$0, %xmm8, 736(%rdx)
	vmovdqu	9056(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rdx)
	vpextrd	$0, %xmm8, 756(%rdx)
	vmovdqu	9088(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rdx)
	vpextrd	$0, %xmm8, 776(%rdx)
	vmovdqu	9120(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rdx)
	vpextrd	$0, %xmm8, 796(%rdx)
	vmovdqu	9152(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rdx)
	vpextrd	$0, %xmm8, 816(%rdx)
	vmovdqu	9184(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rdx)
	vpextrd	$0, %xmm8, 836(%rdx)
	vmovdqu	9216(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rdx)
	vpextrd	$0, %xmm8, 856(%rdx)
	vmovdqu	9248(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rdx)
	vpextrd	$0, %xmm8, 876(%rdx)
	vmovdqu	9280(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rdx)
	vpextrd	$0, %xmm8, 896(%rdx)
	vmovdqu	9312(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rdx)
	vpextrd	$0, %xmm8, 916(%rdx)
	vmovdqu	9344(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rdx)
	vpextrd	$0, %xmm8, 936(%rdx)
	vmovdqu	9376(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$224, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rdx)
	vpextrd	$0, %xmm0, 956(%rdx)
	leaq	960(%rax), %rax
	leaq	128(%rsp), %rcx
	call	L_poly_compress_1$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$2:
	movq	14024(%rsp), %rax
	leaq	2176(%rsp), %rcx
	xorq	%rdx, %rdx
	movq	$1, %rsi
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	(%rcx), %ymm1
	vmovdqu	(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rcx), %ymm1
	vmovdqu	32(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rcx), %ymm1
	vmovdqu	64(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rcx), %ymm1
	vmovdqu	96(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rcx), %ymm1
	vmovdqu	128(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	160(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	192(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rcx), %ymm1
	vmovdqu	224(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rcx), %ymm1
	vmovdqu	256(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rcx), %ymm1
	vmovdqu	288(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rcx), %ymm1
	vmovdqu	320(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rcx), %ymm1
	vmovdqu	352(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	384(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	416(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rcx), %ymm1
	vmovdqu	448(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rcx), %ymm1
	vmovdqu	480(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	512(%rcx), %ymm1
	vmovdqu	512(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	544(%rcx), %ymm1
	vmovdqu	544(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	576(%rcx), %ymm1
	vmovdqu	576(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	608(%rcx), %ymm1
	vmovdqu	608(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	640(%rcx), %ymm1
	vmovdqu	640(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	672(%rcx), %ymm1
	vmovdqu	672(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	704(%rcx), %ymm1
	vmovdqu	704(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	736(%rcx), %ymm1
	vmovdqu	736(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	768(%rcx), %ymm1
	vmovdqu	768(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	800(%rcx), %ymm1
	vmovdqu	800(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	832(%rcx), %ymm1
	vmovdqu	832(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	864(%rcx), %ymm1
	vmovdqu	864(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	896(%rcx), %ymm1
	vmovdqu	896(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	928(%rcx), %ymm1
	vmovdqu	928(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	960(%rcx), %ymm1
	vmovdqu	960(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	992(%rcx), %ymm1
	vmovdqu	992(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1024(%rcx), %ymm1
	vmovdqu	1024(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1056(%rcx), %ymm1
	vmovdqu	1056(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	cmovne	%rsi, %rdx
	negq	%rdx
	shrq	$63, %rdx
	movq	%rdx, 14040(%rsp)
	movq	14024(%rsp), %rax
	movq	14032(%rsp), %rcx
	addq	$64, %rcx
	addq	$2304, %rcx
	movq	14016(%rsp), %rdx
	leaq	-232(%rsp), %rsp
	call	L_shake256_1120_32$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$1:
	leaq	232(%rsp), %rsp
	movq	14016(%rsp), %rax
	movq	14040(%rsp), %rcx
	leaq	64(%rsp), %rdx
	negq	%rcx
	movq	%rcx, 14040(%rsp)
	vpbroadcastq	14040(%rsp), %ymm0
	vmovdqu	(%rdx), %ymm1
	vmovdqu	(%rax), %ymm2
	vpblendvb	%ymm0, %ymm2, %ymm1, %ymm0
	vmovdqu	%ymm0, (%rax)
	xorq	%rax, %rax
	movq	14512(%rsp), %rbx
	movq	14520(%rsp), %rbp
	movq	14528(%rsp), %r12
	movq	14536(%rsp), %r13
	movq	14544(%rsp), %r14
	movq	14552(%rsp), %r15
	movq	14560(%rsp), %rsp
	movq	%rsp, %rsi
	vpxor	%ymm2, %ymm2, %ymm2
	andq	$-32, %rsp
	subq	$16928, %rsp
	movq	$16928, %rdi
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$206:
	subq	$32, %rdi
	vmovdqu	%ymm2, (%rsp,%rdi)
	jne 	Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$206
	movq	%rsi, %rsp
	lfence
	ret
_jade_kem_mlkem_mlkem768_amd64_avx2_enc:
jade_kem_mlkem_mlkem768_amd64_avx2_enc:
	movq	%rsp, %rax
	leaq	-13472(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 13408(%rsp)
	movq	%rbp, 13416(%rsp)
	movq	%r12, 13424(%rsp)
	movq	%r13, 13432(%rsp)
	movq	%r14, 13440(%rsp)
	movq	%r15, 13448(%rsp)
	movq	%rax, 13456(%rsp)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %r12
	leaq	12968(%rsp), %rdi
	movq	$32, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%r12, 12928(%rsp)
	movq	%rbx, 12936(%rsp)
	movq	%rbp, 12944(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	12928(%rsp), %r8
	movq	$1184, %rax
	leaq	32(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$190:
	leaq	232(%rsp), %rsp
	leaq	64(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$189:
	leaq	208(%rsp), %rsp
	movq	12928(%rsp), %rcx
	movq	%rsp, %rax
	leaq	96(%rsp), %rdx
	movq	%rcx, %rdi
	leaq	2176(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$188:
	addq	$384, %rdi
	leaq	2688(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$187:
	addq	$384, %rdi
	leaq	3200(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$186:
	xorq	%rsi, %rsi
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$184
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$185:
	movq	(%rcx), %rdi
	movq	%rdi, 12968(%rsp,%rsi,8)
	addq	$8, %rcx
	incq	%rsi
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$184:
	cmpq	$4, %rsi
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$185
	leaq	128(%rsp), %rcx
	call	L_poly_frommsg_1$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$183:
	movq	%rdx, 12928(%rsp)
	movq	$1, %rax
	movq	%rax, 12952(%rsp)
	movb	12968(%rsp), %al
	movb	%al, 13000(%rsp)
	movb	12969(%rsp), %al
	movb	%al, 13001(%rsp)
	movb	12970(%rsp), %al
	movb	%al, 13002(%rsp)
	movb	12971(%rsp), %al
	movb	%al, 13003(%rsp)
	movb	12972(%rsp), %al
	movb	%al, 13004(%rsp)
	movb	12973(%rsp), %al
	movb	%al, 13005(%rsp)
	movb	12974(%rsp), %al
	movb	%al, 13006(%rsp)
	movb	12975(%rsp), %al
	movb	%al, 13007(%rsp)
	movb	12976(%rsp), %al
	movb	%al, 13008(%rsp)
	movb	12977(%rsp), %al
	movb	%al, 13009(%rsp)
	movb	12978(%rsp), %al
	movb	%al, 13010(%rsp)
	movb	12979(%rsp), %al
	movb	%al, 13011(%rsp)
	movb	12980(%rsp), %al
	movb	%al, 13012(%rsp)
	movb	12981(%rsp), %al
	movb	%al, 13013(%rsp)
	movb	12982(%rsp), %al
	movb	%al, 13014(%rsp)
	movb	12983(%rsp), %al
	movb	%al, 13015(%rsp)
	movb	12984(%rsp), %al
	movb	%al, 13016(%rsp)
	movb	12985(%rsp), %al
	movb	%al, 13017(%rsp)
	movb	12986(%rsp), %al
	movb	%al, 13018(%rsp)
	movb	12987(%rsp), %al
	movb	%al, 13019(%rsp)
	movb	12988(%rsp), %al
	movb	%al, 13020(%rsp)
	movb	12989(%rsp), %al
	movb	%al, 13021(%rsp)
	movb	12990(%rsp), %al
	movb	%al, 13022(%rsp)
	movb	12991(%rsp), %al
	movb	%al, 13023(%rsp)
	movb	12992(%rsp), %al
	movb	%al, 13024(%rsp)
	movb	12993(%rsp), %al
	movb	%al, 13025(%rsp)
	movb	12994(%rsp), %al
	movb	%al, 13026(%rsp)
	movb	12995(%rsp), %al
	movb	%al, 13027(%rsp)
	movb	12996(%rsp), %al
	movb	%al, 13028(%rsp)
	movb	12997(%rsp), %al
	movb	%al, 13029(%rsp)
	movb	12998(%rsp), %al
	movb	%al, 13030(%rsp)
	movb	12999(%rsp), %al
	movb	%al, 13031(%rsp)
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$181
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$182
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$181:
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$182:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$180:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$171:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$179:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$172
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$173:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$174
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$172
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$174:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$178
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$178:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$172
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$172
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$177:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$176:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$175:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$172:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$173
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$170:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$171
	xorq	%rax, %rax
	leaq	8320(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$168
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$169:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$168:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$169
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$166
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$167
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$166:
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$167:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$165:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$156:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$164:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$157
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$158:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$159
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$157
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$159:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$163
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$163:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$157
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$157
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$162:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$161:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$160:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$157:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$158
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$155:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$156
	xorq	%rax, %rax
	leaq	8832(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$153
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$154:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$153:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$154
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$151
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$152
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$151:
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$152:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$150:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$141:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$149:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$142
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$143:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$144
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$142
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$144:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$148
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$148:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$142
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$142
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$147:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$146:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$145:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$142:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$143
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$140:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$141
	xorq	%rax, %rax
	leaq	9344(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$138
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$139:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$138:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$139
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$136
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$137
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$136:
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$137:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$135:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$126:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$134:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$127
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$129
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$127
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$129:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$133
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$133:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$127
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$127
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$132:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$131:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$130:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$127:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$128
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$125:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$126
	xorq	%rax, %rax
	leaq	9856(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$123
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$124:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$123:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$124
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$121
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$122
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$121:
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$122:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$120:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$111:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$119:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$112
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$113:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$114
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$112
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$114:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$118
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$118:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$112
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$112
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$117:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$116:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$115:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$112:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$113
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$110:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$111
	xorq	%rax, %rax
	leaq	10368(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$108
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$109:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$108:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$109
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$106
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$107
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$106:
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$107:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$105:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$96:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$104:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$97
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$99
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$97
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$99:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$103
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$103:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$97
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$97
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$102:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$101:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$100:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$97:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$98
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$95:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$96
	xorq	%rax, %rax
	leaq	10880(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$93
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$94:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$93:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$94
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$91
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$92
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$91:
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$92:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$90:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$81:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$89:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$82
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$83:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$84
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$82
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$84:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$88
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$88:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$82
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$82
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$87:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$86:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$85:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$82:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$83
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$80:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$81
	xorq	%rax, %rax
	leaq	11392(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$78
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$79:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$78:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$79
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$76
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$77
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$76:
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$77:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$75:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$66:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$74:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$67
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$68:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$69
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$67
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$69:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$73
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$73:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$67
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$67
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$72:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$71:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$70:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$67:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$68
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$65:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$66
	xorq	%rax, %rax
	leaq	11904(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$63
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$64:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$64
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$61
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$62
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$61:
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$62:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$60:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$51:
	movq	%rax, 12952(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$59:
	leaq	8(%rsp), %rsp
	movq	12952(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$52
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$53:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$54
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$52
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$54:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$58
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$58:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$52
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$52
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$57:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$56:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$55:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$52:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$53
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$50:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$51
	xorq	%rax, %rax
	leaq	12416(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$48
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$49:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$48:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$49
	leaq	8320(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$47:
	leaq	8832(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$46:
	leaq	9344(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$45:
	leaq	9856(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$44:
	leaq	10368(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$43:
	leaq	10880(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$42:
	leaq	11392(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$41:
	leaq	11904(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$40:
	leaq	12416(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$39:
	movq	12928(%rsp), %rdi
	xorb	%r8b, %r8b
	leaq	5248(%rsp), %rax
	leaq	5760(%rsp), %rcx
	leaq	6272(%rsp), %rdx
	leaq	3712(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$38:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	4224(%rsp), %rax
	leaq	4736(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	6784(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$37:
	leaq	1496(%rsp), %rsp
	leaq	5248(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$36:
	leaq	5760(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$35:
	leaq	6272(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$34:
	leaq	6784(%rsp), %rcx
	leaq	8320(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$33:
	leaq	1152(%rsp), %rcx
	leaq	8832(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$32:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$31:
	leaq	1152(%rsp), %rcx
	leaq	9344(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$30:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$29:
	leaq	7296(%rsp), %rcx
	leaq	9856(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$28:
	leaq	1152(%rsp), %rcx
	leaq	10368(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$27:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$26:
	leaq	1152(%rsp), %rcx
	leaq	10880(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$25:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$24:
	leaq	7808(%rsp), %rcx
	leaq	11392(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$23:
	leaq	1152(%rsp), %rcx
	leaq	11904(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$22:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$21:
	leaq	1152(%rsp), %rcx
	leaq	12416(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$20:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$19:
	leaq	1152(%rsp), %rcx
	leaq	2176(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$18:
	leaq	1664(%rsp), %rcx
	leaq	2688(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$17:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$16:
	leaq	1664(%rsp), %rcx
	leaq	3200(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$15:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$14:
	leaq	6784(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$13:
	leaq	7296(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$12:
	leaq	7808(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$11:
	leaq	1152(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$10:
	leaq	6784(%rsp), %rcx
	leaq	3712(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$9:
	leaq	7296(%rsp), %rcx
	leaq	4224(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$8:
	leaq	7808(%rsp), %rcx
	leaq	4736(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$7:
	leaq	1152(%rsp), %rcx
	leaq	640(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$6:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$5:
	leaq	6784(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7296(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7808(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	1152(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	12936(%rsp), %rax
	leaq	6784(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$4:
	leaq	7296(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$3:
	leaq	7808(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$2:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	6784(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$224, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rax)
	vpextrd	$0, %xmm0, 956(%rax)
	addq	$960, %rax
	leaq	1152(%rsp), %rcx
	call	L_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$1:
	movq	12944(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	80(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	88(%rsp), %rcx
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	13408(%rsp), %rbx
	movq	13416(%rsp), %rbp
	movq	13424(%rsp), %r12
	movq	13432(%rsp), %r13
	movq	13440(%rsp), %r14
	movq	13448(%rsp), %r15
	movq	13456(%rsp), %rsp
	movq	%rsp, %rsi
	vpxor	%ymm2, %ymm2, %ymm2
	andq	$-32, %rsp
	subq	$15808, %rsp
	movq	$15808, %rdi
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$191:
	subq	$32, %rdi
	vmovdqu	%ymm2, (%rsp,%rdi)
	jne 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$191
	movq	%rsi, %rsp
	lfence
	ret
_jade_kem_mlkem_mlkem768_amd64_avx2_keypair:
jade_kem_mlkem_mlkem768_amd64_avx2_keypair:
	movq	%rsp, %rax
	leaq	-10464(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%r12, 10400(%rsp)
	movq	%r13, 10408(%rsp)
	movq	%r14, 10416(%rsp)
	movq	%r15, 10424(%rsp)
	movq	%rax, 10432(%rsp)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	leaq	9888(%rsp), %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rax, 9760(%rsp)
	movq	%rbx, 9768(%rsp)
	movq	%rbp, 9776(%rsp)
	movq	%rbx, 9784(%rsp)
	movq	%rbp, 9792(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	leaq	9952(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_32$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$181:
	leaq	208(%rsp), %rsp
	movq	9952(%rsp), %rax
	movq	%rax, 9816(%rsp)
	movq	9984(%rsp), %rax
	movq	%rax, (%rsp)
	movq	9960(%rsp), %rax
	movq	%rax, 9824(%rsp)
	movq	9992(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	9968(%rsp), %rax
	movq	%rax, 9832(%rsp)
	movq	10000(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	9976(%rsp), %rax
	movq	%rax, 9840(%rsp)
	movq	10008(%rsp), %rax
	movq	%rax, 24(%rsp)
	xorq	%rax, %rax
	movq	%rax, 9800(%rsp)
	movb	9816(%rsp), %al
	movb	%al, 9848(%rsp)
	movb	9817(%rsp), %al
	movb	%al, 9849(%rsp)
	movb	9818(%rsp), %al
	movb	%al, 9850(%rsp)
	movb	9819(%rsp), %al
	movb	%al, 9851(%rsp)
	movb	9820(%rsp), %al
	movb	%al, 9852(%rsp)
	movb	9821(%rsp), %al
	movb	%al, 9853(%rsp)
	movb	9822(%rsp), %al
	movb	%al, 9854(%rsp)
	movb	9823(%rsp), %al
	movb	%al, 9855(%rsp)
	movb	9824(%rsp), %al
	movb	%al, 9856(%rsp)
	movb	9825(%rsp), %al
	movb	%al, 9857(%rsp)
	movb	9826(%rsp), %al
	movb	%al, 9858(%rsp)
	movb	9827(%rsp), %al
	movb	%al, 9859(%rsp)
	movb	9828(%rsp), %al
	movb	%al, 9860(%rsp)
	movb	9829(%rsp), %al
	movb	%al, 9861(%rsp)
	movb	9830(%rsp), %al
	movb	%al, 9862(%rsp)
	movb	9831(%rsp), %al
	movb	%al, 9863(%rsp)
	movb	9832(%rsp), %al
	movb	%al, 9864(%rsp)
	movb	9833(%rsp), %al
	movb	%al, 9865(%rsp)
	movb	9834(%rsp), %al
	movb	%al, 9866(%rsp)
	movb	9835(%rsp), %al
	movb	%al, 9867(%rsp)
	movb	9836(%rsp), %al
	movb	%al, 9868(%rsp)
	movb	9837(%rsp), %al
	movb	%al, 9869(%rsp)
	movb	9838(%rsp), %al
	movb	%al, 9870(%rsp)
	movb	9839(%rsp), %al
	movb	%al, 9871(%rsp)
	movb	9840(%rsp), %al
	movb	%al, 9872(%rsp)
	movb	9841(%rsp), %al
	movb	%al, 9873(%rsp)
	movb	9842(%rsp), %al
	movb	%al, 9874(%rsp)
	movb	9843(%rsp), %al
	movb	%al, 9875(%rsp)
	movb	9844(%rsp), %al
	movb	%al, 9876(%rsp)
	movb	9845(%rsp), %al
	movb	%al, 9877(%rsp)
	movb	9846(%rsp), %al
	movb	%al, 9878(%rsp)
	movb	9847(%rsp), %al
	movb	%al, 9879(%rsp)
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$179
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$180
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$179:
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$180:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$178:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$168
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$169:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$177:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$171:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$172
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$172:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$176
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$176:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$170
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$170
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$175:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$174:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$173:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$170:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$171
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$168:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$169
	xorq	%rax, %rax
	leaq	5152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$166
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$167:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$166:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$167
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$164
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$165
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$164:
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$165:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$163:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$153
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$154:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$162:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$156:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$157
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$157:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$161
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$161:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$155
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$155
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$160:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$159:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$158:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$155:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$156
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$153:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$154
	xorq	%rax, %rax
	leaq	5664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$151
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$152:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$151:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$152
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$149
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$150
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$149:
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$150:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$148:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$138
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$139:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$147:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$141:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$142
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$142:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$146
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$146:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$140
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$140
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$145:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$144:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$143:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$140:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$141
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$138:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$139
	xorq	%rax, %rax
	leaq	6176(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$136
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$137:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$136:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$137
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$134
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$135
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$134:
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$135:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$133:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$123
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$124:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$132:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$126:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$127
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$127:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$131
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$131:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$125
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$125
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$130:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$129:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$128:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$125:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$126
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$123:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$124
	xorq	%rax, %rax
	leaq	6688(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$121
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$122:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$121:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$122
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$119
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$120
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$119:
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$120:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$118:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$108
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$109:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$117:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$111:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$112
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$112:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$116
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$116:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$110
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$110
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$115:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$114:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$113:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$110:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$111
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$108:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$109
	xorq	%rax, %rax
	leaq	7200(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$106
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$107:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$106:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$107
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$104
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$105
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$104:
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$105:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$103:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$93
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$94:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$102:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$96:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$97
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$97:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$101
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$101:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$95
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$95
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$100:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$99:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$98:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$95:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$96
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$93:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$94
	xorq	%rax, %rax
	leaq	7712(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$91
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$92:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$91:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$92
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$89
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$90
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$89:
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$90:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$88:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$78
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$79:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$87:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$81:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$82
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$82:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$86
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$86:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$80
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$80
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$85:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$84:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$83:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$80:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$81
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$78:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$79
	xorq	%rax, %rax
	leaq	8224(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$76
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$77:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$76:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$77
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$74
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$75
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$74:
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$75:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$73:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$63
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$64:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$72:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$66:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$67
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$67:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$71
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$71:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$65
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$65
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$70:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$69:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$68:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$65:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$66
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$64
	xorq	%rax, %rax
	leaq	8736(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$61
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$62:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$61:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$62
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$59
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$60
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$59:
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$60:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$58:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$48
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$49:
	movq	%rax, 9800(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$57:
	leaq	8(%rsp), %rsp
	movq	9800(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$51:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$52
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$52:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$56
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$56:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$50
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$50
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$55:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$54:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$53:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$50:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$51
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$48:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$49
	xorq	%rax, %rax
	leaq	9248(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$46
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$47:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$46:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$47
	leaq	5152(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$45:
	leaq	5664(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$44:
	leaq	6176(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$43:
	leaq	6688(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$42:
	leaq	7200(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$41:
	leaq	7712(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$40:
	leaq	8224(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$39:
	leaq	8736(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$38:
	leaq	9248(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$37:
	xorb	%r8b, %r8b
	leaq	2080(%rsp), %rax
	leaq	2592(%rsp), %rcx
	leaq	3104(%rsp), %rdx
	leaq	544(%rsp), %rsi
	movq	%rsp, %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$36:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	1056(%rsp), %rax
	leaq	1568(%rsp), %rcx
	leaq	3616(%rsp), %rdx
	leaq	4128(%rsp), %rsi
	movq	%rsp, %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$35:
	leaq	1496(%rsp), %rsp
	leaq	2080(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$34:
	leaq	2592(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$33:
	leaq	3104(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$32:
	leaq	544(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$31:
	leaq	1056(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$30:
	leaq	1568(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$29:
	leaq	3616(%rsp), %rcx
	leaq	5152(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$28:
	leaq	32(%rsp), %rcx
	leaq	5664(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$27:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$26:
	leaq	32(%rsp), %rcx
	leaq	6176(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$25:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$24:
	leaq	3616(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$23:
	leaq	4128(%rsp), %rcx
	leaq	6688(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$22:
	leaq	32(%rsp), %rcx
	leaq	7200(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$21:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$20:
	leaq	32(%rsp), %rcx
	leaq	7712(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$19:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$18:
	leaq	4128(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$17:
	leaq	4640(%rsp), %rcx
	leaq	8224(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$16:
	leaq	32(%rsp), %rcx
	leaq	8736(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$15:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$14:
	leaq	32(%rsp), %rcx
	leaq	9248(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$13:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$12:
	leaq	4640(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$11:
	leaq	3616(%rsp), %rcx
	leaq	544(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$10:
	leaq	4128(%rsp), %rcx
	leaq	1056(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$9:
	leaq	4640(%rsp), %rcx
	leaq	1568(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$8:
	leaq	3616(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4128(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4640(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	9784(%rsp), %rax
	movq	9792(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	2080(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$7:
	addq	$384, %rdx
	leaq	2592(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$6:
	addq	$384, %rdx
	leaq	3104(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$5:
	movq	%rax, %rdx
	leaq	3616(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$4:
	addq	$384, %rdx
	leaq	4128(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$3:
	addq	$384, %rdx
	leaq	4640(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$2:
	addq	$1152, %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9824(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9832(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9840(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9776(%rsp), %rax
	addq	$1152, %rax
	movq	9768(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 64(%rax)
	movq	72(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	88(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	96(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movq	104(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	112(%rcx), %rdx
	movq	%rdx, 112(%rax)
	movq	120(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	128(%rcx), %rdx
	movq	%rdx, 128(%rax)
	movq	136(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	144(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	152(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	160(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	168(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	176(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	184(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	192(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	200(%rcx), %rdx
	movq	%rdx, 200(%rax)
	movq	208(%rcx), %rdx
	movq	%rdx, 208(%rax)
	movq	216(%rcx), %rdx
	movq	%rdx, 216(%rax)
	movq	224(%rcx), %rdx
	movq	%rdx, 224(%rax)
	movq	232(%rcx), %rdx
	movq	%rdx, 232(%rax)
	movq	240(%rcx), %rdx
	movq	%rdx, 240(%rax)
	movq	248(%rcx), %rdx
	movq	%rdx, 248(%rax)
	movq	256(%rcx), %rdx
	movq	%rdx, 256(%rax)
	movq	264(%rcx), %rdx
	movq	%rdx, 264(%rax)
	movq	272(%rcx), %rdx
	movq	%rdx, 272(%rax)
	movq	280(%rcx), %rdx
	movq	%rdx, 280(%rax)
	movq	288(%rcx), %rdx
	movq	%rdx, 288(%rax)
	movq	296(%rcx), %rdx
	movq	%rdx, 296(%rax)
	movq	304(%rcx), %rdx
	movq	%rdx, 304(%rax)
	movq	312(%rcx), %rdx
	movq	%rdx, 312(%rax)
	movq	320(%rcx), %rdx
	movq	%rdx, 320(%rax)
	movq	328(%rcx), %rdx
	movq	%rdx, 328(%rax)
	movq	336(%rcx), %rdx
	movq	%rdx, 336(%rax)
	movq	344(%rcx), %rdx
	movq	%rdx, 344(%rax)
	movq	352(%rcx), %rdx
	movq	%rdx, 352(%rax)
	movq	360(%rcx), %rdx
	movq	%rdx, 360(%rax)
	movq	368(%rcx), %rdx
	movq	%rdx, 368(%rax)
	movq	376(%rcx), %rdx
	movq	%rdx, 376(%rax)
	movq	384(%rcx), %rdx
	movq	%rdx, 384(%rax)
	movq	392(%rcx), %rdx
	movq	%rdx, 392(%rax)
	movq	400(%rcx), %rdx
	movq	%rdx, 400(%rax)
	movq	408(%rcx), %rdx
	movq	%rdx, 408(%rax)
	movq	416(%rcx), %rdx
	movq	%rdx, 416(%rax)
	movq	424(%rcx), %rdx
	movq	%rdx, 424(%rax)
	movq	432(%rcx), %rdx
	movq	%rdx, 432(%rax)
	movq	440(%rcx), %rdx
	movq	%rdx, 440(%rax)
	movq	448(%rcx), %rdx
	movq	%rdx, 448(%rax)
	movq	456(%rcx), %rdx
	movq	%rdx, 456(%rax)
	movq	464(%rcx), %rdx
	movq	%rdx, 464(%rax)
	movq	472(%rcx), %rdx
	movq	%rdx, 472(%rax)
	movq	480(%rcx), %rdx
	movq	%rdx, 480(%rax)
	movq	488(%rcx), %rdx
	movq	%rdx, 488(%rax)
	movq	496(%rcx), %rdx
	movq	%rdx, 496(%rax)
	movq	504(%rcx), %rdx
	movq	%rdx, 504(%rax)
	movq	512(%rcx), %rdx
	movq	%rdx, 512(%rax)
	movq	520(%rcx), %rdx
	movq	%rdx, 520(%rax)
	movq	528(%rcx), %rdx
	movq	%rdx, 528(%rax)
	movq	536(%rcx), %rdx
	movq	%rdx, 536(%rax)
	movq	544(%rcx), %rdx
	movq	%rdx, 544(%rax)
	movq	552(%rcx), %rdx
	movq	%rdx, 552(%rax)
	movq	560(%rcx), %rdx
	movq	%rdx, 560(%rax)
	movq	568(%rcx), %rdx
	movq	%rdx, 568(%rax)
	movq	576(%rcx), %rdx
	movq	%rdx, 576(%rax)
	movq	584(%rcx), %rdx
	movq	%rdx, 584(%rax)
	movq	592(%rcx), %rdx
	movq	%rdx, 592(%rax)
	movq	600(%rcx), %rdx
	movq	%rdx, 600(%rax)
	movq	608(%rcx), %rdx
	movq	%rdx, 608(%rax)
	movq	616(%rcx), %rdx
	movq	%rdx, 616(%rax)
	movq	624(%rcx), %rdx
	movq	%rdx, 624(%rax)
	movq	632(%rcx), %rdx
	movq	%rdx, 632(%rax)
	movq	640(%rcx), %rdx
	movq	%rdx, 640(%rax)
	movq	648(%rcx), %rdx
	movq	%rdx, 648(%rax)
	movq	656(%rcx), %rdx
	movq	%rdx, 656(%rax)
	movq	664(%rcx), %rdx
	movq	%rdx, 664(%rax)
	movq	672(%rcx), %rdx
	movq	%rdx, 672(%rax)
	movq	680(%rcx), %rdx
	movq	%rdx, 680(%rax)
	movq	688(%rcx), %rdx
	movq	%rdx, 688(%rax)
	movq	696(%rcx), %rdx
	movq	%rdx, 696(%rax)
	movq	704(%rcx), %rdx
	movq	%rdx, 704(%rax)
	movq	712(%rcx), %rdx
	movq	%rdx, 712(%rax)
	movq	720(%rcx), %rdx
	movq	%rdx, 720(%rax)
	movq	728(%rcx), %rdx
	movq	%rdx, 728(%rax)
	movq	736(%rcx), %rdx
	movq	%rdx, 736(%rax)
	movq	744(%rcx), %rdx
	movq	%rdx, 744(%rax)
	movq	752(%rcx), %rdx
	movq	%rdx, 752(%rax)
	movq	760(%rcx), %rdx
	movq	%rdx, 760(%rax)
	movq	768(%rcx), %rdx
	movq	%rdx, 768(%rax)
	movq	776(%rcx), %rdx
	movq	%rdx, 776(%rax)
	movq	784(%rcx), %rdx
	movq	%rdx, 784(%rax)
	movq	792(%rcx), %rdx
	movq	%rdx, 792(%rax)
	movq	800(%rcx), %rdx
	movq	%rdx, 800(%rax)
	movq	808(%rcx), %rdx
	movq	%rdx, 808(%rax)
	movq	816(%rcx), %rdx
	movq	%rdx, 816(%rax)
	movq	824(%rcx), %rdx
	movq	%rdx, 824(%rax)
	movq	832(%rcx), %rdx
	movq	%rdx, 832(%rax)
	movq	840(%rcx), %rdx
	movq	%rdx, 840(%rax)
	movq	848(%rcx), %rdx
	movq	%rdx, 848(%rax)
	movq	856(%rcx), %rdx
	movq	%rdx, 856(%rax)
	movq	864(%rcx), %rdx
	movq	%rdx, 864(%rax)
	movq	872(%rcx), %rdx
	movq	%rdx, 872(%rax)
	movq	880(%rcx), %rdx
	movq	%rdx, 880(%rax)
	movq	888(%rcx), %rdx
	movq	%rdx, 888(%rax)
	movq	896(%rcx), %rdx
	movq	%rdx, 896(%rax)
	movq	904(%rcx), %rdx
	movq	%rdx, 904(%rax)
	movq	912(%rcx), %rdx
	movq	%rdx, 912(%rax)
	movq	920(%rcx), %rdx
	movq	%rdx, 920(%rax)
	movq	928(%rcx), %rdx
	movq	%rdx, 928(%rax)
	movq	936(%rcx), %rdx
	movq	%rdx, 936(%rax)
	movq	944(%rcx), %rdx
	movq	%rdx, 944(%rax)
	movq	952(%rcx), %rdx
	movq	%rdx, 952(%rax)
	movq	960(%rcx), %rdx
	movq	%rdx, 960(%rax)
	movq	968(%rcx), %rdx
	movq	%rdx, 968(%rax)
	movq	976(%rcx), %rdx
	movq	%rdx, 976(%rax)
	movq	984(%rcx), %rdx
	movq	%rdx, 984(%rax)
	movq	992(%rcx), %rdx
	movq	%rdx, 992(%rax)
	movq	1000(%rcx), %rdx
	movq	%rdx, 1000(%rax)
	movq	1008(%rcx), %rdx
	movq	%rdx, 1008(%rax)
	movq	1016(%rcx), %rdx
	movq	%rdx, 1016(%rax)
	movq	1024(%rcx), %rdx
	movq	%rdx, 1024(%rax)
	movq	1032(%rcx), %rdx
	movq	%rdx, 1032(%rax)
	movq	1040(%rcx), %rdx
	movq	%rdx, 1040(%rax)
	movq	1048(%rcx), %rdx
	movq	%rdx, 1048(%rax)
	movq	1056(%rcx), %rdx
	movq	%rdx, 1056(%rax)
	movq	1064(%rcx), %rdx
	movq	%rdx, 1064(%rax)
	movq	1072(%rcx), %rdx
	movq	%rdx, 1072(%rax)
	movq	1080(%rcx), %rdx
	movq	%rdx, 1080(%rax)
	movq	1088(%rcx), %rdx
	movq	%rdx, 1088(%rax)
	movq	1096(%rcx), %rdx
	movq	%rdx, 1096(%rax)
	movq	1104(%rcx), %rdx
	movq	%rdx, 1104(%rax)
	movq	1112(%rcx), %rdx
	movq	%rdx, 1112(%rax)
	movq	1120(%rcx), %rdx
	movq	%rdx, 1120(%rax)
	movq	1128(%rcx), %rdx
	movq	%rdx, 1128(%rax)
	movq	1136(%rcx), %rdx
	movq	%rdx, 1136(%rax)
	movq	1144(%rcx), %rdx
	movq	%rdx, 1144(%rax)
	movq	1152(%rcx), %rdx
	movq	%rdx, 1152(%rax)
	movq	1160(%rcx), %rdx
	movq	%rdx, 1160(%rax)
	movq	1168(%rcx), %rdx
	movq	%rdx, 1168(%rax)
	movq	1176(%rcx), %rcx
	movq	%rcx, 1176(%rax)
	addq	$2336, 9776(%rsp)
	movq	9768(%rsp), %r8
	movq	$1184, %rax
	leaq	9816(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$1:
	leaq	232(%rsp), %rsp
	movq	9776(%rsp), %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9824(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	9832(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	9840(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	9760(%rsp), %rcx
	leaq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
	xorq	%rax, %rax
	movq	10384(%rsp), %rbx
	movq	10392(%rsp), %rbp
	movq	10400(%rsp), %r12
	movq	10408(%rsp), %r13
	movq	10416(%rsp), %r14
	movq	10424(%rsp), %r15
	movq	10432(%rsp), %rsp
	movq	%rsp, %rsi
	vpxor	%ymm2, %ymm2, %ymm2
	andq	$-32, %rsp
	subq	$12800, %rsp
	movq	$12800, %rdi
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$182:
	subq	$32, %rdi
	vmovdqu	%ymm2, (%rsp,%rdi)
	jne 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$182
	movq	%rsi, %rsp
	lfence
	ret
_jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand:
jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand:
	movq	%rsp, %rax
	leaq	-13472(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 13408(%rsp)
	movq	%rbp, 13416(%rsp)
	movq	%r12, 13424(%rsp)
	movq	%r13, 13432(%rsp)
	movq	%r14, 13440(%rsp)
	movq	%r15, 13448(%rsp)
	movq	%rax, 13456(%rsp)
	movb	(%rcx), %al
	movb	%al, 12968(%rsp)
	movb	1(%rcx), %al
	movb	%al, 12969(%rsp)
	movb	2(%rcx), %al
	movb	%al, 12970(%rsp)
	movb	3(%rcx), %al
	movb	%al, 12971(%rsp)
	movb	4(%rcx), %al
	movb	%al, 12972(%rsp)
	movb	5(%rcx), %al
	movb	%al, 12973(%rsp)
	movb	6(%rcx), %al
	movb	%al, 12974(%rsp)
	movb	7(%rcx), %al
	movb	%al, 12975(%rsp)
	movb	8(%rcx), %al
	movb	%al, 12976(%rsp)
	movb	9(%rcx), %al
	movb	%al, 12977(%rsp)
	movb	10(%rcx), %al
	movb	%al, 12978(%rsp)
	movb	11(%rcx), %al
	movb	%al, 12979(%rsp)
	movb	12(%rcx), %al
	movb	%al, 12980(%rsp)
	movb	13(%rcx), %al
	movb	%al, 12981(%rsp)
	movb	14(%rcx), %al
	movb	%al, 12982(%rsp)
	movb	15(%rcx), %al
	movb	%al, 12983(%rsp)
	movb	16(%rcx), %al
	movb	%al, 12984(%rsp)
	movb	17(%rcx), %al
	movb	%al, 12985(%rsp)
	movb	18(%rcx), %al
	movb	%al, 12986(%rsp)
	movb	19(%rcx), %al
	movb	%al, 12987(%rsp)
	movb	20(%rcx), %al
	movb	%al, 12988(%rsp)
	movb	21(%rcx), %al
	movb	%al, 12989(%rsp)
	movb	22(%rcx), %al
	movb	%al, 12990(%rsp)
	movb	23(%rcx), %al
	movb	%al, 12991(%rsp)
	movb	24(%rcx), %al
	movb	%al, 12992(%rsp)
	movb	25(%rcx), %al
	movb	%al, 12993(%rsp)
	movb	26(%rcx), %al
	movb	%al, 12994(%rsp)
	movb	27(%rcx), %al
	movb	%al, 12995(%rsp)
	movb	28(%rcx), %al
	movb	%al, 12996(%rsp)
	movb	29(%rcx), %al
	movb	%al, 12997(%rsp)
	movb	30(%rcx), %al
	movb	%al, 12998(%rsp)
	movb	31(%rcx), %al
	movb	%al, 12999(%rsp)
	leaq	12968(%rsp), %rax
	movq	%rdx, 12928(%rsp)
	movq	%rdi, 12936(%rsp)
	movq	%rsi, 12944(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	12928(%rsp), %r8
	movq	$1184, %rax
	leaq	32(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$190:
	leaq	232(%rsp), %rsp
	leaq	64(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$189:
	leaq	208(%rsp), %rsp
	movq	12928(%rsp), %rcx
	movq	%rsp, %rax
	leaq	96(%rsp), %rdx
	movq	%rcx, %rdi
	leaq	2176(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$188:
	addq	$384, %rdi
	leaq	2688(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$187:
	addq	$384, %rdi
	leaq	3200(%rsp), %r8
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$186:
	xorq	%rsi, %rsi
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$184
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$185:
	movq	(%rcx), %rdi
	movq	%rdi, 12968(%rsp,%rsi,8)
	addq	$8, %rcx
	incq	%rsi
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$184:
	cmpq	$4, %rsi
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$185
	leaq	128(%rsp), %rcx
	call	L_poly_frommsg_1$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$183:
	movq	%rdx, 12928(%rsp)
	movq	$1, %rax
	movq	%rax, 12952(%rsp)
	movb	12968(%rsp), %al
	movb	%al, 13000(%rsp)
	movb	12969(%rsp), %al
	movb	%al, 13001(%rsp)
	movb	12970(%rsp), %al
	movb	%al, 13002(%rsp)
	movb	12971(%rsp), %al
	movb	%al, 13003(%rsp)
	movb	12972(%rsp), %al
	movb	%al, 13004(%rsp)
	movb	12973(%rsp), %al
	movb	%al, 13005(%rsp)
	movb	12974(%rsp), %al
	movb	%al, 13006(%rsp)
	movb	12975(%rsp), %al
	movb	%al, 13007(%rsp)
	movb	12976(%rsp), %al
	movb	%al, 13008(%rsp)
	movb	12977(%rsp), %al
	movb	%al, 13009(%rsp)
	movb	12978(%rsp), %al
	movb	%al, 13010(%rsp)
	movb	12979(%rsp), %al
	movb	%al, 13011(%rsp)
	movb	12980(%rsp), %al
	movb	%al, 13012(%rsp)
	movb	12981(%rsp), %al
	movb	%al, 13013(%rsp)
	movb	12982(%rsp), %al
	movb	%al, 13014(%rsp)
	movb	12983(%rsp), %al
	movb	%al, 13015(%rsp)
	movb	12984(%rsp), %al
	movb	%al, 13016(%rsp)
	movb	12985(%rsp), %al
	movb	%al, 13017(%rsp)
	movb	12986(%rsp), %al
	movb	%al, 13018(%rsp)
	movb	12987(%rsp), %al
	movb	%al, 13019(%rsp)
	movb	12988(%rsp), %al
	movb	%al, 13020(%rsp)
	movb	12989(%rsp), %al
	movb	%al, 13021(%rsp)
	movb	12990(%rsp), %al
	movb	%al, 13022(%rsp)
	movb	12991(%rsp), %al
	movb	%al, 13023(%rsp)
	movb	12992(%rsp), %al
	movb	%al, 13024(%rsp)
	movb	12993(%rsp), %al
	movb	%al, 13025(%rsp)
	movb	12994(%rsp), %al
	movb	%al, 13026(%rsp)
	movb	12995(%rsp), %al
	movb	%al, 13027(%rsp)
	movb	12996(%rsp), %al
	movb	%al, 13028(%rsp)
	movb	12997(%rsp), %al
	movb	%al, 13029(%rsp)
	movb	12998(%rsp), %al
	movb	%al, 13030(%rsp)
	movb	12999(%rsp), %al
	movb	%al, 13031(%rsp)
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$181
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$182
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$181:
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$182:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$180:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$171:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$179:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$172
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$173:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$174
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$172
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$174:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$178
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$178:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$172
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$172
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$177:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$176:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$175:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$172:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$173
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$170:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$171
	xorq	%rax, %rax
	leaq	8320(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$168
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$169:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$168:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$169
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$166
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$167
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$166:
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$167:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$165:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$156:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$164:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$157
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$158:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$159
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$157
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$159:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$163
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$163:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$157
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$157
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$162:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$161:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$160:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$157:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$158
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$155:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$156
	xorq	%rax, %rax
	leaq	8832(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$153
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$154:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$153:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$154
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$151
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$152
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$151:
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$152:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$150:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$141:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$149:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$142
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$143:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$144
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$142
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$144:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$148
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$148:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$142
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$142
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$147:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$146:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$145:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$142:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$143
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$140:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$141
	xorq	%rax, %rax
	leaq	9344(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$138
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$139:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$138:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$139
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$136
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$137
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$136:
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$137:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$135:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$126:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$134:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$127
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$129
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$127
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$129:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$133
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$133:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$127
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$127
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$132:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$131:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$130:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$127:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$128
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$125:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$126
	xorq	%rax, %rax
	leaq	9856(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$123
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$124:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$123:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$124
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$121
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$122
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$121:
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$122:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$120:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$111:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$119:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$112
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$113:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$114
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$112
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$114:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$118
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$118:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$112
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$112
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$117:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$116:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$115:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$112:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$113
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$110:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$111
	xorq	%rax, %rax
	leaq	10368(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$108
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$109:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$108:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$109
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$106
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$107
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$106:
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$107:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$105:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$96:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$104:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$97
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$99
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$97
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$99:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$103
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$103:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$97
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$97
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$102:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$101:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$100:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$97:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$98
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$95:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$96
	xorq	%rax, %rax
	leaq	10880(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$93
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$94:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$93:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$94
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$91
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$92
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$91:
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$92:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$90:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$81:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$89:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$82
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$83:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$84
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$82
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$84:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$88
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$88:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$82
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$82
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$87:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$86:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$85:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$82:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$83
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$80:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$81
	xorq	%rax, %rax
	leaq	11392(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$78
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$79:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$78:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$79
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$76
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$77
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$76:
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$77:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$75:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$66:
	movq	%rax, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$74:
	leaq	8(%rsp), %rsp
	movq	12960(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$67
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$68:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$69
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$67
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$69:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$73
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$73:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$67
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$67
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$72:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$71:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$70:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$67:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$68
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$65:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$66
	xorq	%rax, %rax
	leaq	11904(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$63
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$64:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$64
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$61
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$62
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$61:
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$62:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$60:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$51:
	movq	%rax, 12952(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$59:
	leaq	8(%rsp), %rsp
	movq	12952(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$52
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$53:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$54
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$52
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$54:
	movzbw	13040(%rsp,%rcx), %dx
	movzbw	13041(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13042(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$58
	movw	%dx, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$58:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$52
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$52
	movw	%di, 640(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$57:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$56:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$55:
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$52:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$53
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$50:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$51
	xorq	%rax, %rax
	leaq	12416(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$48
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$49:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$48:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$49
	leaq	8320(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$47:
	leaq	8832(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$46:
	leaq	9344(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$45:
	leaq	9856(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$44:
	leaq	10368(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$43:
	leaq	10880(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$42:
	leaq	11392(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$41:
	leaq	11904(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$40:
	leaq	12416(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$39:
	movq	12928(%rsp), %rdi
	xorb	%r8b, %r8b
	leaq	5248(%rsp), %rax
	leaq	5760(%rsp), %rcx
	leaq	6272(%rsp), %rdx
	leaq	3712(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$38:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	4224(%rsp), %rax
	leaq	4736(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	6784(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$37:
	leaq	1496(%rsp), %rsp
	leaq	5248(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$36:
	leaq	5760(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$35:
	leaq	6272(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$34:
	leaq	6784(%rsp), %rcx
	leaq	8320(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$33:
	leaq	1152(%rsp), %rcx
	leaq	8832(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$32:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$31:
	leaq	1152(%rsp), %rcx
	leaq	9344(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$30:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$29:
	leaq	7296(%rsp), %rcx
	leaq	9856(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$28:
	leaq	1152(%rsp), %rcx
	leaq	10368(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$27:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$26:
	leaq	1152(%rsp), %rcx
	leaq	10880(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$25:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$24:
	leaq	7808(%rsp), %rcx
	leaq	11392(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$23:
	leaq	1152(%rsp), %rcx
	leaq	11904(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$22:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$21:
	leaq	1152(%rsp), %rcx
	leaq	12416(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$20:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$19:
	leaq	1152(%rsp), %rcx
	leaq	2176(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$18:
	leaq	1664(%rsp), %rcx
	leaq	2688(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$17:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$16:
	leaq	1664(%rsp), %rcx
	leaq	3200(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$15:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$14:
	leaq	6784(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$13:
	leaq	7296(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$12:
	leaq	7808(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$11:
	leaq	1152(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$10:
	leaq	6784(%rsp), %rcx
	leaq	3712(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$9:
	leaq	7296(%rsp), %rcx
	leaq	4224(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$8:
	leaq	7808(%rsp), %rcx
	leaq	4736(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$7:
	leaq	1152(%rsp), %rcx
	leaq	640(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$6:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$5:
	leaq	6784(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7296(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7808(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	1152(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	12936(%rsp), %rax
	leaq	6784(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$4:
	leaq	7296(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$3:
	leaq	7808(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$2:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	6784(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$224, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rax)
	vpextrd	$0, %xmm0, 956(%rax)
	addq	$960, %rax
	leaq	1152(%rsp), %rcx
	call	L_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$1:
	movq	12944(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	80(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	88(%rsp), %rcx
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	13408(%rsp), %rbx
	movq	13416(%rsp), %rbp
	movq	13424(%rsp), %r12
	movq	13432(%rsp), %r13
	movq	13440(%rsp), %r14
	movq	13448(%rsp), %r15
	movq	13456(%rsp), %rsp
	movq	%rsp, %rsi
	vpxor	%ymm2, %ymm2, %ymm2
	andq	$-32, %rsp
	subq	$15808, %rsp
	movq	$15808, %rdi
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$191:
	subq	$32, %rdi
	vmovdqu	%ymm2, (%rsp,%rdi)
	jne 	Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$191
	movq	%rsi, %rsp
	lfence
	ret
_jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand:
jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand:
	movq	%rsp, %rax
	leaq	-10464(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%r12, 10400(%rsp)
	movq	%r13, 10408(%rsp)
	movq	%r14, 10416(%rsp)
	movq	%r15, 10424(%rsp)
	movq	%rax, 10432(%rsp)
	movb	(%rdx), %al
	movb	%al, 9888(%rsp)
	movb	1(%rdx), %al
	movb	%al, 9889(%rsp)
	movb	2(%rdx), %al
	movb	%al, 9890(%rsp)
	movb	3(%rdx), %al
	movb	%al, 9891(%rsp)
	movb	4(%rdx), %al
	movb	%al, 9892(%rsp)
	movb	5(%rdx), %al
	movb	%al, 9893(%rsp)
	movb	6(%rdx), %al
	movb	%al, 9894(%rsp)
	movb	7(%rdx), %al
	movb	%al, 9895(%rsp)
	movb	8(%rdx), %al
	movb	%al, 9896(%rsp)
	movb	9(%rdx), %al
	movb	%al, 9897(%rsp)
	movb	10(%rdx), %al
	movb	%al, 9898(%rsp)
	movb	11(%rdx), %al
	movb	%al, 9899(%rsp)
	movb	12(%rdx), %al
	movb	%al, 9900(%rsp)
	movb	13(%rdx), %al
	movb	%al, 9901(%rsp)
	movb	14(%rdx), %al
	movb	%al, 9902(%rsp)
	movb	15(%rdx), %al
	movb	%al, 9903(%rsp)
	movb	16(%rdx), %al
	movb	%al, 9904(%rsp)
	movb	17(%rdx), %al
	movb	%al, 9905(%rsp)
	movb	18(%rdx), %al
	movb	%al, 9906(%rsp)
	movb	19(%rdx), %al
	movb	%al, 9907(%rsp)
	movb	20(%rdx), %al
	movb	%al, 9908(%rsp)
	movb	21(%rdx), %al
	movb	%al, 9909(%rsp)
	movb	22(%rdx), %al
	movb	%al, 9910(%rsp)
	movb	23(%rdx), %al
	movb	%al, 9911(%rsp)
	movb	24(%rdx), %al
	movb	%al, 9912(%rsp)
	movb	25(%rdx), %al
	movb	%al, 9913(%rsp)
	movb	26(%rdx), %al
	movb	%al, 9914(%rsp)
	movb	27(%rdx), %al
	movb	%al, 9915(%rsp)
	movb	28(%rdx), %al
	movb	%al, 9916(%rsp)
	movb	29(%rdx), %al
	movb	%al, 9917(%rsp)
	movb	30(%rdx), %al
	movb	%al, 9918(%rsp)
	movb	31(%rdx), %al
	movb	%al, 9919(%rsp)
	movb	32(%rdx), %al
	movb	%al, 9920(%rsp)
	movb	33(%rdx), %al
	movb	%al, 9921(%rsp)
	movb	34(%rdx), %al
	movb	%al, 9922(%rsp)
	movb	35(%rdx), %al
	movb	%al, 9923(%rsp)
	movb	36(%rdx), %al
	movb	%al, 9924(%rsp)
	movb	37(%rdx), %al
	movb	%al, 9925(%rsp)
	movb	38(%rdx), %al
	movb	%al, 9926(%rsp)
	movb	39(%rdx), %al
	movb	%al, 9927(%rsp)
	movb	40(%rdx), %al
	movb	%al, 9928(%rsp)
	movb	41(%rdx), %al
	movb	%al, 9929(%rsp)
	movb	42(%rdx), %al
	movb	%al, 9930(%rsp)
	movb	43(%rdx), %al
	movb	%al, 9931(%rsp)
	movb	44(%rdx), %al
	movb	%al, 9932(%rsp)
	movb	45(%rdx), %al
	movb	%al, 9933(%rsp)
	movb	46(%rdx), %al
	movb	%al, 9934(%rsp)
	movb	47(%rdx), %al
	movb	%al, 9935(%rsp)
	movb	48(%rdx), %al
	movb	%al, 9936(%rsp)
	movb	49(%rdx), %al
	movb	%al, 9937(%rsp)
	movb	50(%rdx), %al
	movb	%al, 9938(%rsp)
	movb	51(%rdx), %al
	movb	%al, 9939(%rsp)
	movb	52(%rdx), %al
	movb	%al, 9940(%rsp)
	movb	53(%rdx), %al
	movb	%al, 9941(%rsp)
	movb	54(%rdx), %al
	movb	%al, 9942(%rsp)
	movb	55(%rdx), %al
	movb	%al, 9943(%rsp)
	movb	56(%rdx), %al
	movb	%al, 9944(%rsp)
	movb	57(%rdx), %al
	movb	%al, 9945(%rsp)
	movb	58(%rdx), %al
	movb	%al, 9946(%rsp)
	movb	59(%rdx), %al
	movb	%al, 9947(%rsp)
	movb	60(%rdx), %al
	movb	%al, 9948(%rsp)
	movb	61(%rdx), %al
	movb	%al, 9949(%rsp)
	movb	62(%rdx), %al
	movb	%al, 9950(%rsp)
	movb	63(%rdx), %al
	movb	%al, 9951(%rsp)
	leaq	9888(%rsp), %rax
	movq	%rax, 9760(%rsp)
	movq	%rdi, 9768(%rsp)
	movq	%rsi, 9776(%rsp)
	movq	%rdi, 9784(%rsp)
	movq	%rsi, 9792(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	leaq	9952(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_32$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$181:
	leaq	208(%rsp), %rsp
	movq	9952(%rsp), %rax
	movq	%rax, 9816(%rsp)
	movq	9984(%rsp), %rax
	movq	%rax, (%rsp)
	movq	9960(%rsp), %rax
	movq	%rax, 9824(%rsp)
	movq	9992(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	9968(%rsp), %rax
	movq	%rax, 9832(%rsp)
	movq	10000(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	9976(%rsp), %rax
	movq	%rax, 9840(%rsp)
	movq	10008(%rsp), %rax
	movq	%rax, 24(%rsp)
	xorq	%rax, %rax
	movq	%rax, 9800(%rsp)
	movb	9816(%rsp), %al
	movb	%al, 9848(%rsp)
	movb	9817(%rsp), %al
	movb	%al, 9849(%rsp)
	movb	9818(%rsp), %al
	movb	%al, 9850(%rsp)
	movb	9819(%rsp), %al
	movb	%al, 9851(%rsp)
	movb	9820(%rsp), %al
	movb	%al, 9852(%rsp)
	movb	9821(%rsp), %al
	movb	%al, 9853(%rsp)
	movb	9822(%rsp), %al
	movb	%al, 9854(%rsp)
	movb	9823(%rsp), %al
	movb	%al, 9855(%rsp)
	movb	9824(%rsp), %al
	movb	%al, 9856(%rsp)
	movb	9825(%rsp), %al
	movb	%al, 9857(%rsp)
	movb	9826(%rsp), %al
	movb	%al, 9858(%rsp)
	movb	9827(%rsp), %al
	movb	%al, 9859(%rsp)
	movb	9828(%rsp), %al
	movb	%al, 9860(%rsp)
	movb	9829(%rsp), %al
	movb	%al, 9861(%rsp)
	movb	9830(%rsp), %al
	movb	%al, 9862(%rsp)
	movb	9831(%rsp), %al
	movb	%al, 9863(%rsp)
	movb	9832(%rsp), %al
	movb	%al, 9864(%rsp)
	movb	9833(%rsp), %al
	movb	%al, 9865(%rsp)
	movb	9834(%rsp), %al
	movb	%al, 9866(%rsp)
	movb	9835(%rsp), %al
	movb	%al, 9867(%rsp)
	movb	9836(%rsp), %al
	movb	%al, 9868(%rsp)
	movb	9837(%rsp), %al
	movb	%al, 9869(%rsp)
	movb	9838(%rsp), %al
	movb	%al, 9870(%rsp)
	movb	9839(%rsp), %al
	movb	%al, 9871(%rsp)
	movb	9840(%rsp), %al
	movb	%al, 9872(%rsp)
	movb	9841(%rsp), %al
	movb	%al, 9873(%rsp)
	movb	9842(%rsp), %al
	movb	%al, 9874(%rsp)
	movb	9843(%rsp), %al
	movb	%al, 9875(%rsp)
	movb	9844(%rsp), %al
	movb	%al, 9876(%rsp)
	movb	9845(%rsp), %al
	movb	%al, 9877(%rsp)
	movb	9846(%rsp), %al
	movb	%al, 9878(%rsp)
	movb	9847(%rsp), %al
	movb	%al, 9879(%rsp)
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$179
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$180
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$179:
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$180:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$178:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$168
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$169:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$177:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$171:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$172
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$170
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$172:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$176
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$176:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$170
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$170
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$175:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$174:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$173:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$170:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$171
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$168:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$169
	xorq	%rax, %rax
	leaq	5152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$166
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$167:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$166:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$167
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$164
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$165
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$164:
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$165:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$163:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$153
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$154:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$162:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$156:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$157
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$155
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$157:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$161
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$161:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$155
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$155
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$160:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$159:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$158:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$155:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$156
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$153:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$154
	xorq	%rax, %rax
	leaq	5664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$151
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$152:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$151:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$152
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$149
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$150
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$149:
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$150:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$148:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$138
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$139:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$147:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$141:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$142
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$140
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$142:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$146
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$146:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$140
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$140
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$145:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$144:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$143:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$140:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$141
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$138:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$139
	xorq	%rax, %rax
	leaq	6176(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$136
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$137:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$136:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$137
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$134
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$135
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$134:
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$135:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$133:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$123
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$124:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$132:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$126:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$127
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$125
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$127:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$131
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$131:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$125
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$125
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$130:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$129:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$128:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$125:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$126
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$123:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$124
	xorq	%rax, %rax
	leaq	6688(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$121
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$122:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$121:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$122
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$119
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$120
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$119:
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$120:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$118:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$108
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$109:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$117:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$111:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$112
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$110
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$112:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$116
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$116:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$110
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$110
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$115:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$114:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$113:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$110:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$111
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$108:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$109
	xorq	%rax, %rax
	leaq	7200(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$106
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$107:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$106:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$107
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$104
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$105
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$104:
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$105:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$103:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$93
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$94:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$102:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$96:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$97
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$95
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$97:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$101
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$101:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$95
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$95
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$100:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$99:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$98:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$95:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$96
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$93:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$94
	xorq	%rax, %rax
	leaq	7712(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$91
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$92:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$91:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$92
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$89
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$90
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$89:
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$90:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$88:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$78
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$79:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$87:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$81:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$82
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$80
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$82:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$86
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$86:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$80
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$80
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$85:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$84:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$83:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$80:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$81
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$78:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$79
	xorq	%rax, %rax
	leaq	8224(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$76
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$77:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$76:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$77
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$74
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$75
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$74:
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$75:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$73:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$63
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$64:
	movq	%rax, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$72:
	leaq	8(%rsp), %rsp
	movq	9808(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$66:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$67
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$65
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$67:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$71
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$71:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$65
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$65
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$70:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$69:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$68:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$65:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$66
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$64
	xorq	%rax, %rax
	leaq	8736(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$61
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$62:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$61:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$62
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$59
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$60
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$59:
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$60:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$58:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$48
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$49:
	movq	%rax, 9800(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$57:
	leaq	8(%rsp), %rsp
	movq	9800(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$51:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$52
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$50
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$52:
	movzbw	10016(%rsp,%rcx), %dx
	movzbw	10017(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10018(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$56
	movw	%dx, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$56:
	cmpw	$3329, %di
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$50
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$50
	movw	%di, 32(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$55:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$54:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$53:
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$50:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$51
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$48:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$49
	xorq	%rax, %rax
	leaq	9248(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$46
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$47:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$46:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$47
	leaq	5152(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$45:
	leaq	5664(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$44:
	leaq	6176(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$43:
	leaq	6688(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$42:
	leaq	7200(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$41:
	leaq	7712(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$40:
	leaq	8224(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$39:
	leaq	8736(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$38:
	leaq	9248(%rsp), %rax
	call	L_nttunpack$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$37:
	xorb	%r8b, %r8b
	leaq	2080(%rsp), %rax
	leaq	2592(%rsp), %rcx
	leaq	3104(%rsp), %rdx
	leaq	544(%rsp), %rsi
	movq	%rsp, %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$36:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	1056(%rsp), %rax
	leaq	1568(%rsp), %rcx
	leaq	3616(%rsp), %rdx
	leaq	4128(%rsp), %rsi
	movq	%rsp, %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$35:
	leaq	1496(%rsp), %rsp
	leaq	2080(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$34:
	leaq	2592(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$33:
	leaq	3104(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$32:
	leaq	544(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$31:
	leaq	1056(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$30:
	leaq	1568(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$29:
	leaq	3616(%rsp), %rcx
	leaq	5152(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$28:
	leaq	32(%rsp), %rcx
	leaq	5664(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$27:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$26:
	leaq	32(%rsp), %rcx
	leaq	6176(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$25:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$24:
	leaq	3616(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$23:
	leaq	4128(%rsp), %rcx
	leaq	6688(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$22:
	leaq	32(%rsp), %rcx
	leaq	7200(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$21:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$20:
	leaq	32(%rsp), %rcx
	leaq	7712(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$19:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$18:
	leaq	4128(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$17:
	leaq	4640(%rsp), %rcx
	leaq	8224(%rsp), %rsi
	leaq	2080(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$16:
	leaq	32(%rsp), %rcx
	leaq	8736(%rsp), %rsi
	leaq	2592(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$15:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$14:
	leaq	32(%rsp), %rcx
	leaq	9248(%rsp), %rsi
	leaq	3104(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$13:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$12:
	leaq	4640(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$11:
	leaq	3616(%rsp), %rcx
	leaq	544(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$10:
	leaq	4128(%rsp), %rcx
	leaq	1056(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$9:
	leaq	4640(%rsp), %rcx
	leaq	1568(%rsp), %rsi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$8:
	leaq	3616(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4128(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4640(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	9784(%rsp), %rax
	movq	9792(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	2080(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$7:
	addq	$384, %rdx
	leaq	2592(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$6:
	addq	$384, %rdx
	leaq	3104(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$5:
	movq	%rax, %rdx
	leaq	3616(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$4:
	addq	$384, %rdx
	leaq	4128(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$3:
	addq	$384, %rdx
	leaq	4640(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$2:
	addq	$1152, %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9824(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9832(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9840(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9776(%rsp), %rax
	addq	$1152, %rax
	movq	9768(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 64(%rax)
	movq	72(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	88(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	96(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movq	104(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	112(%rcx), %rdx
	movq	%rdx, 112(%rax)
	movq	120(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	128(%rcx), %rdx
	movq	%rdx, 128(%rax)
	movq	136(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	144(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	152(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	160(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	168(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	176(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	184(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	192(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	200(%rcx), %rdx
	movq	%rdx, 200(%rax)
	movq	208(%rcx), %rdx
	movq	%rdx, 208(%rax)
	movq	216(%rcx), %rdx
	movq	%rdx, 216(%rax)
	movq	224(%rcx), %rdx
	movq	%rdx, 224(%rax)
	movq	232(%rcx), %rdx
	movq	%rdx, 232(%rax)
	movq	240(%rcx), %rdx
	movq	%rdx, 240(%rax)
	movq	248(%rcx), %rdx
	movq	%rdx, 248(%rax)
	movq	256(%rcx), %rdx
	movq	%rdx, 256(%rax)
	movq	264(%rcx), %rdx
	movq	%rdx, 264(%rax)
	movq	272(%rcx), %rdx
	movq	%rdx, 272(%rax)
	movq	280(%rcx), %rdx
	movq	%rdx, 280(%rax)
	movq	288(%rcx), %rdx
	movq	%rdx, 288(%rax)
	movq	296(%rcx), %rdx
	movq	%rdx, 296(%rax)
	movq	304(%rcx), %rdx
	movq	%rdx, 304(%rax)
	movq	312(%rcx), %rdx
	movq	%rdx, 312(%rax)
	movq	320(%rcx), %rdx
	movq	%rdx, 320(%rax)
	movq	328(%rcx), %rdx
	movq	%rdx, 328(%rax)
	movq	336(%rcx), %rdx
	movq	%rdx, 336(%rax)
	movq	344(%rcx), %rdx
	movq	%rdx, 344(%rax)
	movq	352(%rcx), %rdx
	movq	%rdx, 352(%rax)
	movq	360(%rcx), %rdx
	movq	%rdx, 360(%rax)
	movq	368(%rcx), %rdx
	movq	%rdx, 368(%rax)
	movq	376(%rcx), %rdx
	movq	%rdx, 376(%rax)
	movq	384(%rcx), %rdx
	movq	%rdx, 384(%rax)
	movq	392(%rcx), %rdx
	movq	%rdx, 392(%rax)
	movq	400(%rcx), %rdx
	movq	%rdx, 400(%rax)
	movq	408(%rcx), %rdx
	movq	%rdx, 408(%rax)
	movq	416(%rcx), %rdx
	movq	%rdx, 416(%rax)
	movq	424(%rcx), %rdx
	movq	%rdx, 424(%rax)
	movq	432(%rcx), %rdx
	movq	%rdx, 432(%rax)
	movq	440(%rcx), %rdx
	movq	%rdx, 440(%rax)
	movq	448(%rcx), %rdx
	movq	%rdx, 448(%rax)
	movq	456(%rcx), %rdx
	movq	%rdx, 456(%rax)
	movq	464(%rcx), %rdx
	movq	%rdx, 464(%rax)
	movq	472(%rcx), %rdx
	movq	%rdx, 472(%rax)
	movq	480(%rcx), %rdx
	movq	%rdx, 480(%rax)
	movq	488(%rcx), %rdx
	movq	%rdx, 488(%rax)
	movq	496(%rcx), %rdx
	movq	%rdx, 496(%rax)
	movq	504(%rcx), %rdx
	movq	%rdx, 504(%rax)
	movq	512(%rcx), %rdx
	movq	%rdx, 512(%rax)
	movq	520(%rcx), %rdx
	movq	%rdx, 520(%rax)
	movq	528(%rcx), %rdx
	movq	%rdx, 528(%rax)
	movq	536(%rcx), %rdx
	movq	%rdx, 536(%rax)
	movq	544(%rcx), %rdx
	movq	%rdx, 544(%rax)
	movq	552(%rcx), %rdx
	movq	%rdx, 552(%rax)
	movq	560(%rcx), %rdx
	movq	%rdx, 560(%rax)
	movq	568(%rcx), %rdx
	movq	%rdx, 568(%rax)
	movq	576(%rcx), %rdx
	movq	%rdx, 576(%rax)
	movq	584(%rcx), %rdx
	movq	%rdx, 584(%rax)
	movq	592(%rcx), %rdx
	movq	%rdx, 592(%rax)
	movq	600(%rcx), %rdx
	movq	%rdx, 600(%rax)
	movq	608(%rcx), %rdx
	movq	%rdx, 608(%rax)
	movq	616(%rcx), %rdx
	movq	%rdx, 616(%rax)
	movq	624(%rcx), %rdx
	movq	%rdx, 624(%rax)
	movq	632(%rcx), %rdx
	movq	%rdx, 632(%rax)
	movq	640(%rcx), %rdx
	movq	%rdx, 640(%rax)
	movq	648(%rcx), %rdx
	movq	%rdx, 648(%rax)
	movq	656(%rcx), %rdx
	movq	%rdx, 656(%rax)
	movq	664(%rcx), %rdx
	movq	%rdx, 664(%rax)
	movq	672(%rcx), %rdx
	movq	%rdx, 672(%rax)
	movq	680(%rcx), %rdx
	movq	%rdx, 680(%rax)
	movq	688(%rcx), %rdx
	movq	%rdx, 688(%rax)
	movq	696(%rcx), %rdx
	movq	%rdx, 696(%rax)
	movq	704(%rcx), %rdx
	movq	%rdx, 704(%rax)
	movq	712(%rcx), %rdx
	movq	%rdx, 712(%rax)
	movq	720(%rcx), %rdx
	movq	%rdx, 720(%rax)
	movq	728(%rcx), %rdx
	movq	%rdx, 728(%rax)
	movq	736(%rcx), %rdx
	movq	%rdx, 736(%rax)
	movq	744(%rcx), %rdx
	movq	%rdx, 744(%rax)
	movq	752(%rcx), %rdx
	movq	%rdx, 752(%rax)
	movq	760(%rcx), %rdx
	movq	%rdx, 760(%rax)
	movq	768(%rcx), %rdx
	movq	%rdx, 768(%rax)
	movq	776(%rcx), %rdx
	movq	%rdx, 776(%rax)
	movq	784(%rcx), %rdx
	movq	%rdx, 784(%rax)
	movq	792(%rcx), %rdx
	movq	%rdx, 792(%rax)
	movq	800(%rcx), %rdx
	movq	%rdx, 800(%rax)
	movq	808(%rcx), %rdx
	movq	%rdx, 808(%rax)
	movq	816(%rcx), %rdx
	movq	%rdx, 816(%rax)
	movq	824(%rcx), %rdx
	movq	%rdx, 824(%rax)
	movq	832(%rcx), %rdx
	movq	%rdx, 832(%rax)
	movq	840(%rcx), %rdx
	movq	%rdx, 840(%rax)
	movq	848(%rcx), %rdx
	movq	%rdx, 848(%rax)
	movq	856(%rcx), %rdx
	movq	%rdx, 856(%rax)
	movq	864(%rcx), %rdx
	movq	%rdx, 864(%rax)
	movq	872(%rcx), %rdx
	movq	%rdx, 872(%rax)
	movq	880(%rcx), %rdx
	movq	%rdx, 880(%rax)
	movq	888(%rcx), %rdx
	movq	%rdx, 888(%rax)
	movq	896(%rcx), %rdx
	movq	%rdx, 896(%rax)
	movq	904(%rcx), %rdx
	movq	%rdx, 904(%rax)
	movq	912(%rcx), %rdx
	movq	%rdx, 912(%rax)
	movq	920(%rcx), %rdx
	movq	%rdx, 920(%rax)
	movq	928(%rcx), %rdx
	movq	%rdx, 928(%rax)
	movq	936(%rcx), %rdx
	movq	%rdx, 936(%rax)
	movq	944(%rcx), %rdx
	movq	%rdx, 944(%rax)
	movq	952(%rcx), %rdx
	movq	%rdx, 952(%rax)
	movq	960(%rcx), %rdx
	movq	%rdx, 960(%rax)
	movq	968(%rcx), %rdx
	movq	%rdx, 968(%rax)
	movq	976(%rcx), %rdx
	movq	%rdx, 976(%rax)
	movq	984(%rcx), %rdx
	movq	%rdx, 984(%rax)
	movq	992(%rcx), %rdx
	movq	%rdx, 992(%rax)
	movq	1000(%rcx), %rdx
	movq	%rdx, 1000(%rax)
	movq	1008(%rcx), %rdx
	movq	%rdx, 1008(%rax)
	movq	1016(%rcx), %rdx
	movq	%rdx, 1016(%rax)
	movq	1024(%rcx), %rdx
	movq	%rdx, 1024(%rax)
	movq	1032(%rcx), %rdx
	movq	%rdx, 1032(%rax)
	movq	1040(%rcx), %rdx
	movq	%rdx, 1040(%rax)
	movq	1048(%rcx), %rdx
	movq	%rdx, 1048(%rax)
	movq	1056(%rcx), %rdx
	movq	%rdx, 1056(%rax)
	movq	1064(%rcx), %rdx
	movq	%rdx, 1064(%rax)
	movq	1072(%rcx), %rdx
	movq	%rdx, 1072(%rax)
	movq	1080(%rcx), %rdx
	movq	%rdx, 1080(%rax)
	movq	1088(%rcx), %rdx
	movq	%rdx, 1088(%rax)
	movq	1096(%rcx), %rdx
	movq	%rdx, 1096(%rax)
	movq	1104(%rcx), %rdx
	movq	%rdx, 1104(%rax)
	movq	1112(%rcx), %rdx
	movq	%rdx, 1112(%rax)
	movq	1120(%rcx), %rdx
	movq	%rdx, 1120(%rax)
	movq	1128(%rcx), %rdx
	movq	%rdx, 1128(%rax)
	movq	1136(%rcx), %rdx
	movq	%rdx, 1136(%rax)
	movq	1144(%rcx), %rdx
	movq	%rdx, 1144(%rax)
	movq	1152(%rcx), %rdx
	movq	%rdx, 1152(%rax)
	movq	1160(%rcx), %rdx
	movq	%rdx, 1160(%rax)
	movq	1168(%rcx), %rdx
	movq	%rdx, 1168(%rax)
	movq	1176(%rcx), %rcx
	movq	%rcx, 1176(%rax)
	addq	$2336, 9776(%rsp)
	movq	9768(%rsp), %r8
	movq	$1184, %rax
	leaq	9816(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$1:
	leaq	232(%rsp), %rsp
	movq	9776(%rsp), %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9824(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	9832(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	9840(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	9760(%rsp), %rcx
	leaq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
	xorq	%rax, %rax
	movq	10384(%rsp), %rbx
	movq	10392(%rsp), %rbp
	movq	10400(%rsp), %r12
	movq	10408(%rsp), %r13
	movq	10416(%rsp), %r14
	movq	10424(%rsp), %r15
	movq	10432(%rsp), %rsp
	movq	%rsp, %rsi
	vpxor	%ymm2, %ymm2, %ymm2
	andq	$-32, %rsp
	subq	$12800, %rsp
	movq	$12800, %rdi
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$182:
	subq	$32, %rdi
	vmovdqu	%ymm2, (%rsp,%rdi)
	jne 	Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$182
	movq	%rsi, %rsp
	lfence
	ret
L_poly_tomsg_1$1:
	call	L_poly_csubq$1
L_poly_tomsg_1$2:
	leaq	glob_data + 1056(%rip), %rsi
	vmovdqu	(%rsi), %ymm0
	leaq	glob_data + 1024(%rip), %rsi
	vmovdqu	(%rsi), %ymm1
	vmovdqu	(%rcx), %ymm2
	vmovdqu	32(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, (%rax)
	vmovdqu	64(%rcx), %ymm2
	vmovdqu	96(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 4(%rax)
	vmovdqu	128(%rcx), %ymm2
	vmovdqu	160(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 8(%rax)
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 12(%rax)
	vmovdqu	256(%rcx), %ymm2
	vmovdqu	288(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 16(%rax)
	vmovdqu	320(%rcx), %ymm2
	vmovdqu	352(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 20(%rax)
	vmovdqu	384(%rcx), %ymm2
	vmovdqu	416(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 24(%rax)
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm0
	vpsraw	$15, %ymm2, %ymm3
	vpsraw	$15, %ymm0, %ymm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm4, %ymm0, %ymm0
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vpacksswb	%ymm0, %ymm2, %ymm0
	vpermq	$216, %ymm0, %ymm0
	vpmovmskb	%ymm0, %ecx
	movl	%ecx, 28(%rax)
	ret
L_poly_tobytes$1:
	call	L_poly_csubq$1
L_poly_tobytes$2:
	vmovdqu	(%rcx), %ymm4
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm7
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$170, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$170, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, (%rdx)
	vmovdqu	%ymm5, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm1, 96(%rdx)
	vmovdqu	%ymm2, 128(%rdx)
	vmovdqu	%ymm0, 160(%rdx)
	vmovdqu	256(%rcx), %ymm4
	vmovdqu	288(%rcx), %ymm5
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm7
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$170, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$170, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, 192(%rdx)
	vmovdqu	%ymm5, 224(%rdx)
	vmovdqu	%ymm6, 256(%rdx)
	vmovdqu	%ymm1, 288(%rdx)
	vmovdqu	%ymm2, 320(%rdx)
	vmovdqu	%ymm0, 352(%rdx)
	ret
L_poly_sub$1:
	vmovdqu	(%rsi), %ymm0
	vmovdqu	(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rsi), %ymm0
	vmovdqu	32(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rsi), %ymm0
	vmovdqu	64(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rsi), %ymm0
	vmovdqu	96(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rsi), %ymm0
	vmovdqu	128(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rsi), %ymm0
	vmovdqu	160(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rsi), %ymm0
	vmovdqu	192(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rsi), %ymm0
	vmovdqu	224(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rsi), %ymm0
	vmovdqu	256(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rsi), %ymm0
	vmovdqu	288(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rsi), %ymm0
	vmovdqu	320(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rsi), %ymm0
	vmovdqu	352(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rsi), %ymm0
	vmovdqu	384(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rsi), %ymm0
	vmovdqu	416(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rsi), %ymm0
	vmovdqu	448(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rsi), %ymm0
	vmovdqu	480(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_ntt$1:
	leaq	glob_data + 2112(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vpbroadcastd	(%rsi), %ymm1
	vpbroadcastd	4(%rsi), %ymm2
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm4
	vmovdqu	96(%rcx), %ymm5
	vmovdqu	256(%rcx), %ymm6
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm12
	vmovdqu	352(%rcx), %ymm8
	vpmullw	%ymm6, %ymm1, %ymm9
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm15
	vpmullw	%ymm12, %ymm1, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm7
	vpmullw	%ymm8, %ymm1, %ymm12
	vpmulhw	%ymm8, %ymm2, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm12, %ymm12
	vpsubw	%ymm15, %ymm14, %ymm13
	vpaddw	%ymm14, %ymm15, %ymm14
	vpsubw	%ymm6, %ymm3, %ymm15
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm8, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm8, %ymm5
	vpsubw	%ymm7, %ymm4, %ymm8
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm15, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm14, %ymm10
	vpaddw	%ymm8, %ymm11, %ymm8
	vpsubw	%ymm11, %ymm4, %ymm4
	vpaddw	%ymm6, %ymm12, %ymm6
	vpsubw	%ymm12, %ymm5, %ymm5
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm10, 32(%rcx)
	vmovdqu	%ymm4, 64(%rcx)
	vmovdqu	%ymm5, 96(%rcx)
	vmovdqu	%ymm7, 256(%rcx)
	vmovdqu	%ymm9, 288(%rcx)
	vmovdqu	%ymm8, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	128(%rcx), %ymm3
	vmovdqu	160(%rcx), %ymm12
	vmovdqu	192(%rcx), %ymm4
	vmovdqu	224(%rcx), %ymm5
	vmovdqu	384(%rcx), %ymm6
	vmovdqu	416(%rcx), %ymm7
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm11
	vpmullw	%ymm6, %ymm1, %ymm14
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm8
	vpmulhw	%ymm7, %ymm2, %ymm13
	vpmullw	%ymm10, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm7
	vpmullw	%ymm11, %ymm1, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm14, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm6, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm1, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm1, %ymm1
	vpsubw	%ymm7, %ymm4, %ymm5
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm13, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm3, %ymm2
	vpaddw	%ymm11, %ymm8, %ymm3
	vpsubw	%ymm8, %ymm12, %ymm8
	vpaddw	%ymm5, %ymm9, %ymm5
	vpsubw	%ymm9, %ymm4, %ymm9
	vpaddw	%ymm6, %ymm10, %ymm4
	vpsubw	%ymm10, %ymm1, %ymm14
	vmovdqu	%ymm7, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm5, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	vpbroadcastd	8(%rsi), %ymm1
	vpbroadcastd	12(%rsi), %ymm4
	vmovdqu	%ymm8, %ymm10
	vmovdqu	%ymm9, %ymm3
	vmovdqu	(%rcx), %ymm6
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm9
	vmovdqu	96(%rcx), %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm4, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm13
	vpmulhw	%ymm10, %ymm4, %ymm12
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm4, %ymm10
	vpmullw	%ymm14, %ymm1, %ymm3
	vpmulhw	%ymm14, %ymm4, %ymm14
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm13, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm12, %ymm5, %ymm4
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm6, %ymm12
	vpaddw	%ymm6, %ymm8, %ymm13
	vpsubw	%ymm14, %ymm7, %ymm6
	vpaddw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm10, %ymm9, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm12, %ymm11, %ymm10
	vpsubw	%ymm11, %ymm13, %ymm12
	vpaddw	%ymm4, %ymm1, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpaddw	%ymm8, %ymm2, %ymm8
	vpsubw	%ymm2, %ymm9, %ymm2
	vpaddw	%ymm6, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm7, %ymm7
	vmovdqu	16(%rsi), %ymm3
	vmovdqu	48(%rsi), %ymm6
	vperm2i128	$32, %ymm10, %ymm12, %ymm11
	vperm2i128	$49, %ymm10, %ymm12, %ymm9
	vperm2i128	$32, %ymm4, %ymm5, %ymm1
	vperm2i128	$49, %ymm4, %ymm5, %ymm12
	vperm2i128	$32, %ymm8, %ymm2, %ymm5
	vperm2i128	$49, %ymm8, %ymm2, %ymm8
	vperm2i128	$32, %ymm13, %ymm7, %ymm2
	vperm2i128	$49, %ymm13, %ymm7, %ymm13
	vpmullw	%ymm5, %ymm3, %ymm4
	vpmulhw	%ymm5, %ymm6, %ymm10
	vpmullw	%ymm8, %ymm3, %ymm14
	vpmulhw	%ymm8, %ymm6, %ymm8
	vpmullw	%ymm2, %ymm3, %ymm5
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm8, %ymm9, %ymm7
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	80(%rsi), %ymm1
	vmovdqu	112(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	144(%rsi), %ymm3
	vmovdqu	176(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$170, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$170, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$170, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$170, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$170, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	208(%rsi), %ymm5
	vmovdqu	240(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$170, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$170, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$170, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	272(%rsi), %ymm9
	vmovdqu	304(%rsi), %ymm13
	vmovdqu	336(%rsi), %ymm11
	vmovdqu	368(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm1, %ymm1
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	%ymm8, 128(%rcx)
	vmovdqu	%ymm5, 160(%rcx)
	vmovdqu	%ymm7, 192(%rcx)
	vmovdqu	%ymm1, 224(%rcx)
	vpbroadcastd	400(%rsi), %ymm5
	vpbroadcastd	404(%rsi), %ymm8
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	416(%rcx), %ymm2
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm9
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm4
	vpmullw	%ymm1, %ymm5, %ymm14
	vpmulhw	%ymm1, %ymm8, %ymm12
	vpmullw	%ymm2, %ymm5, %ymm1
	vpmulhw	%ymm2, %ymm8, %ymm11
	vpmullw	%ymm10, %ymm5, %ymm2
	vpmulhw	%ymm10, %ymm8, %ymm13
	vpmullw	%ymm9, %ymm5, %ymm10
	vpmulhw	%ymm9, %ymm8, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm8
	vpmulhw	%ymm0, %ymm1, %ymm9
	vpmulhw	%ymm0, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm10, %ymm2
	vpsubw	%ymm11, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm11, %ymm11
	vpsubw	%ymm12, %ymm3, %ymm7
	vpaddw	%ymm3, %ymm12, %ymm12
	vpsubw	%ymm5, %ymm4, %ymm3
	vpaddw	%ymm4, %ymm5, %ymm4
	vpsubw	%ymm13, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm13, %ymm6
	vpaddw	%ymm7, %ymm8, %ymm7
	vpsubw	%ymm8, %ymm12, %ymm12
	vpaddw	%ymm10, %ymm9, %ymm8
	vpsubw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm5, %ymm1, %ymm5
	vpsubw	%ymm1, %ymm6, %ymm6
	vpaddw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm2, %ymm4, %ymm2
	vmovdqu	408(%rsi), %ymm3
	vmovdqu	440(%rsi), %ymm4
	vperm2i128	$32, %ymm7, %ymm12, %ymm10
	vperm2i128	$49, %ymm7, %ymm12, %ymm11
	vperm2i128	$32, %ymm8, %ymm9, %ymm1
	vperm2i128	$49, %ymm8, %ymm9, %ymm12
	vperm2i128	$32, %ymm5, %ymm6, %ymm8
	vperm2i128	$49, %ymm5, %ymm6, %ymm5
	vperm2i128	$32, %ymm13, %ymm2, %ymm6
	vperm2i128	$49, %ymm13, %ymm2, %ymm13
	vpmullw	%ymm8, %ymm3, %ymm7
	vpmulhw	%ymm8, %ymm4, %ymm14
	vpmullw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm5, %ymm4, %ymm8
	vpmullw	%ymm6, %ymm3, %ymm5
	vpmulhw	%ymm6, %ymm4, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm6
	vpmulhw	%ymm13, %ymm4, %ymm13
	vpmulhw	%ymm0, %ymm7, %ymm3
	vpmulhw	%ymm0, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm8, %ymm11, %ymm7
	vpaddw	%ymm11, %ymm8, %ymm8
	vpsubw	%ymm14, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	472(%rsi), %ymm1
	vmovdqu	504(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	536(%rsi), %ymm3
	vmovdqu	568(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$170, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$170, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$170, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$170, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$170, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	600(%rsi), %ymm5
	vmovdqu	632(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$170, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$170, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$170, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	664(%rsi), %ymm9
	vmovdqu	696(%rsi), %ymm13
	vmovdqu	728(%rsi), %ymm11
	vmovdqu	760(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm0
	vpsubw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm3, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	%ymm8, 384(%rcx)
	vmovdqu	%ymm5, 416(%rcx)
	vmovdqu	%ymm7, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_invntt$1:
	leaq	glob_data + 1312(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rsi), %ymm12
	vmovdqu	64(%rsi), %ymm1
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm4
	vmovdqu	64(%rcx), %ymm15
	vmovdqu	96(%rcx), %ymm11
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vmovdqu	192(%rcx), %ymm13
	vmovdqu	224(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	128(%rsi), %ymm2
	vmovdqu	160(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$170, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$170, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm5, %ymm2, %ymm13
	vmovdqu	192(%rsi), %ymm2
	vmovdqu	224(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$170, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$170, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$170, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	384(%rsi), %ymm7
	vpbroadcastd	388(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm3, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm9, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	vmovdqu	392(%rsi), %ymm12
	vmovdqu	456(%rsi), %ymm1
	vmovdqu	424(%rsi), %ymm2
	vmovdqu	488(%rsi), %ymm5
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm4
	vmovdqu	320(%rcx), %ymm15
	vmovdqu	352(%rcx), %ymm11
	vmovdqu	384(%rcx), %ymm7
	vmovdqu	416(%rcx), %ymm8
	vmovdqu	448(%rcx), %ymm13
	vmovdqu	480(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	520(%rsi), %ymm2
	vmovdqu	552(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$170, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$170, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm5, %ymm2, %ymm13
	vmovdqu	584(%rsi), %ymm2
	vmovdqu	616(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$170, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$170, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$170, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	648(%rsi), %ymm4
	vmovdqu	680(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	712(%rsi), %ymm4
	vmovdqu	744(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	776(%rsi), %ymm7
	vpbroadcastd	780(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm10
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm8, 416(%rcx)
	vmovdqu	%ymm9, 448(%rcx)
	vmovdqu	%ymm7, 480(%rcx)
	vpbroadcastd	784(%rsi), %ymm1
	vpbroadcastd	788(%rsi), %ymm2
	vmovdqu	%ymm4, %ymm7
	vmovdqu	%ymm3, %ymm4
	vmovdqu	%ymm10, %ymm3
	vmovdqu	(%rcx), %ymm9
	vmovdqu	32(%rcx), %ymm13
	vmovdqu	64(%rcx), %ymm5
	vmovdqu	96(%rcx), %ymm8
	vpsubw	%ymm3, %ymm9, %ymm10
	vpsubw	%ymm4, %ymm13, %ymm11
	vpsubw	%ymm6, %ymm5, %ymm12
	vpaddw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm4, %ymm4
	vpmullw	%ymm10, %ymm1, %ymm13
	vpaddw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm11, %ymm1, %ymm6
	vpsubw	%ymm7, %ymm8, %ymm14
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm12, %ymm1, %ymm8
	vpmullw	%ymm14, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm14, %ymm2, %ymm14
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpsubw	%ymm13, %ymm10, %ymm10
	vpsubw	%ymm6, %ymm11, %ymm6
	vpsubw	%ymm8, %ymm12, %ymm11
	vpsubw	%ymm9, %ymm14, %ymm12
	vmovdqu	glob_data + 1152(%rip), %ymm8
	vmovdqu	glob_data + 1184(%rip), %ymm9
	vmovdqu	%ymm10, 256(%rcx)
	vmovdqu	%ymm6, 288(%rcx)
	vmovdqu	%ymm11, 320(%rcx)
	vmovdqu	%ymm12, 352(%rcx)
	vpmullw	%ymm3, %ymm8, %ymm6
	vpmulhw	%ymm3, %ymm9, %ymm3
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm4, %ymm8, %ymm6
	vpmulhw	%ymm4, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vpmullw	%ymm5, %ymm8, %ymm6
	vpmulhw	%ymm5, %ymm9, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm5, %ymm5
	vpmullw	%ymm7, %ymm8, %ymm6
	vpmulhw	%ymm7, %ymm9, %ymm7
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm7, %ymm6
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm5, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	384(%rcx), %ymm4
	vmovdqu	416(%rcx), %ymm5
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm10
	vmovdqu	128(%rcx), %ymm6
	vmovdqu	160(%rcx), %ymm9
	vmovdqu	192(%rcx), %ymm8
	vmovdqu	224(%rcx), %ymm11
	vpsubw	%ymm4, %ymm6, %ymm12
	vpsubw	%ymm5, %ymm9, %ymm13
	vpsubw	%ymm7, %ymm8, %ymm3
	vpaddw	%ymm6, %ymm4, %ymm4
	vpaddw	%ymm9, %ymm5, %ymm5
	vpmullw	%ymm12, %ymm1, %ymm6
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm13, %ymm1, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm3, %ymm1, %ymm11
	vpmullw	%ymm9, %ymm1, %ymm1
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm13, %ymm2, %ymm13
	vpmulhw	%ymm3, %ymm2, %ymm3
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm11, %ymm0, %ymm9
	vpmulhw	%ymm1, %ymm0, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm1
	vpsubw	%ymm8, %ymm13, %ymm6
	vpsubw	%ymm9, %ymm3, %ymm8
	vpsubw	%ymm11, %ymm2, %ymm9
	vmovdqu	glob_data + 1152(%rip), %ymm2
	vmovdqu	glob_data + 1184(%rip), %ymm3
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm6, 416(%rcx)
	vmovdqu	%ymm8, 448(%rcx)
	vmovdqu	%ymm9, 480(%rcx)
	vpmullw	%ymm4, %ymm2, %ymm1
	vpmulhw	%ymm4, %ymm3, %ymm4
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm4, %ymm1
	vpmullw	%ymm5, %ymm2, %ymm4
	vpmulhw	%ymm5, %ymm3, %ymm5
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm7, %ymm2, %ymm5
	vpmulhw	%ymm7, %ymm3, %ymm6
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm0
	vpsubw	%ymm0, %ymm3, %ymm0
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	%ymm5, 192(%rcx)
	vmovdqu	%ymm0, 224(%rcx)
	ret
L_poly_getnoise_eta1_4x$1:
	vmovdqu	(%rdi), %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 192(%rsp)
	vmovdqu	%ymm0, 352(%rsp)
	vmovdqu	%ymm0, 512(%rsp)
	movb	%r8b, 64(%rsp)
	incb	%r8b
	movb	%r8b, 224(%rsp)
	incb	%r8b
	movb	%r8b, 384(%rsp)
	incb	%r8b
	movb	%r8b, 544(%rsp)
	leaq	672(%rsp), %r8
	leaq	32(%rsp), %r9
	leaq	192(%rsp), %r10
	leaq	352(%rsp), %r11
	leaq	512(%rsp), %rbx
	call	L_shake256_absorb4x_33$1
L_poly_getnoise_eta1_4x$3:
	leaq	672(%rsp), %r8
	leaq	32(%rsp), %r9
	leaq	192(%rsp), %r10
	leaq	352(%rsp), %r11
	leaq	512(%rsp), %rbx
	leaq	-824(%rsp), %rsp
	call	L_KeccakF1600_StatePermute4x$1
L_poly_getnoise_eta1_4x$2:
	leaq	824(%rsp), %rsp
	vmovdqu	(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, (%r9)
	vmovhpd	%xmm1, (%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, (%r11)
	vmovhpd	%xmm0, (%rbx)
	vmovdqu	32(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 8(%r9)
	vmovhpd	%xmm1, 8(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 8(%r11)
	vmovhpd	%xmm0, 8(%rbx)
	vmovdqu	64(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 16(%r9)
	vmovhpd	%xmm1, 16(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 16(%r11)
	vmovhpd	%xmm0, 16(%rbx)
	vmovdqu	96(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 24(%r9)
	vmovhpd	%xmm1, 24(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 24(%r11)
	vmovhpd	%xmm0, 24(%rbx)
	vmovdqu	128(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 32(%r9)
	vmovhpd	%xmm1, 32(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 32(%r11)
	vmovhpd	%xmm0, 32(%rbx)
	vmovdqu	160(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 40(%r9)
	vmovhpd	%xmm1, 40(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 40(%r11)
	vmovhpd	%xmm0, 40(%rbx)
	vmovdqu	192(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 48(%r9)
	vmovhpd	%xmm1, 48(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 48(%r11)
	vmovhpd	%xmm0, 48(%rbx)
	vmovdqu	224(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 56(%r9)
	vmovhpd	%xmm1, 56(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 56(%r11)
	vmovhpd	%xmm0, 56(%rbx)
	vmovdqu	256(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 64(%r9)
	vmovhpd	%xmm1, 64(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 64(%r11)
	vmovhpd	%xmm0, 64(%rbx)
	vmovdqu	288(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 72(%r9)
	vmovhpd	%xmm1, 72(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 72(%r11)
	vmovhpd	%xmm0, 72(%rbx)
	vmovdqu	320(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 80(%r9)
	vmovhpd	%xmm1, 80(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 80(%r11)
	vmovhpd	%xmm0, 80(%rbx)
	vmovdqu	352(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 88(%r9)
	vmovhpd	%xmm1, 88(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 88(%r11)
	vmovhpd	%xmm0, 88(%rbx)
	vmovdqu	384(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 96(%r9)
	vmovhpd	%xmm1, 96(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 96(%r11)
	vmovhpd	%xmm0, 96(%rbx)
	vmovdqu	416(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 104(%r9)
	vmovhpd	%xmm1, 104(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 104(%r11)
	vmovhpd	%xmm0, 104(%rbx)
	vmovdqu	448(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 112(%r9)
	vmovhpd	%xmm1, 112(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 112(%r11)
	vmovhpd	%xmm0, 112(%rbx)
	vmovdqu	480(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 120(%r9)
	vmovhpd	%xmm1, 120(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 120(%r11)
	vmovhpd	%xmm0, 120(%rbx)
	vmovdqu	512(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 128(%r9)
	vmovhpd	%xmm1, 128(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 128(%r11)
	vmovhpd	%xmm0, 128(%rbx)
	leaq	32(%rsp), %r8
	movl	$1431655765, 1472(%rsp)
	movl	$858993459, 1476(%rsp)
	movl	$50529027, 1480(%rsp)
	movl	$252645135, 1484(%rsp)
	vpbroadcastd	1472(%rsp), %ymm0
	vpbroadcastd	1476(%rsp), %ymm1
	vpbroadcastd	1480(%rsp), %ymm2
	vpbroadcastd	1484(%rsp), %ymm3
	vmovdqu	(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rax)
	vmovdqu	%ymm7, 32(%rax)
	vmovdqu	%ymm6, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	32(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm7, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm4, 224(%rax)
	vmovdqu	64(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rax)
	vmovdqu	%ymm7, 288(%rax)
	vmovdqu	%ymm6, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vmovdqu	96(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rax)
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	%ymm0, 480(%rax)
	leaq	192(%rsp), %rax
	movl	$1431655765, 1484(%rsp)
	movl	$858993459, 1480(%rsp)
	movl	$50529027, 1476(%rsp)
	movl	$252645135, 1472(%rsp)
	vpbroadcastd	1484(%rsp), %ymm0
	vpbroadcastd	1480(%rsp), %ymm1
	vpbroadcastd	1476(%rsp), %ymm2
	vpbroadcastd	1472(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm7, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm7, 160(%rcx)
	vmovdqu	%ymm6, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm7, 288(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	leaq	352(%rsp), %rax
	movl	$1431655765, 1472(%rsp)
	movl	$858993459, 1476(%rsp)
	movl	$50529027, 1480(%rsp)
	movl	$252645135, 1484(%rsp)
	vpbroadcastd	1472(%rsp), %ymm0
	vpbroadcastd	1476(%rsp), %ymm1
	vpbroadcastd	1480(%rsp), %ymm2
	vpbroadcastd	1484(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rdx)
	vmovdqu	%ymm7, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm4, 96(%rdx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rdx)
	vmovdqu	%ymm7, 160(%rdx)
	vmovdqu	%ymm6, 192(%rdx)
	vmovdqu	%ymm4, 224(%rdx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rdx)
	vmovdqu	%ymm7, 288(%rdx)
	vmovdqu	%ymm6, 320(%rdx)
	vmovdqu	%ymm4, 352(%rdx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rdx)
	vmovdqu	%ymm3, 416(%rdx)
	vmovdqu	%ymm2, 448(%rdx)
	vmovdqu	%ymm0, 480(%rdx)
	leaq	512(%rsp), %rax
	movl	$1431655765, 1484(%rsp)
	movl	$858993459, 1480(%rsp)
	movl	$50529027, 1476(%rsp)
	movl	$252645135, 1472(%rsp)
	vpbroadcastd	1484(%rsp), %ymm0
	vpbroadcastd	1480(%rsp), %ymm1
	vpbroadcastd	1476(%rsp), %ymm2
	vpbroadcastd	1472(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rsi)
	vmovdqu	%ymm7, 32(%rsi)
	vmovdqu	%ymm6, 64(%rsi)
	vmovdqu	%ymm4, 96(%rsi)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rsi)
	vmovdqu	%ymm7, 160(%rsi)
	vmovdqu	%ymm6, 192(%rsi)
	vmovdqu	%ymm4, 224(%rsi)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rsi)
	vmovdqu	%ymm7, 288(%rsi)
	vmovdqu	%ymm6, 320(%rsi)
	vmovdqu	%ymm4, 352(%rsi)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rsi)
	vmovdqu	%ymm3, 416(%rsi)
	vmovdqu	%ymm2, 448(%rsi)
	vmovdqu	%ymm0, 480(%rsi)
	ret
L_poly_frommsg_1$1:
	leaq	glob_data + 1088(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	vbroadcasti128	glob_data + 2928(%rip), %ymm1
	vbroadcasti128	glob_data + 2912(%rip), %ymm2
	vmovdqu	(%rax), %ymm3
	vpshufd	$0, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm6, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vpshufd	$85, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 64(%rcx)
	vmovdqu	%ymm8, 96(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vpshufd	$170, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm6, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vpshufd	$255, %ymm3, %ymm3
	vpsllvd	%ymm1, %ymm3, %ymm1
	vpshufb	%ymm2, %ymm1, %ymm1
	vpsllw	$12, %ymm1, %ymm2
	vpsllw	$8, %ymm1, %ymm3
	vpsllw	$4, %ymm1, %ymm4
	vpsraw	$15, %ymm2, %ymm2
	vpsraw	$15, %ymm3, %ymm3
	vpsraw	$15, %ymm4, %ymm4
	vpsraw	$15, %ymm1, %ymm1
	vpand	%ymm0, %ymm2, %ymm2
	vpand	%ymm0, %ymm3, %ymm3
	vpand	%ymm0, %ymm4, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpunpcklqdq	%ymm3, %ymm2, %ymm1
	vpunpckhqdq	%ymm3, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm4, %ymm3
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm3, %ymm1, %ymm4
	vperm2i128	$49, %ymm3, %ymm1, %ymm1
	vperm2i128	$32, %ymm0, %ymm2, %ymm3
	vperm2i128	$49, %ymm0, %ymm2, %ymm0
	vmovdqu	%ymm4, 192(%rcx)
	vmovdqu	%ymm3, 224(%rcx)
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_frommont$1:
	leaq	glob_data + 1280(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	leaq	glob_data + 1248(%rip), %rcx
	vmovdqu	(%rcx), %ymm1
	leaq	glob_data + 992(%rip), %rcx
	vmovdqu	(%rcx), %ymm2
	vmovdqu	(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, (%rax)
	vmovdqu	32(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 32(%rax)
	vmovdqu	64(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	96(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 96(%rax)
	vmovdqu	128(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 128(%rax)
	vmovdqu	160(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 160(%rax)
	vmovdqu	192(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 192(%rax)
	vmovdqu	224(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 224(%rax)
	vmovdqu	256(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 256(%rax)
	vmovdqu	288(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 288(%rax)
	vmovdqu	320(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 320(%rax)
	vmovdqu	352(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 352(%rax)
	vmovdqu	384(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 384(%rax)
	vmovdqu	416(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	448(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 448(%rax)
	vmovdqu	480(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm1, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	ret
L_poly_frombytes$1:
	leaq	glob_data + 1120(%rip), %r9
	vmovdqu	(%r9), %ymm0
	vmovdqu	(%rdi), %ymm1
	vmovdqu	32(%rdi), %ymm2
	vmovdqu	64(%rdi), %ymm3
	vmovdqu	96(%rdi), %ymm4
	vmovdqu	128(%rdi), %ymm5
	vmovdqu	160(%rdi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$170, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$170, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$170, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$170, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$170, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm2
	vmovdqu	%ymm3, (%r8)
	vmovdqu	%ymm6, 32(%r8)
	vmovdqu	%ymm4, 64(%r8)
	vmovdqu	%ymm7, 96(%r8)
	vmovdqu	%ymm1, 128(%r8)
	vmovdqu	%ymm8, 160(%r8)
	vmovdqu	%ymm5, 192(%r8)
	vmovdqu	%ymm2, 224(%r8)
	vmovdqu	192(%rdi), %ymm1
	vmovdqu	224(%rdi), %ymm2
	vmovdqu	256(%rdi), %ymm3
	vmovdqu	288(%rdi), %ymm4
	vmovdqu	320(%rdi), %ymm5
	vmovdqu	352(%rdi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$170, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$170, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$170, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$170, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$170, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm3, 256(%r8)
	vmovdqu	%ymm6, 288(%r8)
	vmovdqu	%ymm4, 320(%r8)
	vmovdqu	%ymm7, 352(%r8)
	vmovdqu	%ymm1, 384(%r8)
	vmovdqu	%ymm8, 416(%r8)
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	%ymm0, 480(%r8)
	ret
L_poly_decompress$1:
	leaq	glob_data + 1280(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	leaq	glob_data + 64(%rip), %rdi
	vmovdqu	(%rdi), %ymm1
	vpbroadcastd	glob_data + 3172(%rip), %ymm2
	vpbroadcastd	glob_data + 3168(%rip), %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	movq	(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, (%rcx)
	movq	8(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rcx)
	movq	16(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 64(%rcx)
	movq	24(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 96(%rcx)
	movq	32(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 128(%rcx)
	movq	40(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 160(%rcx)
	movq	48(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 192(%rcx)
	movq	56(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 224(%rcx)
	movq	64(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 256(%rcx)
	movq	72(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 288(%rcx)
	movq	80(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 320(%rcx)
	movq	88(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 352(%rcx)
	movq	96(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 384(%rcx)
	movq	104(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 416(%rcx)
	movq	112(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 448(%rcx)
	movq	120(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpand	%ymm2, %ymm1, %ymm1
	vpmullw	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_compress_1$1:
	call	L_poly_csubq$1
L_poly_compress_1$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	ret
L_poly_compress$1:
	call	L_poly_csubq$1
L_poly_compress$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	ret
L_poly_basemul$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1248(%rip), %ymm1
	vmovdqu	glob_data + 2384(%rip), %ymm2
	vmovdqu	glob_data + 2416(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vmovdqu	32(%rsi), %ymm5
	vmovdqu	(%rdi), %ymm6
	vmovdqu	32(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	64(%rdi), %ymm6
	vmovdqu	96(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 64(%rcx)
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	glob_data + 2448(%rip), %ymm2
	vmovdqu	glob_data + 2480(%rip), %ymm3
	vmovdqu	128(%rsi), %ymm4
	vmovdqu	160(%rsi), %ymm5
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	160(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	192(%rsi), %ymm4
	vmovdqu	224(%rsi), %ymm5
	vmovdqu	192(%rdi), %ymm6
	vmovdqu	224(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 192(%rcx)
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	glob_data + 2776(%rip), %ymm2
	vmovdqu	glob_data + 2808(%rip), %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vmovdqu	256(%rdi), %ymm6
	vmovdqu	288(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm5
	vmovdqu	320(%rdi), %ymm6
	vmovdqu	352(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 320(%rcx)
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	glob_data + 2840(%rip), %ymm2
	vmovdqu	glob_data + 2872(%rip), %ymm3
	vmovdqu	384(%rsi), %ymm4
	vmovdqu	416(%rsi), %ymm5
	vmovdqu	384(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vmovdqu	448(%rsi), %ymm4
	vmovdqu	480(%rsi), %ymm5
	vmovdqu	448(%rdi), %ymm6
	vmovdqu	480(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm3, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_csubq$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	32(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rcx)
	vmovdqu	64(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rcx)
	vmovdqu	96(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rcx)
	vmovdqu	128(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	160(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	192(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	224(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rcx)
	vmovdqu	256(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rcx)
	vmovdqu	288(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rcx)
	vmovdqu	320(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rcx)
	vmovdqu	352(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	384(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	416(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	448(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	480(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_add2$1:
	vmovdqu	(%rcx), %ymm0
	vmovdqu	(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rcx), %ymm0
	vmovdqu	32(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rcx), %ymm0
	vmovdqu	64(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rcx), %ymm0
	vmovdqu	96(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	128(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rcx), %ymm0
	vmovdqu	160(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rcx), %ymm0
	vmovdqu	192(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rcx), %ymm0
	vmovdqu	224(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rcx), %ymm0
	vmovdqu	256(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rcx), %ymm0
	vmovdqu	288(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rcx), %ymm0
	vmovdqu	320(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rcx), %ymm0
	vmovdqu	352(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	384(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rcx), %ymm0
	vmovdqu	416(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rcx), %ymm0
	vmovdqu	448(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rcx), %ymm0
	vmovdqu	480(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_shake256_absorb4x_33$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 544(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 576(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 608(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 640(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 672(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 704(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	movq	(%r9), %rbp
	xorq	%rbp, (%r8)
	movq	(%r10), %rbp
	xorq	%rbp, 8(%r8)
	movq	(%r11), %rbp
	xorq	%rbp, 16(%r8)
	movq	(%rbx), %rbp
	xorq	%rbp, 24(%r8)
	movq	8(%r9), %rbp
	xorq	%rbp, 32(%r8)
	movq	8(%r10), %rbp
	xorq	%rbp, 40(%r8)
	movq	8(%r11), %rbp
	xorq	%rbp, 48(%r8)
	movq	8(%rbx), %rbp
	xorq	%rbp, 56(%r8)
	movq	16(%r9), %rbp
	xorq	%rbp, 64(%r8)
	movq	16(%r10), %rbp
	xorq	%rbp, 72(%r8)
	movq	16(%r11), %rbp
	xorq	%rbp, 80(%r8)
	movq	16(%rbx), %rbp
	xorq	%rbp, 88(%r8)
	movq	24(%r9), %rbp
	xorq	%rbp, 96(%r8)
	movq	24(%r10), %rbp
	xorq	%rbp, 104(%r8)
	movq	24(%r11), %rbp
	xorq	%rbp, 112(%r8)
	movq	24(%rbx), %rbp
	xorq	%rbp, 120(%r8)
	movb	32(%r9), %r9b
	xorb	%r9b, 128(%r8)
	xorb	$31, 129(%r8)
	movb	32(%r10), %r9b
	xorb	%r9b, 136(%r8)
	xorb	$31, 137(%r8)
	movb	32(%r11), %r9b
	xorb	%r9b, 144(%r8)
	xorb	$31, 145(%r8)
	movb	32(%rbx), %r9b
	xorb	%r9b, 152(%r8)
	xorb	$31, 153(%r8)
	vmovdqu	glob_data + 960(%rip), %ymm0
	vmovdqu	512(%r8), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r8)
	ret
L_KeccakF1600_StatePermute4x$1:
	vmovdqu	640(%r8), %ymm0
	vpxor	480(%r8), %ymm0, %ymm0
	vpxor	320(%r8), %ymm0, %ymm0
	vpxor	160(%r8), %ymm0, %ymm0
	vpxor	(%r8), %ymm0, %ymm4
	vmovdqu	672(%r8), %ymm0
	vpxor	512(%r8), %ymm0, %ymm0
	vpxor	352(%r8), %ymm0, %ymm0
	vpxor	192(%r8), %ymm0, %ymm0
	vpxor	32(%r8), %ymm0, %ymm2
	vmovdqu	704(%r8), %ymm0
	vpxor	544(%r8), %ymm0, %ymm0
	vpxor	384(%r8), %ymm0, %ymm0
	vpxor	224(%r8), %ymm0, %ymm0
	vpxor	64(%r8), %ymm0, %ymm3
	vmovdqu	736(%r8), %ymm0
	vpxor	576(%r8), %ymm0, %ymm0
	vpxor	416(%r8), %ymm0, %ymm0
	vpxor	256(%r8), %ymm0, %ymm0
	vpxor	96(%r8), %ymm0, %ymm5
	vmovdqu	768(%r8), %ymm0
	vpxor	608(%r8), %ymm0, %ymm0
	vpxor	448(%r8), %ymm0, %ymm0
	vpxor	288(%r8), %ymm0, %ymm0
	vpxor	128(%r8), %ymm0, %ymm6
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm2, %ymm0
	vpsrlq	$63, %ymm2, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm6, %ymm0
	vpsllq	$1, %ymm3, %ymm1
	vpsrlq	$63, %ymm3, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm5, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpor	%ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm2, %ymm2
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpsllq	$1, %ymm4, %ymm6
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 128(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 160(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 192(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 224(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 256(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 288(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 320(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 352(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 384(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 416(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 448(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 480(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 512(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 544(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 576(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 608(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 640(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 672(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 704(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 736(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 768(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 800(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 832(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 864(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	%ymm8, 576(%rbp)
	vpsllq	$21, %ymm8, %ymm9
	vpsrlq	$43, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vmovdqu	%ymm9, 768(%rbp)
	vpsllq	$14, %ymm9, %ymm10
	vpsrlq	$50, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 64(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 96(%rbp)
	vpsllq	$28, %ymm5, %ymm6
	vpsrlq	$36, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	288(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpsllq	$20, %ymm6, %ymm7
	vpsrlq	$44, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	320(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 320(%rbp)
	vpsllq	$3, %ymm7, %ymm8
	vpsrlq	$61, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 160(%r8)
	vmovdqu	512(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm8
	vmovdqu	%ymm8, 512(%rbp)
	vpsllq	$45, %ymm8, %ymm9
	vpsrlq	$19, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 192(%r8)
	vmovdqu	704(%rbp), %ymm9
	vpxor	%ymm2, %ymm9, %ymm9
	vmovdqu	%ymm9, 704(%rbp)
	vpsllq	$61, %ymm9, %ymm10
	vpsrlq	$3, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 256(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 288(%r8)
	vmovdqu	32(%rbp), %ymm5
	vpxor	%ymm1, %ymm5, %ymm5
	vmovdqu	%ymm5, 32(%rbp)
	vpsllq	$1, %ymm5, %ymm6
	vpsrlq	$63, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	224(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm6
	vmovdqu	%ymm6, 224(%rbp)
	vpsllq	$6, %ymm6, %ymm7
	vpsrlq	$58, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	416(%rbp), %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%rbp)
	vpsllq	$25, %ymm7, %ymm8
	vpsrlq	$39, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 320(%r8)
	vmovdqu	608(%rbp), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vmovdqu	%ymm8, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm8, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 352(%r8)
	vmovdqu	640(%rbp), %ymm9
	vpxor	%ymm0, %ymm9, %ymm9
	vmovdqu	%ymm9, 640(%rbp)
	vpsllq	$18, %ymm9, %ymm10
	vpsrlq	$46, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	128(%rbp), %ymm5
	vpxor	%ymm4, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vpsllq	$27, %ymm5, %ymm6
	vpsrlq	$37, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	160(%rbp), %ymm6
	vpxor	%ymm0, %ymm6, %ymm6
	vmovdqu	%ymm6, 160(%rbp)
	vpsllq	$36, %ymm6, %ymm7
	vpsrlq	$28, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	352(%rbp), %ymm7
	vpxor	%ymm1, %ymm7, %ymm7
	vmovdqu	%ymm7, 352(%rbp)
	vpsllq	$10, %ymm7, %ymm8
	vpsrlq	$54, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 480(%r8)
	vmovdqu	544(%rbp), %ymm8
	vpxor	%ymm2, %ymm8, %ymm8
	vmovdqu	%ymm8, 544(%rbp)
	vpsllq	$15, %ymm8, %ymm9
	vpsrlq	$49, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 512(%r8)
	vmovdqu	736(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm9, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 544(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 576(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 608(%r8)
	vmovdqu	64(%rbp), %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm5
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm5, %ymm2
	vmovdqu	256(%rbp), %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm5
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vmovdqu	448(%rbp), %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm5
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpandn	%ymm4, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm5
	vmovdqu	%ymm5, 640(%r8)
	vmovdqu	480(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm5
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm5, %ymm0
	vpandn	%ymm0, %ymm4, %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 672(%r8)
	vmovdqu	672(%rbp), %ymm5
	vpxor	%ymm1, %ymm5, %ymm1
	vpsllq	$2, %ymm1, %ymm5
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm5, %ymm1
	vpandn	%ymm1, %ymm0, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 704(%r8)
	vpandn	%ymm2, %ymm1, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	ret
L_shake128_squeezeblock$1:
	movq	%rcx, 8(%rsp)
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake128_squeezeblock$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rdx
	movq	%rdx, 24(%rcx)
	movq	32(%rax), %rdx
	movq	%rdx, 32(%rcx)
	movq	40(%rax), %rdx
	movq	%rdx, 40(%rcx)
	movq	48(%rax), %rdx
	movq	%rdx, 48(%rcx)
	movq	56(%rax), %rdx
	movq	%rdx, 56(%rcx)
	movq	64(%rax), %rdx
	movq	%rdx, 64(%rcx)
	movq	72(%rax), %rdx
	movq	%rdx, 72(%rcx)
	movq	80(%rax), %rdx
	movq	%rdx, 80(%rcx)
	movq	88(%rax), %rdx
	movq	%rdx, 88(%rcx)
	movq	96(%rax), %rdx
	movq	%rdx, 96(%rcx)
	movq	104(%rax), %rdx
	movq	%rdx, 104(%rcx)
	movq	112(%rax), %rdx
	movq	%rdx, 112(%rcx)
	movq	120(%rax), %rdx
	movq	%rdx, 120(%rcx)
	movq	128(%rax), %rdx
	movq	%rdx, 128(%rcx)
	movq	136(%rax), %rdx
	movq	%rdx, 136(%rcx)
	movq	144(%rax), %rdx
	movq	%rdx, 144(%rcx)
	movq	152(%rax), %rdx
	movq	%rdx, 152(%rcx)
	movq	160(%rax), %rax
	movq	%rax, 160(%rcx)
	ret
L_shake128_absorb34$1:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rcx), %rdx
	xorq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	xorq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	xorq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	xorq	%rdx, 24(%rax)
	movw	32(%rcx), %cx
	xorw	%cx, 32(%rax)
	xorb	$31, 34(%rax)
	xorb	$128, 167(%rax)
	ret
L_sha3_512_32$1:
	leaq	16(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 32(%rsp)
	movq	24(%rcx), %rcx
	xorq	%rcx, 40(%rsp)
	xorb	$6, 48(%rsp)
	xorb	$128, 87(%rsp)
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3_512_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 56(%rax)
	ret
L_sha3_512_64$1:
	leaq	16(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 32(%rsp)
	movq	24(%rcx), %rdx
	xorq	%rdx, 40(%rsp)
	movq	32(%rcx), %rdx
	xorq	%rdx, 48(%rsp)
	movq	40(%rcx), %rdx
	xorq	%rdx, 56(%rsp)
	movq	48(%rcx), %rdx
	xorq	%rdx, 64(%rsp)
	movq	56(%rcx), %rcx
	xorq	%rcx, 72(%rsp)
	xorb	$6, 80(%rsp)
	xorb	$128, 87(%rsp)
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3_512_64$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 56(%rax)
	ret
L_shake256_1120_32$1:
	movq	%rdx, 8(%rsp)
	leaq	40(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 40(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 48(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 56(%rsp)
	movq	24(%rcx), %rcx
	xorq	%rcx, 64(%rsp)
	movq	(%rax), %rcx
	xorq	%rcx, 72(%rsp)
	movq	8(%rax), %rcx
	xorq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	xorq	%rcx, 88(%rsp)
	movq	24(%rax), %rcx
	xorq	%rcx, 96(%rsp)
	movq	32(%rax), %rcx
	xorq	%rcx, 104(%rsp)
	movq	40(%rax), %rcx
	xorq	%rcx, 112(%rsp)
	movq	48(%rax), %rcx
	xorq	%rcx, 120(%rsp)
	movq	56(%rax), %rcx
	xorq	%rcx, 128(%rsp)
	movq	64(%rax), %rcx
	xorq	%rcx, 136(%rsp)
	movq	72(%rax), %rcx
	xorq	%rcx, 144(%rsp)
	movq	80(%rax), %rcx
	xorq	%rcx, 152(%rsp)
	movq	88(%rax), %rcx
	xorq	%rcx, 160(%rsp)
	movq	96(%rax), %rcx
	xorq	%rcx, 168(%rsp)
	movq	%rax, 16(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$12:
	leaq	208(%rsp), %rsp
	movq	$136, %rax
	movq	$984, %rcx
	movq	16(%rsp), %rdx
	addq	$104, %rdx
	jmp 	L_shake256_1120_32$7
L_shake256_1120_32$8:
	movq	%rax, %rsi
	shrq	$3, %rsi
	xorq	%rdi, %rdi
	jmp 	L_shake256_1120_32$10
L_shake256_1120_32$11:
	movq	(%rdx,%rdi,8), %r8
	xorq	%r8, 40(%rsp,%rdi,8)
	incq	%rdi
L_shake256_1120_32$10:
	cmpq	%rsi, %rdi
	jb  	L_shake256_1120_32$11
	addq	%rax, %rdx
	subq	%rax, %rcx
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$9:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rax
L_shake256_1120_32$7:
	cmpq	%rax, %rcx
	jnb 	L_shake256_1120_32$8
	movb	$31, %sil
	movq	%rcx, %rdi
	shrq	$3, %rdi
	xorq	%r8, %r8
	jmp 	L_shake256_1120_32$5
L_shake256_1120_32$6:
	movq	(%rdx,%r8,8), %r9
	xorq	%r9, 40(%rsp,%r8,8)
	incq	%r8
L_shake256_1120_32$5:
	cmpq	%rdi, %r8
	jb  	L_shake256_1120_32$6
	shlq	$3, %r8
	jmp 	L_shake256_1120_32$3
L_shake256_1120_32$4:
	movb	(%rdx,%r8), %dil
	xorb	%dil, 40(%rsp,%r8)
	incq	%r8
L_shake256_1120_32$3:
	cmpq	%rcx, %r8
	jb  	L_shake256_1120_32$4
	xorb	%sil, 40(%rsp,%r8)
	addq	$-1, %rax
	xorb	$128, 40(%rsp,%rax)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	ret
L_isha3_256$1:
	movq	%rcx, 8(%rsp)
	leaq	40(%rsp), %rcx
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movq	$0, 128(%rcx)
	movq	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, 152(%rcx)
	movq	$0, 160(%rcx)
	movq	$0, 168(%rcx)
	movq	$0, 176(%rcx)
	movq	$0, 184(%rcx)
	movq	$0, 192(%rcx)
	movq	$136, %rcx
	jmp 	L_isha3_256$7
L_isha3_256$8:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	xorq	%rsi, %rsi
	jmp 	L_isha3_256$10
L_isha3_256$11:
	movq	(%r8,%rsi,8), %rdi
	xorq	%rdi, 40(%rsp,%rsi,8)
	incq	%rsi
L_isha3_256$10:
	cmpq	%rdx, %rsi
	jb  	L_isha3_256$11
	addq	%rcx, %r8
	subq	%rcx, %rax
	movq	%r8, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_isha3_256$9:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %r8
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
L_isha3_256$7:
	cmpq	%rcx, %rax
	jnb 	L_isha3_256$8
	movb	$6, %dl
	movq	%rax, %rsi
	shrq	$3, %rsi
	xorq	%rdi, %rdi
	jmp 	L_isha3_256$5
L_isha3_256$6:
	movq	(%r8,%rdi,8), %r9
	xorq	%r9, 40(%rsp,%rdi,8)
	incq	%rdi
L_isha3_256$5:
	cmpq	%rsi, %rdi
	jb  	L_isha3_256$6
	shlq	$3, %rdi
	jmp 	L_isha3_256$3
L_isha3_256$4:
	movb	(%r8,%rdi), %sil
	xorb	%sil, 40(%rsp,%rdi)
	incq	%rdi
L_isha3_256$3:
	cmpq	%rax, %rdi
	jb  	L_isha3_256$4
	xorb	%dl, 40(%rsp,%rdi)
	addq	$-1, %rcx
	xorb	$128, 40(%rsp,%rcx)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_isha3_256$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	ret
L_keccakf1600$1:
	leaq	glob_data + 2968(%rip), %rcx
	leaq	16(%rsp), %rdx
	xorq	%rsi, %rsi
	jmp 	L_keccakf1600$2
L_keccakf1600$3:
	movq	(%rcx,%rsi,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rax), %r11
	movq	8(%rax), %r10
	movq	16(%rax), %rbx
	movq	24(%rax), %rbp
	movq	32(%rax), %r12
	xorq	40(%rax), %r11
	xorq	48(%rax), %r10
	xorq	56(%rax), %rbx
	xorq	64(%rax), %rbp
	xorq	72(%rax), %r12
	xorq	80(%rax), %r11
	xorq	88(%rax), %r10
	xorq	96(%rax), %rbx
	xorq	104(%rax), %rbp
	xorq	112(%rax), %r12
	xorq	120(%rax), %r11
	xorq	128(%rax), %r10
	xorq	136(%rax), %rbx
	xorq	144(%rax), %rbp
	xorq	152(%rax), %r12
	xorq	160(%rax), %r11
	xorq	168(%rax), %r10
	xorq	176(%rax), %rbx
	xorq	184(%rax), %rbp
	xorq	192(%rax), %r12
	movq	%r10, %rdi
	rolq	$1, %rdi
	xorq	%r12, %rdi
	movq	%rbx, %r8
	rolq	$1, %r8
	xorq	%r11, %r8
	movq	%rbp, %r9
	rolq	$1, %r9
	xorq	%r10, %r9
	movq	%r12, %r10
	rolq	$1, %r10
	xorq	%rbx, %r10
	rolq	$1, %r11
	xorq	%rbp, %r11
	movq	(%rax), %rbx
	xorq	%rdi, %rbx
	movq	48(%rax), %rbp
	xorq	%r8, %rbp
	rolq	$44, %rbp
	movq	96(%rax), %r12
	xorq	%r9, %r12
	rolq	$43, %r12
	movq	144(%rax), %r13
	xorq	%r10, %r13
	rolq	$21, %r13
	movq	192(%rax), %r14
	xorq	%r11, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 32(%rdx)
	movq	24(%rax), %rbx
	xorq	%r10, %rbx
	rolq	$28, %rbx
	movq	72(%rax), %rbp
	xorq	%r11, %rbp
	rolq	$20, %rbp
	movq	80(%rax), %r12
	xorq	%rdi, %r12
	rolq	$3, %r12
	movq	128(%rax), %r13
	xorq	%r8, %r13
	rolq	$45, %r13
	movq	176(%rax), %r14
	xorq	%r9, %r14
	rolq	$61, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 72(%rdx)
	movq	8(%rax), %rbx
	xorq	%r8, %rbx
	rolq	$1, %rbx
	movq	56(%rax), %rbp
	xorq	%r9, %rbp
	rolq	$6, %rbp
	movq	104(%rax), %r12
	xorq	%r10, %r12
	rolq	$25, %r12
	movq	152(%rax), %r13
	xorq	%r11, %r13
	rolq	$8, %r13
	movq	160(%rax), %r14
	xorq	%rdi, %r14
	rolq	$18, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 112(%rdx)
	movq	32(%rax), %rbx
	xorq	%r11, %rbx
	rolq	$27, %rbx
	movq	40(%rax), %rbp
	xorq	%rdi, %rbp
	rolq	$36, %rbp
	movq	88(%rax), %r12
	xorq	%r8, %r12
	rolq	$10, %r12
	movq	136(%rax), %r13
	xorq	%r9, %r13
	rolq	$15, %r13
	movq	184(%rax), %r14
	xorq	%r10, %r14
	rolq	$56, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 152(%rdx)
	movq	16(%rax), %rbx
	xorq	%r9, %rbx
	rolq	$62, %rbx
	movq	64(%rax), %r9
	xorq	%r10, %r9
	rolq	$55, %r9
	movq	112(%rax), %r10
	xorq	%r11, %r10
	rolq	$39, %r10
	movq	120(%rax), %r11
	xorq	%rdi, %r11
	rolq	$41, %r11
	movq	168(%rax), %rdi
	xorq	%r8, %rdi
	rolq	$2, %rdi
	andnq	%r10, %r9, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rdx)
	andnq	%r11, %r10, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rdx)
	andnq	%rdi, %r11, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rdx)
	andnq	%rbx, %rdi, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rdx)
	andnq	%r9, %rbx, %r8
	xorq	%rdi, %r8
	movq	%r8, 192(%rdx)
	movq	8(%rcx,%rsi,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdx), %r11
	movq	8(%rdx), %r10
	movq	16(%rdx), %rbx
	movq	24(%rdx), %rbp
	movq	32(%rdx), %r12
	xorq	40(%rdx), %r11
	xorq	48(%rdx), %r10
	xorq	56(%rdx), %rbx
	xorq	64(%rdx), %rbp
	xorq	72(%rdx), %r12
	xorq	80(%rdx), %r11
	xorq	88(%rdx), %r10
	xorq	96(%rdx), %rbx
	xorq	104(%rdx), %rbp
	xorq	112(%rdx), %r12
	xorq	120(%rdx), %r11
	xorq	128(%rdx), %r10
	xorq	136(%rdx), %rbx
	xorq	144(%rdx), %rbp
	xorq	152(%rdx), %r12
	xorq	160(%rdx), %r11
	xorq	168(%rdx), %r10
	xorq	176(%rdx), %rbx
	xorq	184(%rdx), %rbp
	xorq	192(%rdx), %r12
	movq	%r10, %rdi
	rolq	$1, %rdi
	xorq	%r12, %rdi
	movq	%rbx, %r8
	rolq	$1, %r8
	xorq	%r11, %r8
	movq	%rbp, %r9
	rolq	$1, %r9
	xorq	%r10, %r9
	movq	%r12, %r10
	rolq	$1, %r10
	xorq	%rbx, %r10
	rolq	$1, %r11
	xorq	%rbp, %r11
	movq	(%rdx), %rbx
	xorq	%rdi, %rbx
	movq	48(%rdx), %rbp
	xorq	%r8, %rbp
	rolq	$44, %rbp
	movq	96(%rdx), %r12
	xorq	%r9, %r12
	rolq	$43, %r12
	movq	144(%rdx), %r13
	xorq	%r10, %r13
	rolq	$21, %r13
	movq	192(%rdx), %r14
	xorq	%r11, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 32(%rax)
	movq	24(%rdx), %rbx
	xorq	%r10, %rbx
	rolq	$28, %rbx
	movq	72(%rdx), %rbp
	xorq	%r11, %rbp
	rolq	$20, %rbp
	movq	80(%rdx), %r12
	xorq	%rdi, %r12
	rolq	$3, %r12
	movq	128(%rdx), %r13
	xorq	%r8, %r13
	rolq	$45, %r13
	movq	176(%rdx), %r14
	xorq	%r9, %r14
	rolq	$61, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 72(%rax)
	movq	8(%rdx), %rbx
	xorq	%r8, %rbx
	rolq	$1, %rbx
	movq	56(%rdx), %rbp
	xorq	%r9, %rbp
	rolq	$6, %rbp
	movq	104(%rdx), %r12
	xorq	%r10, %r12
	rolq	$25, %r12
	movq	152(%rdx), %r13
	xorq	%r11, %r13
	rolq	$8, %r13
	movq	160(%rdx), %r14
	xorq	%rdi, %r14
	rolq	$18, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 112(%rax)
	movq	32(%rdx), %rbx
	xorq	%r11, %rbx
	rolq	$27, %rbx
	movq	40(%rdx), %rbp
	xorq	%rdi, %rbp
	rolq	$36, %rbp
	movq	88(%rdx), %r12
	xorq	%r8, %r12
	rolq	$10, %r12
	movq	136(%rdx), %r13
	xorq	%r9, %r13
	rolq	$15, %r13
	movq	184(%rdx), %r14
	xorq	%r10, %r14
	rolq	$56, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 152(%rax)
	movq	16(%rdx), %rbx
	xorq	%r9, %rbx
	rolq	$62, %rbx
	movq	64(%rdx), %r9
	xorq	%r10, %r9
	rolq	$55, %r9
	movq	112(%rdx), %r10
	xorq	%r11, %r10
	rolq	$39, %r10
	movq	120(%rdx), %r11
	xorq	%rdi, %r11
	rolq	$41, %r11
	movq	168(%rdx), %rdi
	xorq	%r8, %rdi
	rolq	$2, %rdi
	andnq	%r10, %r9, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rax)
	andnq	%r11, %r10, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rax)
	andnq	%rdi, %r11, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rax)
	andnq	%rbx, %rdi, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rax)
	andnq	%r9, %rbx, %r8
	xorq	%rdi, %r8
	movq	%r8, 192(%rax)
	addq	$2, %rsi
L_keccakf1600$2:
	cmpq	$23, %rsi
	jb  	L_keccakf1600$3
	ret
L_nttunpack$1:
	vmovdqu	(%rax), %ymm1
	vmovdqu	32(%rax), %ymm3
	vmovdqu	64(%rax), %ymm4
	vmovdqu	96(%rax), %ymm5
	vmovdqu	128(%rax), %ymm2
	vmovdqu	160(%rax), %ymm6
	vmovdqu	192(%rax), %ymm7
	vmovdqu	224(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$170, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$170, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$170, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$170, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$170, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$170, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$170, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$170, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, (%rax)
	vmovdqu	%ymm4, 32(%rax)
	vmovdqu	%ymm8, 64(%rax)
	vmovdqu	%ymm0, 96(%rax)
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm1, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm1
	vmovdqu	288(%rax), %ymm3
	vmovdqu	320(%rax), %ymm4
	vmovdqu	352(%rax), %ymm5
	vmovdqu	384(%rax), %ymm2
	vmovdqu	416(%rax), %ymm6
	vmovdqu	448(%rax), %ymm7
	vmovdqu	480(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$170, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$170, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$170, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$170, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$170, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$170, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$170, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$170, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, 256(%rax)
	vmovdqu	%ymm4, 288(%rax)
	vmovdqu	%ymm8, 320(%rax)
	vmovdqu	%ymm0, 352(%rax)
	vmovdqu	%ymm5, 384(%rax)
	vmovdqu	%ymm1, 416(%rax)
	vmovdqu	%ymm6, 448(%rax)
	vmovdqu	%ymm2, 480(%rax)
	ret
	.data
	.p2align	5
_glob_data:
glob_data:
G$pvc_shufbidx_s:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	8
G$pvd_shufbdidx_s:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
G$pd_jshufbidx:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
G$pc_permidx_s:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
G$KeccakF1600RoundConstants:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$rho8:
	.byte	7
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	15
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	23
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	31
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
G$rho56:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	0
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	8
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	16
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	24
G$shake_sep:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$jdmontx16:
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
G$hhqx16:
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
G$hqx16_m1:
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
G$hqx16_p1:
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
G$maskx16:
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
G$jflox16:
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
G$jfhix16:
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
G$jvx16:
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
G$jqinvx16:
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
G$jqx16:
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
G$jzetas_inv_exp:
	.byte	-91
	.byte	-91
	.byte	-76
	.byte	-31
	.byte	34
	.byte	79
	.byte	52
	.byte	93
	.byte	35
	.byte	68
	.byte	86
	.byte	-91
	.byte	-25
	.byte	78
	.byte	-6
	.byte	83
	.byte	123
	.byte	-57
	.byte	37
	.byte	43
	.byte	55
	.byte	58
	.byte	-120
	.byte	24
	.byte	-127
	.byte	126
	.byte	5
	.byte	-60
	.byte	-97
	.byte	-9
	.byte	-72
	.byte	-80
	.byte	-91
	.byte	6
	.byte	-76
	.byte	5
	.byte	34
	.byte	9
	.byte	52
	.byte	1
	.byte	35
	.byte	11
	.byte	86
	.byte	3
	.byte	-25
	.byte	9
	.byte	-6
	.byte	5
	.byte	123
	.byte	6
	.byte	37
	.byte	12
	.byte	55
	.byte	5
	.byte	-120
	.byte	0
	.byte	-127
	.byte	11
	.byte	5
	.byte	5
	.byte	-97
	.byte	10
	.byte	-72
	.byte	8
	.byte	15
	.byte	68
	.byte	67
	.byte	-94
	.byte	29
	.byte	-112
	.byte	108
	.byte	-124
	.byte	102
	.byte	-43
	.byte	-26
	.byte	87
	.byte	-2
	.byte	30
	.byte	-95
	.byte	-41
	.byte	-93
	.byte	-67
	.byte	106
	.byte	-95
	.byte	63
	.byte	-43
	.byte	-65
	.byte	81
	.byte	-71
	.byte	-96
	.byte	-41
	.byte	28
	.byte	-90
	.byte	-100
	.byte	-48
	.byte	121
	.byte	15
	.byte	7
	.byte	67
	.byte	9
	.byte	29
	.byte	9
	.byte	108
	.byte	0
	.byte	102
	.byte	3
	.byte	-26
	.byte	5
	.byte	-2
	.byte	4
	.byte	-95
	.byte	4
	.byte	-93
	.byte	4
	.byte	106
	.byte	3
	.byte	63
	.byte	8
	.byte	-65
	.byte	4
	.byte	-71
	.byte	5
	.byte	-41
	.byte	7
	.byte	-90
	.byte	10
	.byte	-48
	.byte	9
	.byte	-5
	.byte	69
	.byte	92
	.byte	94
	.byte	41
	.byte	-17
	.byte	65
	.byte	-66
	.byte	-43
	.byte	49
	.byte	-28
	.byte	113
	.byte	64
	.byte	-55
	.byte	-114
	.byte	-53
	.byte	-73
	.byte	-72
	.byte	-9
	.byte	117
	.byte	-115
	.byte	-36
	.byte	-106
	.byte	110
	.byte	-61
	.byte	34
	.byte	15
	.byte	62
	.byte	90
	.byte	110
	.byte	85
	.byte	-78
	.byte	-5
	.byte	4
	.byte	92
	.byte	10
	.byte	41
	.byte	4
	.byte	65
	.byte	11
	.byte	-43
	.byte	2
	.byte	-28
	.byte	5
	.byte	64
	.byte	9
	.byte	-114
	.byte	1
	.byte	-73
	.byte	3
	.byte	-9
	.byte	0
	.byte	-115
	.byte	5
	.byte	-106
	.byte	12
	.byte	-61
	.byte	9
	.byte	15
	.byte	1
	.byte	90
	.byte	0
	.byte	85
	.byte	3
	.byte	35
	.byte	63
	.byte	35
	.byte	63
	.byte	-51
	.byte	-105
	.byte	-51
	.byte	-105
	.byte	102
	.byte	-35
	.byte	102
	.byte	-35
	.byte	6
	.byte	-72
	.byte	6
	.byte	-72
	.byte	-95
	.byte	-35
	.byte	-95
	.byte	-35
	.byte	37
	.byte	41
	.byte	37
	.byte	41
	.byte	8
	.byte	-95
	.byte	8
	.byte	-95
	.byte	-87
	.byte	109
	.byte	-87
	.byte	109
	.byte	35
	.byte	6
	.byte	35
	.byte	6
	.byte	-51
	.byte	0
	.byte	-51
	.byte	0
	.byte	102
	.byte	11
	.byte	102
	.byte	11
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	-95
	.byte	10
	.byte	-95
	.byte	10
	.byte	37
	.byte	10
	.byte	37
	.byte	10
	.byte	8
	.byte	9
	.byte	8
	.byte	9
	.byte	-87
	.byte	2
	.byte	-87
	.byte	2
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-19
	.byte	-4
	.byte	-19
	.byte	-4
	.byte	-19
	.byte	5
	.byte	-19
	.byte	5
	.byte	75
	.byte	49
	.byte	-72
	.byte	-77
	.byte	-92
	.byte	-73
	.byte	125
	.byte	-79
	.byte	-94
	.byte	-50
	.byte	54
	.byte	73
	.byte	-109
	.byte	-119
	.byte	-9
	.byte	126
	.byte	-116
	.byte	-22
	.byte	-52
	.byte	-91
	.byte	-21
	.byte	17
	.byte	-74
	.byte	-52
	.byte	-104
	.byte	84
	.byte	-102
	.byte	55
	.byte	-74
	.byte	-53
	.byte	83
	.byte	-44
	.byte	75
	.byte	0
	.byte	-72
	.byte	11
	.byte	-92
	.byte	11
	.byte	125
	.byte	10
	.byte	-94
	.byte	8
	.byte	54
	.byte	7
	.byte	-109
	.byte	0
	.byte	-9
	.byte	9
	.byte	-116
	.byte	6
	.byte	-52
	.byte	1
	.byte	-21
	.byte	0
	.byte	-74
	.byte	10
	.byte	-104
	.byte	12
	.byte	-102
	.byte	9
	.byte	-74
	.byte	9
	.byte	83
	.byte	11
	.byte	-100
	.byte	20
	.byte	95
	.byte	56
	.byte	104
	.byte	-69
	.byte	54
	.byte	72
	.byte	90
	.byte	112
	.byte	9
	.byte	-114
	.byte	122
	.byte	-42
	.byte	-10
	.byte	-126
	.byte	-37
	.byte	-25
	.byte	35
	.byte	58
	.byte	80
	.byte	-4
	.byte	91
	.byte	108
	.byte	-13
	.byte	-81
	.byte	-29
	.byte	125
	.byte	-42
	.byte	44
	.byte	79
	.byte	1
	.byte	-100
	.byte	0
	.byte	95
	.byte	11
	.byte	104
	.byte	3
	.byte	54
	.byte	6
	.byte	90
	.byte	2
	.byte	9
	.byte	3
	.byte	122
	.byte	8
	.byte	-10
	.byte	0
	.byte	-37
	.byte	6
	.byte	35
	.byte	1
	.byte	80
	.byte	12
	.byte	91
	.byte	11
	.byte	-13
	.byte	6
	.byte	-29
	.byte	4
	.byte	-42
	.byte	10
	.byte	79
	.byte	4
	.byte	68
	.byte	-109
	.byte	-125
	.byte	101
	.byte	-118
	.byte	2
	.byte	82
	.byte	-36
	.byte	-102
	.byte	48
	.byte	64
	.byte	-63
	.byte	8
	.byte	-104
	.byte	-3
	.byte	49
	.byte	8
	.byte	-98
	.byte	26
	.byte	-81
	.byte	46
	.byte	-79
	.byte	13
	.byte	92
	.byte	10
	.byte	-121
	.byte	40
	.byte	-6
	.byte	117
	.byte	25
	.byte	58
	.byte	22
	.byte	68
	.byte	7
	.byte	-125
	.byte	12
	.byte	-118
	.byte	4
	.byte	82
	.byte	6
	.byte	-102
	.byte	2
	.byte	64
	.byte	1
	.byte	8
	.byte	0
	.byte	-3
	.byte	10
	.byte	8
	.byte	6
	.byte	26
	.byte	1
	.byte	46
	.byte	7
	.byte	13
	.byte	5
	.byte	10
	.byte	9
	.byte	40
	.byte	2
	.byte	117
	.byte	10
	.byte	58
	.byte	8
	.byte	-126
	.byte	102
	.byte	-126
	.byte	102
	.byte	66
	.byte	-84
	.byte	66
	.byte	-84
	.byte	79
	.byte	4
	.byte	79
	.byte	4
	.byte	61
	.byte	-22
	.byte	61
	.byte	-22
	.byte	-126
	.byte	113
	.byte	-126
	.byte	113
	.byte	-7
	.byte	102
	.byte	-7
	.byte	102
	.byte	45
	.byte	-68
	.byte	45
	.byte	-68
	.byte	-60
	.byte	22
	.byte	-60
	.byte	22
	.byte	-126
	.byte	0
	.byte	-126
	.byte	0
	.byte	66
	.byte	6
	.byte	66
	.byte	6
	.byte	79
	.byte	7
	.byte	79
	.byte	7
	.byte	61
	.byte	3
	.byte	61
	.byte	3
	.byte	-126
	.byte	11
	.byte	-126
	.byte	11
	.byte	-7
	.byte	11
	.byte	-7
	.byte	11
	.byte	45
	.byte	5
	.byte	45
	.byte	5
	.byte	-60
	.byte	10
	.byte	-60
	.byte	10
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	103
	.byte	-58
	.byte	103
	.byte	-58
	.byte	103
	.byte	1
	.byte	103
	.byte	1
	.byte	-116
	.byte	-21
	.byte	-116
	.byte	-21
	.byte	-116
	.byte	7
	.byte	-116
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$jzetas_exp:
	.byte	11
	.byte	123
	.byte	11
	.byte	123
	.byte	11
	.byte	10
	.byte	11
	.byte	10
	.byte	-102
	.byte	57
	.byte	-102
	.byte	57
	.byte	-102
	.byte	11
	.byte	-102
	.byte	11
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	61
	.byte	-23
	.byte	61
	.byte	-23
	.byte	-44
	.byte	67
	.byte	-44
	.byte	67
	.byte	8
	.byte	-103
	.byte	8
	.byte	-103
	.byte	127
	.byte	-114
	.byte	127
	.byte	-114
	.byte	-60
	.byte	21
	.byte	-60
	.byte	21
	.byte	-78
	.byte	-5
	.byte	-78
	.byte	-5
	.byte	-65
	.byte	83
	.byte	-65
	.byte	83
	.byte	127
	.byte	-103
	.byte	127
	.byte	-103
	.byte	61
	.byte	2
	.byte	61
	.byte	2
	.byte	-44
	.byte	7
	.byte	-44
	.byte	7
	.byte	8
	.byte	1
	.byte	8
	.byte	1
	.byte	127
	.byte	1
	.byte	127
	.byte	1
	.byte	-60
	.byte	9
	.byte	-60
	.byte	9
	.byte	-78
	.byte	5
	.byte	-78
	.byte	5
	.byte	-65
	.byte	6
	.byte	-65
	.byte	6
	.byte	127
	.byte	12
	.byte	127
	.byte	12
	.byte	-57
	.byte	-23
	.byte	-116
	.byte	-26
	.byte	-39
	.byte	5
	.byte	-9
	.byte	120
	.byte	-12
	.byte	-93
	.byte	-45
	.byte	78
	.byte	-25
	.byte	80
	.byte	-7
	.byte	97
	.byte	4
	.byte	-50
	.byte	-7
	.byte	103
	.byte	-63
	.byte	62
	.byte	103
	.byte	-49
	.byte	-81
	.byte	35
	.byte	119
	.byte	-3
	.byte	126
	.byte	-102
	.byte	-67
	.byte	108
	.byte	-57
	.byte	4
	.byte	-116
	.byte	2
	.byte	-39
	.byte	10
	.byte	-9
	.byte	3
	.byte	-12
	.byte	7
	.byte	-45
	.byte	5
	.byte	-25
	.byte	11
	.byte	-7
	.byte	6
	.byte	4
	.byte	2
	.byte	-7
	.byte	12
	.byte	-63
	.byte	11
	.byte	103
	.byte	10
	.byte	-81
	.byte	6
	.byte	119
	.byte	8
	.byte	126
	.byte	0
	.byte	-67
	.byte	5
	.byte	-78
	.byte	-2
	.byte	43
	.byte	-45
	.byte	30
	.byte	-126
	.byte	14
	.byte	80
	.byte	-90
	.byte	-109
	.byte	-79
	.byte	3
	.byte	-34
	.byte	-59
	.byte	38
	.byte	24
	.byte	11
	.byte	125
	.byte	-121
	.byte	41
	.byte	-8
	.byte	113
	.byte	-89
	.byte	-113
	.byte	-53
	.byte	-73
	.byte	-103
	.byte	68
	.byte	-94
	.byte	-57
	.byte	101
	.byte	-21
	.byte	-78
	.byte	8
	.byte	43
	.byte	2
	.byte	30
	.byte	8
	.byte	14
	.byte	6
	.byte	-90
	.byte	1
	.byte	-79
	.byte	0
	.byte	-34
	.byte	11
	.byte	38
	.byte	6
	.byte	11
	.byte	12
	.byte	-121
	.byte	4
	.byte	-8
	.byte	9
	.byte	-89
	.byte	10
	.byte	-53
	.byte	6
	.byte	-103
	.byte	9
	.byte	-94
	.byte	1
	.byte	101
	.byte	12
	.byte	-82
	.byte	43
	.byte	75
	.byte	52
	.byte	103
	.byte	-56
	.byte	105
	.byte	-85
	.byte	75
	.byte	51
	.byte	22
	.byte	-18
	.byte	53
	.byte	90
	.byte	117
	.byte	21
	.byte	10
	.byte	-127
	.byte	110
	.byte	118
	.byte	-53
	.byte	-74
	.byte	95
	.byte	49
	.byte	-124
	.byte	78
	.byte	93
	.byte	72
	.byte	73
	.byte	76
	.byte	-74
	.byte	-50
	.byte	-82
	.byte	1
	.byte	75
	.byte	3
	.byte	103
	.byte	3
	.byte	105
	.byte	0
	.byte	75
	.byte	2
	.byte	22
	.byte	12
	.byte	53
	.byte	11
	.byte	117
	.byte	6
	.byte	10
	.byte	3
	.byte	110
	.byte	12
	.byte	-53
	.byte	5
	.byte	95
	.byte	4
	.byte	-124
	.byte	2
	.byte	93
	.byte	1
	.byte	73
	.byte	1
	.byte	-74
	.byte	12
	.byte	20
	.byte	3
	.byte	20
	.byte	3
	.byte	20
	.byte	7
	.byte	20
	.byte	7
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	88
	.byte	-110
	.byte	88
	.byte	-110
	.byte	-7
	.byte	94
	.byte	-7
	.byte	94
	.byte	-36
	.byte	-42
	.byte	-36
	.byte	-42
	.byte	96
	.byte	34
	.byte	96
	.byte	34
	.byte	-5
	.byte	71
	.byte	-5
	.byte	71
	.byte	-101
	.byte	34
	.byte	-101
	.byte	34
	.byte	52
	.byte	104
	.byte	52
	.byte	104
	.byte	-34
	.byte	-64
	.byte	-34
	.byte	-64
	.byte	88
	.byte	10
	.byte	88
	.byte	10
	.byte	-7
	.byte	3
	.byte	-7
	.byte	3
	.byte	-36
	.byte	2
	.byte	-36
	.byte	2
	.byte	96
	.byte	2
	.byte	96
	.byte	2
	.byte	-5
	.byte	6
	.byte	-5
	.byte	6
	.byte	-101
	.byte	1
	.byte	-101
	.byte	1
	.byte	52
	.byte	12
	.byte	52
	.byte	12
	.byte	-34
	.byte	6
	.byte	-34
	.byte	6
	.byte	-84
	.byte	77
	.byte	-89
	.byte	-111
	.byte	-14
	.byte	-63
	.byte	62
	.byte	-35
	.byte	107
	.byte	-111
	.byte	116
	.byte	35
	.byte	10
	.byte	-118
	.byte	74
	.byte	71
	.byte	115
	.byte	52
	.byte	-63
	.byte	54
	.byte	29
	.byte	-114
	.byte	44
	.byte	-50
	.byte	-64
	.byte	65
	.byte	-40
	.byte	16
	.byte	-91
	.byte	-95
	.byte	6
	.byte	-70
	.byte	-84
	.byte	9
	.byte	-89
	.byte	12
	.byte	-14
	.byte	11
	.byte	62
	.byte	3
	.byte	107
	.byte	0
	.byte	116
	.byte	7
	.byte	10
	.byte	12
	.byte	74
	.byte	9
	.byte	115
	.byte	11
	.byte	-63
	.byte	3
	.byte	29
	.byte	7
	.byte	44
	.byte	10
	.byte	-64
	.byte	1
	.byte	-40
	.byte	8
	.byte	-91
	.byte	2
	.byte	6
	.byte	8
	.byte	49
	.byte	-122
	.byte	91
	.byte	99
	.byte	42
	.byte	-29
	.byte	72
	.byte	95
	.byte	66
	.byte	-82
	.byte	-62
	.byte	42
	.byte	-105
	.byte	94
	.byte	94
	.byte	66
	.byte	96
	.byte	40
	.byte	3
	.byte	-31
	.byte	27
	.byte	-88
	.byte	-101
	.byte	42
	.byte	-107
	.byte	123
	.byte	-28
	.byte	111
	.byte	-66
	.byte	93
	.byte	-14
	.byte	-69
	.byte	49
	.byte	3
	.byte	91
	.byte	2
	.byte	42
	.byte	5
	.byte	72
	.byte	7
	.byte	66
	.byte	8
	.byte	-62
	.byte	4
	.byte	-105
	.byte	9
	.byte	94
	.byte	8
	.byte	96
	.byte	8
	.byte	3
	.byte	8
	.byte	27
	.byte	7
	.byte	-101
	.byte	9
	.byte	-107
	.byte	12
	.byte	-28
	.byte	3
	.byte	-66
	.byte	3
	.byte	-14
	.byte	5
	.byte	73
	.byte	79
	.byte	98
	.byte	8
	.byte	-4
	.byte	59
	.byte	-128
	.byte	-127
	.byte	121
	.byte	-25
	.byte	-54
	.byte	-59
	.byte	-36
	.byte	-44
	.byte	-122
	.byte	56
	.byte	7
	.byte	-84
	.byte	26
	.byte	-79
	.byte	-85
	.byte	90
	.byte	-34
	.byte	-69
	.byte	-51
	.byte	-94
	.byte	-33
	.byte	-80
	.byte	77
	.byte	30
	.byte	92
	.byte	90
	.byte	73
	.byte	4
	.byte	98
	.byte	2
	.byte	-4
	.byte	7
	.byte	-128
	.byte	1
	.byte	121
	.byte	12
	.byte	-54
	.byte	7
	.byte	-36
	.byte	0
	.byte	-122
	.byte	6
	.byte	7
	.byte	7
	.byte	26
	.byte	3
	.byte	-85
	.byte	9
	.byte	-34
	.byte	1
	.byte	-51
	.byte	11
	.byte	-33
	.byte	3
	.byte	77
	.byte	7
	.byte	92
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pfm_idx_s:
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	2
	.byte	3
	.byte	6
	.byte	7
	.byte	10
	.byte	11
	.byte	14
	.byte	15
G$pfm_shift_s:
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pvc_sllvdidx_s:
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pvc_shift2_s:
	.byte	1
	.byte	0
	.byte	0
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.byte	4
G$pvd_sllvdidx_s:
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$KECCAK1600_RC:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$pvd_mask_s:
	.byte	-8
	.byte	31
	.byte	-32
	.byte	127
G$pvd_q_s:
	.byte	4
	.byte	52
	.byte	1
	.byte	13
G$pd_shift_s:
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
G$pd_mask_s:
	.byte	15
	.byte	0
	.byte	-16
	.byte	0
G$pvc_mask_s:
	.byte	-1
	.byte	3
G$pvc_shift1_s:
	.byte	0
	.byte	16
G$pvc_off_s:
	.byte	15
	.byte	0
G$pc_shift2_s:
	.byte	1
	.byte	16
G$pc_mask_s:
	.byte	15
	.byte	0
G$pc_shift1_s:
	.byte	0
	.byte	2
G$cbd_jshufbidx:
	.byte	0
	.byte	1
	.byte	2
	.byte	-1
	.byte	3
	.byte	4
	.byte	5
	.byte	-1
	.byte	6
	.byte	7
	.byte	8
	.byte	-1
	.byte	9
	.byte	10
	.byte	11
	.byte	-1
	.byte	4
	.byte	5
	.byte	6
	.byte	-1
	.byte	7
	.byte	8
	.byte	9
	.byte	-1
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	13
	.byte	14
	.byte	15
	.byte	-1
G$mqinvx16:
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
G$jzetas_inv:
	.byte	-91
	.byte	6
	.byte	15
	.byte	7
	.byte	-76
	.byte	5
	.byte	67
	.byte	9
	.byte	34
	.byte	9
	.byte	29
	.byte	9
	.byte	52
	.byte	1
	.byte	108
	.byte	0
	.byte	35
	.byte	11
	.byte	102
	.byte	3
	.byte	86
	.byte	3
	.byte	-26
	.byte	5
	.byte	-25
	.byte	9
	.byte	-2
	.byte	4
	.byte	-6
	.byte	5
	.byte	-95
	.byte	4
	.byte	123
	.byte	6
	.byte	-93
	.byte	4
	.byte	37
	.byte	12
	.byte	106
	.byte	3
	.byte	55
	.byte	5
	.byte	63
	.byte	8
	.byte	-120
	.byte	0
	.byte	-65
	.byte	4
	.byte	-127
	.byte	11
	.byte	-71
	.byte	5
	.byte	5
	.byte	5
	.byte	-41
	.byte	7
	.byte	-97
	.byte	10
	.byte	-90
	.byte	10
	.byte	-72
	.byte	8
	.byte	-48
	.byte	9
	.byte	75
	.byte	0
	.byte	-100
	.byte	0
	.byte	-72
	.byte	11
	.byte	95
	.byte	11
	.byte	-92
	.byte	11
	.byte	104
	.byte	3
	.byte	125
	.byte	10
	.byte	54
	.byte	6
	.byte	-94
	.byte	8
	.byte	90
	.byte	2
	.byte	54
	.byte	7
	.byte	9
	.byte	3
	.byte	-109
	.byte	0
	.byte	122
	.byte	8
	.byte	-9
	.byte	9
	.byte	-10
	.byte	0
	.byte	-116
	.byte	6
	.byte	-37
	.byte	6
	.byte	-52
	.byte	1
	.byte	35
	.byte	1
	.byte	-21
	.byte	0
	.byte	80
	.byte	12
	.byte	-74
	.byte	10
	.byte	91
	.byte	11
	.byte	-104
	.byte	12
	.byte	-13
	.byte	6
	.byte	-102
	.byte	9
	.byte	-29
	.byte	4
	.byte	-74
	.byte	9
	.byte	-42
	.byte	10
	.byte	83
	.byte	11
	.byte	79
	.byte	4
	.byte	-5
	.byte	4
	.byte	92
	.byte	10
	.byte	41
	.byte	4
	.byte	65
	.byte	11
	.byte	-43
	.byte	2
	.byte	-28
	.byte	5
	.byte	64
	.byte	9
	.byte	-114
	.byte	1
	.byte	-73
	.byte	3
	.byte	-9
	.byte	0
	.byte	-115
	.byte	5
	.byte	-106
	.byte	12
	.byte	-61
	.byte	9
	.byte	15
	.byte	1
	.byte	90
	.byte	0
	.byte	85
	.byte	3
	.byte	68
	.byte	7
	.byte	-125
	.byte	12
	.byte	-118
	.byte	4
	.byte	82
	.byte	6
	.byte	-102
	.byte	2
	.byte	64
	.byte	1
	.byte	8
	.byte	0
	.byte	-3
	.byte	10
	.byte	8
	.byte	6
	.byte	26
	.byte	1
	.byte	46
	.byte	7
	.byte	13
	.byte	5
	.byte	10
	.byte	9
	.byte	40
	.byte	2
	.byte	117
	.byte	10
	.byte	58
	.byte	8
	.byte	35
	.byte	6
	.byte	-51
	.byte	0
	.byte	102
	.byte	11
	.byte	6
	.byte	6
	.byte	-95
	.byte	10
	.byte	37
	.byte	10
	.byte	8
	.byte	9
	.byte	-87
	.byte	2
	.byte	-126
	.byte	0
	.byte	66
	.byte	6
	.byte	79
	.byte	7
	.byte	61
	.byte	3
	.byte	-126
	.byte	11
	.byte	-7
	.byte	11
	.byte	45
	.byte	5
	.byte	-60
	.byte	10
	.byte	69
	.byte	7
	.byte	-62
	.byte	5
	.byte	-78
	.byte	4
	.byte	63
	.byte	9
	.byte	75
	.byte	12
	.byte	-40
	.byte	6
	.byte	-109
	.byte	10
	.byte	-85
	.byte	0
	.byte	55
	.byte	12
	.byte	-30
	.byte	11
	.byte	115
	.byte	7
	.byte	44
	.byte	7
	.byte	-19
	.byte	5
	.byte	103
	.byte	1
	.byte	-10
	.byte	2
	.byte	-95
	.byte	5
G$jzetas:
	.byte	-19
	.byte	8
	.byte	11
	.byte	10
	.byte	-102
	.byte	11
	.byte	20
	.byte	7
	.byte	-43
	.byte	5
	.byte	-114
	.byte	5
	.byte	31
	.byte	1
	.byte	-54
	.byte	0
	.byte	86
	.byte	12
	.byte	110
	.byte	2
	.byte	41
	.byte	6
	.byte	-74
	.byte	0
	.byte	-62
	.byte	3
	.byte	79
	.byte	8
	.byte	63
	.byte	7
	.byte	-68
	.byte	5
	.byte	61
	.byte	2
	.byte	-44
	.byte	7
	.byte	8
	.byte	1
	.byte	127
	.byte	1
	.byte	-60
	.byte	9
	.byte	-78
	.byte	5
	.byte	-65
	.byte	6
	.byte	127
	.byte	12
	.byte	88
	.byte	10
	.byte	-7
	.byte	3
	.byte	-36
	.byte	2
	.byte	96
	.byte	2
	.byte	-5
	.byte	6
	.byte	-101
	.byte	1
	.byte	52
	.byte	12
	.byte	-34
	.byte	6
	.byte	-57
	.byte	4
	.byte	-116
	.byte	2
	.byte	-39
	.byte	10
	.byte	-9
	.byte	3
	.byte	-12
	.byte	7
	.byte	-45
	.byte	5
	.byte	-25
	.byte	11
	.byte	-7
	.byte	6
	.byte	4
	.byte	2
	.byte	-7
	.byte	12
	.byte	-63
	.byte	11
	.byte	103
	.byte	10
	.byte	-81
	.byte	6
	.byte	119
	.byte	8
	.byte	126
	.byte	0
	.byte	-67
	.byte	5
	.byte	-84
	.byte	9
	.byte	-89
	.byte	12
	.byte	-14
	.byte	11
	.byte	62
	.byte	3
	.byte	107
	.byte	0
	.byte	116
	.byte	7
	.byte	10
	.byte	12
	.byte	74
	.byte	9
	.byte	115
	.byte	11
	.byte	-63
	.byte	3
	.byte	29
	.byte	7
	.byte	44
	.byte	10
	.byte	-64
	.byte	1
	.byte	-40
	.byte	8
	.byte	-91
	.byte	2
	.byte	6
	.byte	8
	.byte	-78
	.byte	8
	.byte	-82
	.byte	1
	.byte	43
	.byte	2
	.byte	75
	.byte	3
	.byte	30
	.byte	8
	.byte	103
	.byte	3
	.byte	14
	.byte	6
	.byte	105
	.byte	0
	.byte	-90
	.byte	1
	.byte	75
	.byte	2
	.byte	-79
	.byte	0
	.byte	22
	.byte	12
	.byte	-34
	.byte	11
	.byte	53
	.byte	11
	.byte	38
	.byte	6
	.byte	117
	.byte	6
	.byte	11
	.byte	12
	.byte	10
	.byte	3
	.byte	-121
	.byte	4
	.byte	110
	.byte	12
	.byte	-8
	.byte	9
	.byte	-53
	.byte	5
	.byte	-89
	.byte	10
	.byte	95
	.byte	4
	.byte	-53
	.byte	6
	.byte	-124
	.byte	2
	.byte	-103
	.byte	9
	.byte	93
	.byte	1
	.byte	-94
	.byte	1
	.byte	73
	.byte	1
	.byte	101
	.byte	12
	.byte	-74
	.byte	12
	.byte	49
	.byte	3
	.byte	73
	.byte	4
	.byte	91
	.byte	2
	.byte	98
	.byte	2
	.byte	42
	.byte	5
	.byte	-4
	.byte	7
	.byte	72
	.byte	7
	.byte	-128
	.byte	1
	.byte	66
	.byte	8
	.byte	121
	.byte	12
	.byte	-62
	.byte	4
	.byte	-54
	.byte	7
	.byte	-105
	.byte	9
	.byte	-36
	.byte	0
	.byte	94
	.byte	8
	.byte	-122
	.byte	6
	.byte	96
	.byte	8
	.byte	7
	.byte	7
	.byte	3
	.byte	8
	.byte	26
	.byte	3
	.byte	27
	.byte	7
	.byte	-85
	.byte	9
	.byte	-101
	.byte	9
	.byte	-34
	.byte	1
	.byte	-107
	.byte	12
	.byte	-51
	.byte	11
	.byte	-28
	.byte	3
	.byte	-33
	.byte	3
	.byte	-66
	.byte	3
	.byte	77
	.byte	7
	.byte	-14
	.byte	5
	.byte	92
	.byte	6
