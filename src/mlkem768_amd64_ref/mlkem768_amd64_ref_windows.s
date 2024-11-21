	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_mlkem_mlkem768_amd64_ref_dec
	.globl	jade_kem_mlkem_mlkem768_amd64_ref_dec
	.globl	_jade_kem_mlkem_mlkem768_amd64_ref_enc
	.globl	jade_kem_mlkem_mlkem768_amd64_ref_enc
	.globl	_jade_kem_mlkem_mlkem768_amd64_ref_keypair
	.globl	jade_kem_mlkem_mlkem768_amd64_ref_keypair
	.globl	_jade_kem_mlkem_mlkem768_amd64_ref_enc_derand
	.globl	jade_kem_mlkem_mlkem768_amd64_ref_enc_derand
	.globl	_jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand
	.globl	jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand
_jade_kem_mlkem_mlkem768_amd64_ref_dec:
jade_kem_mlkem_mlkem768_amd64_ref_dec:
	movq	%rsp, %rax
	leaq	-14584(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 14512(%rsp)
	movq	%rbp, 14520(%rsp)
	movq	%rsi, 14528(%rsp)
	movq	%rdi, 14536(%rsp)
	movq	%r12, 14544(%rsp)
	movq	%r13, 14552(%rsp)
	movq	%r14, 14560(%rsp)
	movq	%r15, 14568(%rsp)
	movq	%rax, 14576(%rsp)
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	leaq	88(%rsp), %rax
	xorq	%rcx, %rcx
	xorq	%r9, %r9
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$224
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$225:
	movzbl	(%rdx,%r9), %ebx
	incq	%r9
	movzbl	(%rdx,%r9), %ebp
	incq	%r9
	movzbl	(%rdx,%r9), %r10d
	incq	%r9
	movzbl	(%rdx,%r9), %r11d
	incq	%r9
	movzbl	(%rdx,%r9), %edi
	incq	%r9
	movl	%ebp, %esi
	shrl	$2, %ebp
	andl	$3, %esi
	shll	$8, %esi
	orl 	%esi, %ebx
	movl	%r10d, %esi
	shrl	$4, %r10d
	andl	$15, %esi
	shll	$6, %esi
	orl 	%esi, %ebp
	movl	%r11d, %esi
	shrl	$6, %r11d
	andl	$63, %esi
	shll	$4, %esi
	orl 	%esi, %r10d
	shll	$2, %edi
	orl 	%edi, %r11d
	imull	$3329, %ebx, %ebx
	addl	$512, %ebx
	shrl	$10, %ebx
	movw	%bx, 2464(%rsp,%rcx,2)
	incq	%rcx
	imull	$3329, %ebp, %ebx
	addl	$512, %ebx
	shrl	$10, %ebx
	movw	%bx, 2464(%rsp,%rcx,2)
	incq	%rcx
	imull	$3329, %r10d, %r10d
	addl	$512, %r10d
	shrl	$10, %r10d
	movw	%r10w, 2464(%rsp,%rcx,2)
	incq	%rcx
	imull	$3329, %r11d, %r10d
	addl	$512, %r10d
	shrl	$10, %r10d
	movw	%r10w, 2464(%rsp,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$224:
	cmpq	$765, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$225
	addq	$960, %rdx
	leaq	416(%rsp), %rcx
	call	L_poly_decompress$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$223:
	movq	%r8, %rdx
	leaq	4000(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$222:
	addq	$384, %rdx
	leaq	4512(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$221:
	addq	$384, %rdx
	leaq	5024(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$220:
	leaq	2464(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$219:
	leaq	2976(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$218:
	leaq	3488(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$217:
	leaq	928(%rsp), %r9
	leaq	4000(%rsp), %rcx
	leaq	2464(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$216:
	leaq	16(%rsp), %rsp
	leaq	1440(%rsp), %r9
	leaq	4512(%rsp), %rcx
	leaq	2976(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$215:
	leaq	16(%rsp), %rsp
	leaq	928(%rsp), %rcx
	leaq	1440(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$214:
	leaq	1440(%rsp), %r9
	leaq	5024(%rsp), %rcx
	leaq	3488(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$213:
	leaq	16(%rsp), %rsp
	leaq	928(%rsp), %rcx
	leaq	1440(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$212:
	leaq	928(%rsp), %rcx
	xorq	%rdx, %rdx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$210
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$211:
	movw	(%rcx,%rdx,2), %r9w
	movswl	%r9w, %r10d
	imull	$20159, %r10d, %r10d
	sarl	$26, %r10d
	imull	$3329, %r10d, %r10d
	subw	%r10w, %r9w
	movw	%r9w, (%rcx,%rdx,2)
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$210:
	cmpq	$256, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$211
	leaq	928(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$209:
	leaq	1440(%rsp), %rcx
	leaq	416(%rsp), %rdx
	leaq	928(%rsp), %r9
	call	L_poly_sub$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$208:
	leaq	1440(%rsp), %rcx
	xorq	%rdx, %rdx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$206
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$207:
	movw	(%rcx,%rdx,2), %r9w
	movswl	%r9w, %r10d
	imull	$20159, %r10d, %r10d
	sarl	$26, %r10d
	imull	$3329, %r10d, %r10d
	subw	%r10w, %r9w
	movw	%r9w, (%rcx,%rdx,2)
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$206:
	cmpq	$256, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$207
	leaq	1440(%rsp), %rcx
	call	L_i_poly_tomsg$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$205:
	movq	%r8, %rax
	addq	$2336, %rax
	movq	(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 136(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 144(%rsp)
	movq	%r8, 16(%rsp)
	leaq	152(%rsp), %rax
	leaq	88(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$204:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %rcx
	addq	$1152, %rcx
	leaq	13418(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	184(%rsp), %r8
	movq	%r8, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, %rdx
	leaq	2464(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$203:
	addq	$384, %rdx
	leaq	2976(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$202:
	addq	$384, %rdx
	leaq	3488(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$201:
	xorq	%rdx, %rdx
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$199
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$200:
	movq	(%rcx), %r8
	movq	%r8, 56(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$199:
	cmpq	$4, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$200
	leaq	1440(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$198:
	movq	$1, %rax
	movq	%rax, 40(%rsp)
	movb	56(%rsp), %al
	movb	%al, 13216(%rsp)
	movb	57(%rsp), %al
	movb	%al, 13217(%rsp)
	movb	58(%rsp), %al
	movb	%al, 13218(%rsp)
	movb	59(%rsp), %al
	movb	%al, 13219(%rsp)
	movb	60(%rsp), %al
	movb	%al, 13220(%rsp)
	movb	61(%rsp), %al
	movb	%al, 13221(%rsp)
	movb	62(%rsp), %al
	movb	%al, 13222(%rsp)
	movb	63(%rsp), %al
	movb	%al, 13223(%rsp)
	movb	64(%rsp), %al
	movb	%al, 13224(%rsp)
	movb	65(%rsp), %al
	movb	%al, 13225(%rsp)
	movb	66(%rsp), %al
	movb	%al, 13226(%rsp)
	movb	67(%rsp), %al
	movb	%al, 13227(%rsp)
	movb	68(%rsp), %al
	movb	%al, 13228(%rsp)
	movb	69(%rsp), %al
	movb	%al, 13229(%rsp)
	movb	70(%rsp), %al
	movb	%al, 13230(%rsp)
	movb	71(%rsp), %al
	movb	%al, 13231(%rsp)
	movb	72(%rsp), %al
	movb	%al, 13232(%rsp)
	movb	73(%rsp), %al
	movb	%al, 13233(%rsp)
	movb	74(%rsp), %al
	movb	%al, 13234(%rsp)
	movb	75(%rsp), %al
	movb	%al, 13235(%rsp)
	movb	76(%rsp), %al
	movb	%al, 13236(%rsp)
	movb	77(%rsp), %al
	movb	%al, 13237(%rsp)
	movb	78(%rsp), %al
	movb	%al, 13238(%rsp)
	movb	79(%rsp), %al
	movb	%al, 13239(%rsp)
	movb	80(%rsp), %al
	movb	%al, 13240(%rsp)
	movb	81(%rsp), %al
	movb	%al, 13241(%rsp)
	movb	82(%rsp), %al
	movb	%al, 13242(%rsp)
	movb	83(%rsp), %al
	movb	%al, 13243(%rsp)
	movb	84(%rsp), %al
	movb	%al, 13244(%rsp)
	movb	85(%rsp), %al
	movb	%al, 13245(%rsp)
	movb	86(%rsp), %al
	movb	%al, 13246(%rsp)
	movb	87(%rsp), %al
	movb	%al, 13247(%rsp)
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$196
	movb	$0, 13248(%rsp)
	movb	$0, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$197
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$196:
	movb	$0, 13248(%rsp)
	movb	$0, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$197:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$195:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$185
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$186:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$194:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$187
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$188:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$189
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$187
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$189:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$193
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$193:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$187
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$187
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$192:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$191:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$190:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$187:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$188
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$185:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$186
	xorq	%rax, %rax
	leaq	8608(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$183
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$184:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$183:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$184
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$181
	movb	$0, 13248(%rsp)
	movb	$1, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$182
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$181:
	movb	$1, 13248(%rsp)
	movb	$0, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$182:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$180:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$170
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$171:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$179:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$172
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$173:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$174
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$172
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$174:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$178
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$178:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$172
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$172
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$177:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$176:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$175:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$172:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$173
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$170:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$171
	xorq	%rax, %rax
	leaq	9120(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$168
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$169:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$168:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$169
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$166
	movb	$0, 13248(%rsp)
	movb	$2, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$167
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$166:
	movb	$2, 13248(%rsp)
	movb	$0, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$167:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$165:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$155
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$156:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$164:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$157
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$158:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$159
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$157
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$159:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$163
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$163:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$157
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$157
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$162:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$161:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$160:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$157:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$158
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$155:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$156
	xorq	%rax, %rax
	leaq	9632(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$153
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$154:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$153:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$154
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$151
	movb	$1, 13248(%rsp)
	movb	$0, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$152
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$151:
	movb	$0, 13248(%rsp)
	movb	$1, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$152:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$150:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$140
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$141:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$149:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$142
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$143:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$144
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$142
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$144:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$148
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$148:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$142
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$142
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$147:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$146:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$145:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$142:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$143
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$140:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$141
	xorq	%rax, %rax
	leaq	10144(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$138
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$139:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$138:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$139
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$136
	movb	$1, 13248(%rsp)
	movb	$1, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$137
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$136:
	movb	$1, 13248(%rsp)
	movb	$1, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$137:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$135:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$125
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$126:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$134:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$127
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$129
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$127
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$129:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$133
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$133:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$127
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$127
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$132:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$131:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$130:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$127:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$128
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$125:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$126
	xorq	%rax, %rax
	leaq	10656(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$123
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$124:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$123:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$124
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$121
	movb	$1, 13248(%rsp)
	movb	$2, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$122
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$121:
	movb	$2, 13248(%rsp)
	movb	$1, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$122:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$120:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$110
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$111:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$119:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$112
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$113:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$114
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$112
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$114:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$118
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$118:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$112
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$112
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$117:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$116:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$115:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$112:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$113
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$110:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$111
	xorq	%rax, %rax
	leaq	11168(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$108
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$109:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$108:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$109
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$106
	movb	$2, 13248(%rsp)
	movb	$0, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$107
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$106:
	movb	$0, 13248(%rsp)
	movb	$2, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$107:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$105:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$95
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$96:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$104:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$97
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$99
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$97
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$99:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$103
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$103:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$97
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$97
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$102:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$101:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$100:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$97:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$98
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$95:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$96
	xorq	%rax, %rax
	leaq	11680(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$93
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$94:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$93:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$94
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$91
	movb	$2, 13248(%rsp)
	movb	$1, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$92
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$91:
	movb	$1, 13248(%rsp)
	movb	$2, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$92:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$90:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$80
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$81:
	movq	%rax, 48(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$89:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$82
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$83:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$84
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$82
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$84:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$88
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$88:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$82
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$82
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$87:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$86:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$85:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$82:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$83
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$80:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$81
	xorq	%rax, %rax
	leaq	12192(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$78
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$79:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$78:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$79
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$76
	movb	$2, 13248(%rsp)
	movb	$2, 13249(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$77
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$76:
	movb	$2, 13248(%rsp)
	movb	$2, 13249(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$77:
	leaq	216(%rsp), %rax
	leaq	13216(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$75:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$65
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$66:
	movq	%rax, 40(%rsp)
	leaq	216(%rsp), %rax
	leaq	13250(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$74:
	leaq	8(%rsp), %rsp
	movq	40(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$67
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$68:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$69
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$67
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$69:
	movzbw	13250(%rsp,%rcx), %dx
	movzbw	13251(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13252(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$73
	movw	%dx, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$73:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$67
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$67
	movw	%r9w, 928(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$72:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$71:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$70:
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$67:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$68
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$65:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$66
	xorq	%rax, %rax
	leaq	12704(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$63
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$64:
	movw	928(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$64
	xorb	%al, %al
	leaq	4000(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$62:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	4512(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$61:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	5024(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$60:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	5536(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$59:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	6048(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$58:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	6560(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$57:
	leaq	176(%rsp), %rsp
	movb	$6, %al
	leaq	928(%rsp), %rdx
	movq	24(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$56:
	leaq	176(%rsp), %rsp
	leaq	4000(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$55:
	leaq	4512(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$54:
	leaq	5024(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$53:
	leaq	7072(%rsp), %r9
	leaq	8608(%rsp), %rcx
	leaq	4000(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$52:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %r9
	leaq	9120(%rsp), %rcx
	leaq	4512(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$51:
	leaq	16(%rsp), %rsp
	leaq	7072(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$50:
	leaq	416(%rsp), %r9
	leaq	9632(%rsp), %rcx
	leaq	5024(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$49:
	leaq	16(%rsp), %rsp
	leaq	7072(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$48:
	leaq	7072(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$46
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$47:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$46:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$47
	leaq	7584(%rsp), %r9
	leaq	10144(%rsp), %rcx
	leaq	4000(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$45:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %r9
	leaq	10656(%rsp), %rcx
	leaq	4512(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$44:
	leaq	16(%rsp), %rsp
	leaq	7584(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$43:
	leaq	416(%rsp), %r9
	leaq	11168(%rsp), %rcx
	leaq	5024(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$42:
	leaq	16(%rsp), %rsp
	leaq	7584(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$41:
	leaq	7584(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$39
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$40:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$39:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$40
	leaq	8096(%rsp), %r9
	leaq	11680(%rsp), %rcx
	leaq	4000(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$38:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %r9
	leaq	12192(%rsp), %rcx
	leaq	4512(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$37:
	leaq	16(%rsp), %rsp
	leaq	8096(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$36:
	leaq	416(%rsp), %r9
	leaq	12704(%rsp), %rcx
	leaq	5024(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$35:
	leaq	16(%rsp), %rsp
	leaq	8096(%rsp), %rcx
	leaq	416(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$34:
	leaq	8096(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$32
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$33:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$32:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$33
	leaq	416(%rsp), %r9
	leaq	2464(%rsp), %rcx
	leaq	4000(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$31:
	leaq	16(%rsp), %rsp
	leaq	1952(%rsp), %r9
	leaq	2976(%rsp), %rcx
	leaq	4512(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$30:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %rcx
	leaq	1952(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$29:
	leaq	1952(%rsp), %r9
	leaq	3488(%rsp), %rcx
	leaq	5024(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$28:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %rcx
	leaq	1952(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$27:
	leaq	416(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$25
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$26:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$25:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$26
	leaq	7072(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$24:
	leaq	7584(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$23:
	leaq	8096(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$22:
	leaq	416(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$21:
	leaq	7072(%rsp), %rcx
	leaq	5536(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$20:
	leaq	7584(%rsp), %rcx
	leaq	6048(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$19:
	leaq	8096(%rsp), %rcx
	leaq	6560(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$18:
	leaq	416(%rsp), %rcx
	leaq	928(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$17:
	leaq	416(%rsp), %rcx
	leaq	1440(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$16:
	leaq	7072(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$14
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$15:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$14:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$15
	leaq	7584(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$12
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$13:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$12:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$13
	leaq	8096(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$10
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$11:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$10:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$11
	leaq	416(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$8
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$9:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$8:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$9
	movq	32(%rsp), %rax
	movq	%rax, %r8
	xorq	%r11, %r11
	xorq	%rbx, %rbx
	leaq	7072(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$7:
	leaq	7584(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$6:
	leaq	8096(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$5:
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$3
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$4:
	movzwq	7072(%rsp,%r11,2), %rcx
	incq	%r11
	shlq	$10, %rcx
	addq	$1665, %rcx
	imulq	$1290167, %rcx, %rcx
	shrq	$32, %rcx
	andq	$1023, %rcx
	movzwq	7072(%rsp,%r11,2), %rdx
	incq	%r11
	shlq	$10, %rdx
	addq	$1665, %rdx
	imulq	$1290167, %rdx, %rdx
	shrq	$32, %rdx
	andq	$1023, %rdx
	movzwq	7072(%rsp,%r11,2), %r9
	incq	%r11
	shlq	$10, %r9
	addq	$1665, %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movzwq	7072(%rsp,%r11,2), %r10
	incq	%r11
	shlq	$10, %r10
	addq	$1665, %r10
	imulq	$1290167, %r10, %r10
	shrq	$32, %r10
	andq	$1023, %r10
	movw	%cx, %bp
	andw	$255, %bp
	movb	%bpl, (%r8,%rbx)
	incq	%rbx
	shrw	$8, %cx
	movw	%dx, %bp
	shlw	$2, %bp
	orw 	%cx, %bp
	movb	%bpl, (%r8,%rbx)
	incq	%rbx
	shrw	$6, %dx
	movw	%r9w, %cx
	shlw	$4, %cx
	orw 	%dx, %cx
	movb	%cl, (%r8,%rbx)
	incq	%rbx
	shrw	$4, %r9w
	movw	%r10w, %cx
	shlw	$6, %cx
	orw 	%r9w, %cx
	movb	%cl, (%r8,%rbx)
	incq	%rbx
	shrq	$2, %r10
	movb	%r10b, (%r8,%rbx)
	incq	%rbx
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$3:
	cmpq	$765, %r11
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_dec$4
	leaq	960(%rax), %rax
	leaq	416(%rsp), %rcx
	call	L_i_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$2:
	movq	8(%rsp), %rax
	leaq	13418(%rsp), %rcx
	xorq	%rdx, %rdx
	movb	(%rcx), %r8b
	movb	(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1(%rcx), %r8b
	movb	1(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	2(%rcx), %r8b
	movb	2(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	3(%rcx), %r8b
	movb	3(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	4(%rcx), %r8b
	movb	4(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	5(%rcx), %r8b
	movb	5(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	6(%rcx), %r8b
	movb	6(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	7(%rcx), %r8b
	movb	7(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	8(%rcx), %r8b
	movb	8(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	9(%rcx), %r8b
	movb	9(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	10(%rcx), %r8b
	movb	10(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	11(%rcx), %r8b
	movb	11(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	12(%rcx), %r8b
	movb	12(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	13(%rcx), %r8b
	movb	13(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	14(%rcx), %r8b
	movb	14(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	15(%rcx), %r8b
	movb	15(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	16(%rcx), %r8b
	movb	16(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	17(%rcx), %r8b
	movb	17(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	18(%rcx), %r8b
	movb	18(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	19(%rcx), %r8b
	movb	19(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	20(%rcx), %r8b
	movb	20(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	21(%rcx), %r8b
	movb	21(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	22(%rcx), %r8b
	movb	22(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	23(%rcx), %r8b
	movb	23(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	24(%rcx), %r8b
	movb	24(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	25(%rcx), %r8b
	movb	25(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	26(%rcx), %r8b
	movb	26(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	27(%rcx), %r8b
	movb	27(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	28(%rcx), %r8b
	movb	28(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	29(%rcx), %r8b
	movb	29(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	30(%rcx), %r8b
	movb	30(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	31(%rcx), %r8b
	movb	31(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	32(%rcx), %r8b
	movb	32(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	33(%rcx), %r8b
	movb	33(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	34(%rcx), %r8b
	movb	34(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	35(%rcx), %r8b
	movb	35(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	36(%rcx), %r8b
	movb	36(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	37(%rcx), %r8b
	movb	37(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	38(%rcx), %r8b
	movb	38(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	39(%rcx), %r8b
	movb	39(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	40(%rcx), %r8b
	movb	40(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	41(%rcx), %r8b
	movb	41(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	42(%rcx), %r8b
	movb	42(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	43(%rcx), %r8b
	movb	43(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	44(%rcx), %r8b
	movb	44(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	45(%rcx), %r8b
	movb	45(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	46(%rcx), %r8b
	movb	46(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	47(%rcx), %r8b
	movb	47(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	48(%rcx), %r8b
	movb	48(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	49(%rcx), %r8b
	movb	49(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	50(%rcx), %r8b
	movb	50(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	51(%rcx), %r8b
	movb	51(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	52(%rcx), %r8b
	movb	52(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	53(%rcx), %r8b
	movb	53(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	54(%rcx), %r8b
	movb	54(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	55(%rcx), %r8b
	movb	55(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	56(%rcx), %r8b
	movb	56(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	57(%rcx), %r8b
	movb	57(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	58(%rcx), %r8b
	movb	58(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	59(%rcx), %r8b
	movb	59(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	60(%rcx), %r8b
	movb	60(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	61(%rcx), %r8b
	movb	61(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	62(%rcx), %r8b
	movb	62(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	63(%rcx), %r8b
	movb	63(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	64(%rcx), %r8b
	movb	64(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	65(%rcx), %r8b
	movb	65(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	66(%rcx), %r8b
	movb	66(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	67(%rcx), %r8b
	movb	67(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	68(%rcx), %r8b
	movb	68(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	69(%rcx), %r8b
	movb	69(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	70(%rcx), %r8b
	movb	70(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	71(%rcx), %r8b
	movb	71(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	72(%rcx), %r8b
	movb	72(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	73(%rcx), %r8b
	movb	73(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	74(%rcx), %r8b
	movb	74(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	75(%rcx), %r8b
	movb	75(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	76(%rcx), %r8b
	movb	76(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	77(%rcx), %r8b
	movb	77(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	78(%rcx), %r8b
	movb	78(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	79(%rcx), %r8b
	movb	79(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	80(%rcx), %r8b
	movb	80(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	81(%rcx), %r8b
	movb	81(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	82(%rcx), %r8b
	movb	82(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	83(%rcx), %r8b
	movb	83(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	84(%rcx), %r8b
	movb	84(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	85(%rcx), %r8b
	movb	85(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	86(%rcx), %r8b
	movb	86(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	87(%rcx), %r8b
	movb	87(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	88(%rcx), %r8b
	movb	88(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	89(%rcx), %r8b
	movb	89(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	90(%rcx), %r8b
	movb	90(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	91(%rcx), %r8b
	movb	91(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	92(%rcx), %r8b
	movb	92(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	93(%rcx), %r8b
	movb	93(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	94(%rcx), %r8b
	movb	94(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	95(%rcx), %r8b
	movb	95(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	96(%rcx), %r8b
	movb	96(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	97(%rcx), %r8b
	movb	97(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	98(%rcx), %r8b
	movb	98(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	99(%rcx), %r8b
	movb	99(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	100(%rcx), %r8b
	movb	100(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	101(%rcx), %r8b
	movb	101(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	102(%rcx), %r8b
	movb	102(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	103(%rcx), %r8b
	movb	103(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	104(%rcx), %r8b
	movb	104(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	105(%rcx), %r8b
	movb	105(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	106(%rcx), %r8b
	movb	106(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	107(%rcx), %r8b
	movb	107(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	108(%rcx), %r8b
	movb	108(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	109(%rcx), %r8b
	movb	109(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	110(%rcx), %r8b
	movb	110(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	111(%rcx), %r8b
	movb	111(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	112(%rcx), %r8b
	movb	112(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	113(%rcx), %r8b
	movb	113(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	114(%rcx), %r8b
	movb	114(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	115(%rcx), %r8b
	movb	115(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	116(%rcx), %r8b
	movb	116(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	117(%rcx), %r8b
	movb	117(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	118(%rcx), %r8b
	movb	118(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	119(%rcx), %r8b
	movb	119(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	120(%rcx), %r8b
	movb	120(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	121(%rcx), %r8b
	movb	121(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	122(%rcx), %r8b
	movb	122(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	123(%rcx), %r8b
	movb	123(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	124(%rcx), %r8b
	movb	124(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	125(%rcx), %r8b
	movb	125(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	126(%rcx), %r8b
	movb	126(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	127(%rcx), %r8b
	movb	127(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	128(%rcx), %r8b
	movb	128(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	129(%rcx), %r8b
	movb	129(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	130(%rcx), %r8b
	movb	130(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	131(%rcx), %r8b
	movb	131(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	132(%rcx), %r8b
	movb	132(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	133(%rcx), %r8b
	movb	133(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	134(%rcx), %r8b
	movb	134(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	135(%rcx), %r8b
	movb	135(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	136(%rcx), %r8b
	movb	136(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	137(%rcx), %r8b
	movb	137(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	138(%rcx), %r8b
	movb	138(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	139(%rcx), %r8b
	movb	139(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	140(%rcx), %r8b
	movb	140(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	141(%rcx), %r8b
	movb	141(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	142(%rcx), %r8b
	movb	142(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	143(%rcx), %r8b
	movb	143(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	144(%rcx), %r8b
	movb	144(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	145(%rcx), %r8b
	movb	145(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	146(%rcx), %r8b
	movb	146(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	147(%rcx), %r8b
	movb	147(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	148(%rcx), %r8b
	movb	148(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	149(%rcx), %r8b
	movb	149(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	150(%rcx), %r8b
	movb	150(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	151(%rcx), %r8b
	movb	151(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	152(%rcx), %r8b
	movb	152(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	153(%rcx), %r8b
	movb	153(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	154(%rcx), %r8b
	movb	154(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	155(%rcx), %r8b
	movb	155(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	156(%rcx), %r8b
	movb	156(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	157(%rcx), %r8b
	movb	157(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	158(%rcx), %r8b
	movb	158(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	159(%rcx), %r8b
	movb	159(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	160(%rcx), %r8b
	movb	160(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	161(%rcx), %r8b
	movb	161(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	162(%rcx), %r8b
	movb	162(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	163(%rcx), %r8b
	movb	163(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	164(%rcx), %r8b
	movb	164(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	165(%rcx), %r8b
	movb	165(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	166(%rcx), %r8b
	movb	166(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	167(%rcx), %r8b
	movb	167(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	168(%rcx), %r8b
	movb	168(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	169(%rcx), %r8b
	movb	169(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	170(%rcx), %r8b
	movb	170(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	171(%rcx), %r8b
	movb	171(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	172(%rcx), %r8b
	movb	172(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	173(%rcx), %r8b
	movb	173(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	174(%rcx), %r8b
	movb	174(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	175(%rcx), %r8b
	movb	175(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	176(%rcx), %r8b
	movb	176(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	177(%rcx), %r8b
	movb	177(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	178(%rcx), %r8b
	movb	178(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	179(%rcx), %r8b
	movb	179(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	180(%rcx), %r8b
	movb	180(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	181(%rcx), %r8b
	movb	181(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	182(%rcx), %r8b
	movb	182(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	183(%rcx), %r8b
	movb	183(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	184(%rcx), %r8b
	movb	184(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	185(%rcx), %r8b
	movb	185(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	186(%rcx), %r8b
	movb	186(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	187(%rcx), %r8b
	movb	187(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	188(%rcx), %r8b
	movb	188(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	189(%rcx), %r8b
	movb	189(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	190(%rcx), %r8b
	movb	190(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	191(%rcx), %r8b
	movb	191(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	192(%rcx), %r8b
	movb	192(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	193(%rcx), %r8b
	movb	193(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	194(%rcx), %r8b
	movb	194(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	195(%rcx), %r8b
	movb	195(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	196(%rcx), %r8b
	movb	196(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	197(%rcx), %r8b
	movb	197(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	198(%rcx), %r8b
	movb	198(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	199(%rcx), %r8b
	movb	199(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	200(%rcx), %r8b
	movb	200(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	201(%rcx), %r8b
	movb	201(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	202(%rcx), %r8b
	movb	202(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	203(%rcx), %r8b
	movb	203(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	204(%rcx), %r8b
	movb	204(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	205(%rcx), %r8b
	movb	205(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	206(%rcx), %r8b
	movb	206(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	207(%rcx), %r8b
	movb	207(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	208(%rcx), %r8b
	movb	208(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	209(%rcx), %r8b
	movb	209(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	210(%rcx), %r8b
	movb	210(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	211(%rcx), %r8b
	movb	211(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	212(%rcx), %r8b
	movb	212(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	213(%rcx), %r8b
	movb	213(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	214(%rcx), %r8b
	movb	214(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	215(%rcx), %r8b
	movb	215(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	216(%rcx), %r8b
	movb	216(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	217(%rcx), %r8b
	movb	217(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	218(%rcx), %r8b
	movb	218(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	219(%rcx), %r8b
	movb	219(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	220(%rcx), %r8b
	movb	220(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	221(%rcx), %r8b
	movb	221(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	222(%rcx), %r8b
	movb	222(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	223(%rcx), %r8b
	movb	223(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	224(%rcx), %r8b
	movb	224(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	225(%rcx), %r8b
	movb	225(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	226(%rcx), %r8b
	movb	226(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	227(%rcx), %r8b
	movb	227(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	228(%rcx), %r8b
	movb	228(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	229(%rcx), %r8b
	movb	229(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	230(%rcx), %r8b
	movb	230(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	231(%rcx), %r8b
	movb	231(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	232(%rcx), %r8b
	movb	232(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	233(%rcx), %r8b
	movb	233(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	234(%rcx), %r8b
	movb	234(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	235(%rcx), %r8b
	movb	235(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	236(%rcx), %r8b
	movb	236(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	237(%rcx), %r8b
	movb	237(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	238(%rcx), %r8b
	movb	238(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	239(%rcx), %r8b
	movb	239(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	240(%rcx), %r8b
	movb	240(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	241(%rcx), %r8b
	movb	241(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	242(%rcx), %r8b
	movb	242(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	243(%rcx), %r8b
	movb	243(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	244(%rcx), %r8b
	movb	244(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	245(%rcx), %r8b
	movb	245(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	246(%rcx), %r8b
	movb	246(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	247(%rcx), %r8b
	movb	247(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	248(%rcx), %r8b
	movb	248(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	249(%rcx), %r8b
	movb	249(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	250(%rcx), %r8b
	movb	250(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	251(%rcx), %r8b
	movb	251(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	252(%rcx), %r8b
	movb	252(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	253(%rcx), %r8b
	movb	253(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	254(%rcx), %r8b
	movb	254(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	255(%rcx), %r8b
	movb	255(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	256(%rcx), %r8b
	movb	256(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	257(%rcx), %r8b
	movb	257(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	258(%rcx), %r8b
	movb	258(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	259(%rcx), %r8b
	movb	259(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	260(%rcx), %r8b
	movb	260(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	261(%rcx), %r8b
	movb	261(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	262(%rcx), %r8b
	movb	262(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	263(%rcx), %r8b
	movb	263(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	264(%rcx), %r8b
	movb	264(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	265(%rcx), %r8b
	movb	265(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	266(%rcx), %r8b
	movb	266(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	267(%rcx), %r8b
	movb	267(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	268(%rcx), %r8b
	movb	268(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	269(%rcx), %r8b
	movb	269(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	270(%rcx), %r8b
	movb	270(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	271(%rcx), %r8b
	movb	271(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	272(%rcx), %r8b
	movb	272(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	273(%rcx), %r8b
	movb	273(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	274(%rcx), %r8b
	movb	274(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	275(%rcx), %r8b
	movb	275(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	276(%rcx), %r8b
	movb	276(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	277(%rcx), %r8b
	movb	277(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	278(%rcx), %r8b
	movb	278(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	279(%rcx), %r8b
	movb	279(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	280(%rcx), %r8b
	movb	280(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	281(%rcx), %r8b
	movb	281(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	282(%rcx), %r8b
	movb	282(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	283(%rcx), %r8b
	movb	283(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	284(%rcx), %r8b
	movb	284(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	285(%rcx), %r8b
	movb	285(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	286(%rcx), %r8b
	movb	286(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	287(%rcx), %r8b
	movb	287(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	288(%rcx), %r8b
	movb	288(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	289(%rcx), %r8b
	movb	289(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	290(%rcx), %r8b
	movb	290(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	291(%rcx), %r8b
	movb	291(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	292(%rcx), %r8b
	movb	292(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	293(%rcx), %r8b
	movb	293(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	294(%rcx), %r8b
	movb	294(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	295(%rcx), %r8b
	movb	295(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	296(%rcx), %r8b
	movb	296(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	297(%rcx), %r8b
	movb	297(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	298(%rcx), %r8b
	movb	298(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	299(%rcx), %r8b
	movb	299(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	300(%rcx), %r8b
	movb	300(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	301(%rcx), %r8b
	movb	301(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	302(%rcx), %r8b
	movb	302(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	303(%rcx), %r8b
	movb	303(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	304(%rcx), %r8b
	movb	304(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	305(%rcx), %r8b
	movb	305(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	306(%rcx), %r8b
	movb	306(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	307(%rcx), %r8b
	movb	307(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	308(%rcx), %r8b
	movb	308(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	309(%rcx), %r8b
	movb	309(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	310(%rcx), %r8b
	movb	310(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	311(%rcx), %r8b
	movb	311(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	312(%rcx), %r8b
	movb	312(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	313(%rcx), %r8b
	movb	313(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	314(%rcx), %r8b
	movb	314(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	315(%rcx), %r8b
	movb	315(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	316(%rcx), %r8b
	movb	316(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	317(%rcx), %r8b
	movb	317(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	318(%rcx), %r8b
	movb	318(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	319(%rcx), %r8b
	movb	319(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	320(%rcx), %r8b
	movb	320(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	321(%rcx), %r8b
	movb	321(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	322(%rcx), %r8b
	movb	322(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	323(%rcx), %r8b
	movb	323(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	324(%rcx), %r8b
	movb	324(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	325(%rcx), %r8b
	movb	325(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	326(%rcx), %r8b
	movb	326(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	327(%rcx), %r8b
	movb	327(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	328(%rcx), %r8b
	movb	328(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	329(%rcx), %r8b
	movb	329(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	330(%rcx), %r8b
	movb	330(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	331(%rcx), %r8b
	movb	331(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	332(%rcx), %r8b
	movb	332(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	333(%rcx), %r8b
	movb	333(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	334(%rcx), %r8b
	movb	334(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	335(%rcx), %r8b
	movb	335(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	336(%rcx), %r8b
	movb	336(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	337(%rcx), %r8b
	movb	337(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	338(%rcx), %r8b
	movb	338(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	339(%rcx), %r8b
	movb	339(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	340(%rcx), %r8b
	movb	340(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	341(%rcx), %r8b
	movb	341(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	342(%rcx), %r8b
	movb	342(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	343(%rcx), %r8b
	movb	343(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	344(%rcx), %r8b
	movb	344(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	345(%rcx), %r8b
	movb	345(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	346(%rcx), %r8b
	movb	346(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	347(%rcx), %r8b
	movb	347(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	348(%rcx), %r8b
	movb	348(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	349(%rcx), %r8b
	movb	349(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	350(%rcx), %r8b
	movb	350(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	351(%rcx), %r8b
	movb	351(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	352(%rcx), %r8b
	movb	352(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	353(%rcx), %r8b
	movb	353(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	354(%rcx), %r8b
	movb	354(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	355(%rcx), %r8b
	movb	355(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	356(%rcx), %r8b
	movb	356(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	357(%rcx), %r8b
	movb	357(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	358(%rcx), %r8b
	movb	358(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	359(%rcx), %r8b
	movb	359(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	360(%rcx), %r8b
	movb	360(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	361(%rcx), %r8b
	movb	361(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	362(%rcx), %r8b
	movb	362(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	363(%rcx), %r8b
	movb	363(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	364(%rcx), %r8b
	movb	364(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	365(%rcx), %r8b
	movb	365(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	366(%rcx), %r8b
	movb	366(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	367(%rcx), %r8b
	movb	367(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	368(%rcx), %r8b
	movb	368(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	369(%rcx), %r8b
	movb	369(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	370(%rcx), %r8b
	movb	370(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	371(%rcx), %r8b
	movb	371(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	372(%rcx), %r8b
	movb	372(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	373(%rcx), %r8b
	movb	373(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	374(%rcx), %r8b
	movb	374(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	375(%rcx), %r8b
	movb	375(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	376(%rcx), %r8b
	movb	376(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	377(%rcx), %r8b
	movb	377(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	378(%rcx), %r8b
	movb	378(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	379(%rcx), %r8b
	movb	379(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	380(%rcx), %r8b
	movb	380(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	381(%rcx), %r8b
	movb	381(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	382(%rcx), %r8b
	movb	382(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	383(%rcx), %r8b
	movb	383(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	384(%rcx), %r8b
	movb	384(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	385(%rcx), %r8b
	movb	385(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	386(%rcx), %r8b
	movb	386(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	387(%rcx), %r8b
	movb	387(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	388(%rcx), %r8b
	movb	388(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	389(%rcx), %r8b
	movb	389(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	390(%rcx), %r8b
	movb	390(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	391(%rcx), %r8b
	movb	391(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	392(%rcx), %r8b
	movb	392(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	393(%rcx), %r8b
	movb	393(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	394(%rcx), %r8b
	movb	394(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	395(%rcx), %r8b
	movb	395(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	396(%rcx), %r8b
	movb	396(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	397(%rcx), %r8b
	movb	397(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	398(%rcx), %r8b
	movb	398(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	399(%rcx), %r8b
	movb	399(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	400(%rcx), %r8b
	movb	400(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	401(%rcx), %r8b
	movb	401(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	402(%rcx), %r8b
	movb	402(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	403(%rcx), %r8b
	movb	403(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	404(%rcx), %r8b
	movb	404(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	405(%rcx), %r8b
	movb	405(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	406(%rcx), %r8b
	movb	406(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	407(%rcx), %r8b
	movb	407(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	408(%rcx), %r8b
	movb	408(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	409(%rcx), %r8b
	movb	409(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	410(%rcx), %r8b
	movb	410(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	411(%rcx), %r8b
	movb	411(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	412(%rcx), %r8b
	movb	412(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	413(%rcx), %r8b
	movb	413(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	414(%rcx), %r8b
	movb	414(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	415(%rcx), %r8b
	movb	415(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	416(%rcx), %r8b
	movb	416(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	417(%rcx), %r8b
	movb	417(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	418(%rcx), %r8b
	movb	418(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	419(%rcx), %r8b
	movb	419(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	420(%rcx), %r8b
	movb	420(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	421(%rcx), %r8b
	movb	421(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	422(%rcx), %r8b
	movb	422(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	423(%rcx), %r8b
	movb	423(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	424(%rcx), %r8b
	movb	424(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	425(%rcx), %r8b
	movb	425(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	426(%rcx), %r8b
	movb	426(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	427(%rcx), %r8b
	movb	427(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	428(%rcx), %r8b
	movb	428(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	429(%rcx), %r8b
	movb	429(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	430(%rcx), %r8b
	movb	430(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	431(%rcx), %r8b
	movb	431(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	432(%rcx), %r8b
	movb	432(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	433(%rcx), %r8b
	movb	433(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	434(%rcx), %r8b
	movb	434(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	435(%rcx), %r8b
	movb	435(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	436(%rcx), %r8b
	movb	436(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	437(%rcx), %r8b
	movb	437(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	438(%rcx), %r8b
	movb	438(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	439(%rcx), %r8b
	movb	439(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	440(%rcx), %r8b
	movb	440(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	441(%rcx), %r8b
	movb	441(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	442(%rcx), %r8b
	movb	442(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	443(%rcx), %r8b
	movb	443(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	444(%rcx), %r8b
	movb	444(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	445(%rcx), %r8b
	movb	445(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	446(%rcx), %r8b
	movb	446(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	447(%rcx), %r8b
	movb	447(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	448(%rcx), %r8b
	movb	448(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	449(%rcx), %r8b
	movb	449(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	450(%rcx), %r8b
	movb	450(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	451(%rcx), %r8b
	movb	451(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	452(%rcx), %r8b
	movb	452(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	453(%rcx), %r8b
	movb	453(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	454(%rcx), %r8b
	movb	454(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	455(%rcx), %r8b
	movb	455(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	456(%rcx), %r8b
	movb	456(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	457(%rcx), %r8b
	movb	457(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	458(%rcx), %r8b
	movb	458(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	459(%rcx), %r8b
	movb	459(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	460(%rcx), %r8b
	movb	460(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	461(%rcx), %r8b
	movb	461(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	462(%rcx), %r8b
	movb	462(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	463(%rcx), %r8b
	movb	463(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	464(%rcx), %r8b
	movb	464(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	465(%rcx), %r8b
	movb	465(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	466(%rcx), %r8b
	movb	466(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	467(%rcx), %r8b
	movb	467(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	468(%rcx), %r8b
	movb	468(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	469(%rcx), %r8b
	movb	469(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	470(%rcx), %r8b
	movb	470(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	471(%rcx), %r8b
	movb	471(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	472(%rcx), %r8b
	movb	472(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	473(%rcx), %r8b
	movb	473(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	474(%rcx), %r8b
	movb	474(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	475(%rcx), %r8b
	movb	475(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	476(%rcx), %r8b
	movb	476(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	477(%rcx), %r8b
	movb	477(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	478(%rcx), %r8b
	movb	478(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	479(%rcx), %r8b
	movb	479(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	480(%rcx), %r8b
	movb	480(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	481(%rcx), %r8b
	movb	481(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	482(%rcx), %r8b
	movb	482(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	483(%rcx), %r8b
	movb	483(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	484(%rcx), %r8b
	movb	484(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	485(%rcx), %r8b
	movb	485(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	486(%rcx), %r8b
	movb	486(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	487(%rcx), %r8b
	movb	487(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	488(%rcx), %r8b
	movb	488(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	489(%rcx), %r8b
	movb	489(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	490(%rcx), %r8b
	movb	490(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	491(%rcx), %r8b
	movb	491(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	492(%rcx), %r8b
	movb	492(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	493(%rcx), %r8b
	movb	493(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	494(%rcx), %r8b
	movb	494(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	495(%rcx), %r8b
	movb	495(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	496(%rcx), %r8b
	movb	496(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	497(%rcx), %r8b
	movb	497(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	498(%rcx), %r8b
	movb	498(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	499(%rcx), %r8b
	movb	499(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	500(%rcx), %r8b
	movb	500(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	501(%rcx), %r8b
	movb	501(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	502(%rcx), %r8b
	movb	502(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	503(%rcx), %r8b
	movb	503(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	504(%rcx), %r8b
	movb	504(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	505(%rcx), %r8b
	movb	505(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	506(%rcx), %r8b
	movb	506(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	507(%rcx), %r8b
	movb	507(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	508(%rcx), %r8b
	movb	508(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	509(%rcx), %r8b
	movb	509(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	510(%rcx), %r8b
	movb	510(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	511(%rcx), %r8b
	movb	511(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	512(%rcx), %r8b
	movb	512(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	513(%rcx), %r8b
	movb	513(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	514(%rcx), %r8b
	movb	514(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	515(%rcx), %r8b
	movb	515(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	516(%rcx), %r8b
	movb	516(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	517(%rcx), %r8b
	movb	517(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	518(%rcx), %r8b
	movb	518(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	519(%rcx), %r8b
	movb	519(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	520(%rcx), %r8b
	movb	520(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	521(%rcx), %r8b
	movb	521(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	522(%rcx), %r8b
	movb	522(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	523(%rcx), %r8b
	movb	523(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	524(%rcx), %r8b
	movb	524(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	525(%rcx), %r8b
	movb	525(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	526(%rcx), %r8b
	movb	526(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	527(%rcx), %r8b
	movb	527(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	528(%rcx), %r8b
	movb	528(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	529(%rcx), %r8b
	movb	529(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	530(%rcx), %r8b
	movb	530(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	531(%rcx), %r8b
	movb	531(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	532(%rcx), %r8b
	movb	532(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	533(%rcx), %r8b
	movb	533(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	534(%rcx), %r8b
	movb	534(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	535(%rcx), %r8b
	movb	535(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	536(%rcx), %r8b
	movb	536(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	537(%rcx), %r8b
	movb	537(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	538(%rcx), %r8b
	movb	538(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	539(%rcx), %r8b
	movb	539(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	540(%rcx), %r8b
	movb	540(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	541(%rcx), %r8b
	movb	541(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	542(%rcx), %r8b
	movb	542(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	543(%rcx), %r8b
	movb	543(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	544(%rcx), %r8b
	movb	544(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	545(%rcx), %r8b
	movb	545(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	546(%rcx), %r8b
	movb	546(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	547(%rcx), %r8b
	movb	547(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	548(%rcx), %r8b
	movb	548(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	549(%rcx), %r8b
	movb	549(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	550(%rcx), %r8b
	movb	550(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	551(%rcx), %r8b
	movb	551(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	552(%rcx), %r8b
	movb	552(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	553(%rcx), %r8b
	movb	553(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	554(%rcx), %r8b
	movb	554(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	555(%rcx), %r8b
	movb	555(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	556(%rcx), %r8b
	movb	556(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	557(%rcx), %r8b
	movb	557(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	558(%rcx), %r8b
	movb	558(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	559(%rcx), %r8b
	movb	559(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	560(%rcx), %r8b
	movb	560(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	561(%rcx), %r8b
	movb	561(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	562(%rcx), %r8b
	movb	562(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	563(%rcx), %r8b
	movb	563(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	564(%rcx), %r8b
	movb	564(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	565(%rcx), %r8b
	movb	565(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	566(%rcx), %r8b
	movb	566(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	567(%rcx), %r8b
	movb	567(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	568(%rcx), %r8b
	movb	568(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	569(%rcx), %r8b
	movb	569(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	570(%rcx), %r8b
	movb	570(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	571(%rcx), %r8b
	movb	571(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	572(%rcx), %r8b
	movb	572(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	573(%rcx), %r8b
	movb	573(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	574(%rcx), %r8b
	movb	574(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	575(%rcx), %r8b
	movb	575(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	576(%rcx), %r8b
	movb	576(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	577(%rcx), %r8b
	movb	577(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	578(%rcx), %r8b
	movb	578(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	579(%rcx), %r8b
	movb	579(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	580(%rcx), %r8b
	movb	580(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	581(%rcx), %r8b
	movb	581(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	582(%rcx), %r8b
	movb	582(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	583(%rcx), %r8b
	movb	583(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	584(%rcx), %r8b
	movb	584(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	585(%rcx), %r8b
	movb	585(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	586(%rcx), %r8b
	movb	586(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	587(%rcx), %r8b
	movb	587(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	588(%rcx), %r8b
	movb	588(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	589(%rcx), %r8b
	movb	589(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	590(%rcx), %r8b
	movb	590(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	591(%rcx), %r8b
	movb	591(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	592(%rcx), %r8b
	movb	592(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	593(%rcx), %r8b
	movb	593(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	594(%rcx), %r8b
	movb	594(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	595(%rcx), %r8b
	movb	595(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	596(%rcx), %r8b
	movb	596(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	597(%rcx), %r8b
	movb	597(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	598(%rcx), %r8b
	movb	598(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	599(%rcx), %r8b
	movb	599(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	600(%rcx), %r8b
	movb	600(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	601(%rcx), %r8b
	movb	601(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	602(%rcx), %r8b
	movb	602(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	603(%rcx), %r8b
	movb	603(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	604(%rcx), %r8b
	movb	604(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	605(%rcx), %r8b
	movb	605(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	606(%rcx), %r8b
	movb	606(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	607(%rcx), %r8b
	movb	607(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	608(%rcx), %r8b
	movb	608(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	609(%rcx), %r8b
	movb	609(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	610(%rcx), %r8b
	movb	610(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	611(%rcx), %r8b
	movb	611(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	612(%rcx), %r8b
	movb	612(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	613(%rcx), %r8b
	movb	613(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	614(%rcx), %r8b
	movb	614(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	615(%rcx), %r8b
	movb	615(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	616(%rcx), %r8b
	movb	616(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	617(%rcx), %r8b
	movb	617(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	618(%rcx), %r8b
	movb	618(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	619(%rcx), %r8b
	movb	619(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	620(%rcx), %r8b
	movb	620(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	621(%rcx), %r8b
	movb	621(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	622(%rcx), %r8b
	movb	622(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	623(%rcx), %r8b
	movb	623(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	624(%rcx), %r8b
	movb	624(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	625(%rcx), %r8b
	movb	625(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	626(%rcx), %r8b
	movb	626(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	627(%rcx), %r8b
	movb	627(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	628(%rcx), %r8b
	movb	628(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	629(%rcx), %r8b
	movb	629(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	630(%rcx), %r8b
	movb	630(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	631(%rcx), %r8b
	movb	631(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	632(%rcx), %r8b
	movb	632(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	633(%rcx), %r8b
	movb	633(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	634(%rcx), %r8b
	movb	634(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	635(%rcx), %r8b
	movb	635(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	636(%rcx), %r8b
	movb	636(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	637(%rcx), %r8b
	movb	637(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	638(%rcx), %r8b
	movb	638(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	639(%rcx), %r8b
	movb	639(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	640(%rcx), %r8b
	movb	640(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	641(%rcx), %r8b
	movb	641(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	642(%rcx), %r8b
	movb	642(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	643(%rcx), %r8b
	movb	643(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	644(%rcx), %r8b
	movb	644(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	645(%rcx), %r8b
	movb	645(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	646(%rcx), %r8b
	movb	646(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	647(%rcx), %r8b
	movb	647(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	648(%rcx), %r8b
	movb	648(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	649(%rcx), %r8b
	movb	649(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	650(%rcx), %r8b
	movb	650(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	651(%rcx), %r8b
	movb	651(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	652(%rcx), %r8b
	movb	652(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	653(%rcx), %r8b
	movb	653(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	654(%rcx), %r8b
	movb	654(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	655(%rcx), %r8b
	movb	655(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	656(%rcx), %r8b
	movb	656(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	657(%rcx), %r8b
	movb	657(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	658(%rcx), %r8b
	movb	658(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	659(%rcx), %r8b
	movb	659(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	660(%rcx), %r8b
	movb	660(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	661(%rcx), %r8b
	movb	661(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	662(%rcx), %r8b
	movb	662(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	663(%rcx), %r8b
	movb	663(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	664(%rcx), %r8b
	movb	664(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	665(%rcx), %r8b
	movb	665(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	666(%rcx), %r8b
	movb	666(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	667(%rcx), %r8b
	movb	667(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	668(%rcx), %r8b
	movb	668(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	669(%rcx), %r8b
	movb	669(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	670(%rcx), %r8b
	movb	670(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	671(%rcx), %r8b
	movb	671(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	672(%rcx), %r8b
	movb	672(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	673(%rcx), %r8b
	movb	673(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	674(%rcx), %r8b
	movb	674(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	675(%rcx), %r8b
	movb	675(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	676(%rcx), %r8b
	movb	676(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	677(%rcx), %r8b
	movb	677(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	678(%rcx), %r8b
	movb	678(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	679(%rcx), %r8b
	movb	679(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	680(%rcx), %r8b
	movb	680(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	681(%rcx), %r8b
	movb	681(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	682(%rcx), %r8b
	movb	682(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	683(%rcx), %r8b
	movb	683(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	684(%rcx), %r8b
	movb	684(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	685(%rcx), %r8b
	movb	685(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	686(%rcx), %r8b
	movb	686(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	687(%rcx), %r8b
	movb	687(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	688(%rcx), %r8b
	movb	688(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	689(%rcx), %r8b
	movb	689(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	690(%rcx), %r8b
	movb	690(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	691(%rcx), %r8b
	movb	691(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	692(%rcx), %r8b
	movb	692(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	693(%rcx), %r8b
	movb	693(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	694(%rcx), %r8b
	movb	694(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	695(%rcx), %r8b
	movb	695(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	696(%rcx), %r8b
	movb	696(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	697(%rcx), %r8b
	movb	697(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	698(%rcx), %r8b
	movb	698(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	699(%rcx), %r8b
	movb	699(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	700(%rcx), %r8b
	movb	700(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	701(%rcx), %r8b
	movb	701(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	702(%rcx), %r8b
	movb	702(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	703(%rcx), %r8b
	movb	703(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	704(%rcx), %r8b
	movb	704(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	705(%rcx), %r8b
	movb	705(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	706(%rcx), %r8b
	movb	706(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	707(%rcx), %r8b
	movb	707(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	708(%rcx), %r8b
	movb	708(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	709(%rcx), %r8b
	movb	709(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	710(%rcx), %r8b
	movb	710(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	711(%rcx), %r8b
	movb	711(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	712(%rcx), %r8b
	movb	712(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	713(%rcx), %r8b
	movb	713(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	714(%rcx), %r8b
	movb	714(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	715(%rcx), %r8b
	movb	715(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	716(%rcx), %r8b
	movb	716(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	717(%rcx), %r8b
	movb	717(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	718(%rcx), %r8b
	movb	718(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	719(%rcx), %r8b
	movb	719(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	720(%rcx), %r8b
	movb	720(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	721(%rcx), %r8b
	movb	721(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	722(%rcx), %r8b
	movb	722(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	723(%rcx), %r8b
	movb	723(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	724(%rcx), %r8b
	movb	724(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	725(%rcx), %r8b
	movb	725(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	726(%rcx), %r8b
	movb	726(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	727(%rcx), %r8b
	movb	727(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	728(%rcx), %r8b
	movb	728(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	729(%rcx), %r8b
	movb	729(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	730(%rcx), %r8b
	movb	730(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	731(%rcx), %r8b
	movb	731(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	732(%rcx), %r8b
	movb	732(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	733(%rcx), %r8b
	movb	733(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	734(%rcx), %r8b
	movb	734(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	735(%rcx), %r8b
	movb	735(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	736(%rcx), %r8b
	movb	736(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	737(%rcx), %r8b
	movb	737(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	738(%rcx), %r8b
	movb	738(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	739(%rcx), %r8b
	movb	739(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	740(%rcx), %r8b
	movb	740(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	741(%rcx), %r8b
	movb	741(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	742(%rcx), %r8b
	movb	742(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	743(%rcx), %r8b
	movb	743(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	744(%rcx), %r8b
	movb	744(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	745(%rcx), %r8b
	movb	745(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	746(%rcx), %r8b
	movb	746(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	747(%rcx), %r8b
	movb	747(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	748(%rcx), %r8b
	movb	748(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	749(%rcx), %r8b
	movb	749(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	750(%rcx), %r8b
	movb	750(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	751(%rcx), %r8b
	movb	751(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	752(%rcx), %r8b
	movb	752(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	753(%rcx), %r8b
	movb	753(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	754(%rcx), %r8b
	movb	754(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	755(%rcx), %r8b
	movb	755(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	756(%rcx), %r8b
	movb	756(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	757(%rcx), %r8b
	movb	757(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	758(%rcx), %r8b
	movb	758(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	759(%rcx), %r8b
	movb	759(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	760(%rcx), %r8b
	movb	760(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	761(%rcx), %r8b
	movb	761(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	762(%rcx), %r8b
	movb	762(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	763(%rcx), %r8b
	movb	763(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	764(%rcx), %r8b
	movb	764(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	765(%rcx), %r8b
	movb	765(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	766(%rcx), %r8b
	movb	766(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	767(%rcx), %r8b
	movb	767(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	768(%rcx), %r8b
	movb	768(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	769(%rcx), %r8b
	movb	769(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	770(%rcx), %r8b
	movb	770(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	771(%rcx), %r8b
	movb	771(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	772(%rcx), %r8b
	movb	772(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	773(%rcx), %r8b
	movb	773(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	774(%rcx), %r8b
	movb	774(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	775(%rcx), %r8b
	movb	775(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	776(%rcx), %r8b
	movb	776(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	777(%rcx), %r8b
	movb	777(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	778(%rcx), %r8b
	movb	778(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	779(%rcx), %r8b
	movb	779(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	780(%rcx), %r8b
	movb	780(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	781(%rcx), %r8b
	movb	781(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	782(%rcx), %r8b
	movb	782(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	783(%rcx), %r8b
	movb	783(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	784(%rcx), %r8b
	movb	784(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	785(%rcx), %r8b
	movb	785(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	786(%rcx), %r8b
	movb	786(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	787(%rcx), %r8b
	movb	787(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	788(%rcx), %r8b
	movb	788(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	789(%rcx), %r8b
	movb	789(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	790(%rcx), %r8b
	movb	790(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	791(%rcx), %r8b
	movb	791(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	792(%rcx), %r8b
	movb	792(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	793(%rcx), %r8b
	movb	793(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	794(%rcx), %r8b
	movb	794(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	795(%rcx), %r8b
	movb	795(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	796(%rcx), %r8b
	movb	796(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	797(%rcx), %r8b
	movb	797(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	798(%rcx), %r8b
	movb	798(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	799(%rcx), %r8b
	movb	799(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	800(%rcx), %r8b
	movb	800(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	801(%rcx), %r8b
	movb	801(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	802(%rcx), %r8b
	movb	802(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	803(%rcx), %r8b
	movb	803(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	804(%rcx), %r8b
	movb	804(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	805(%rcx), %r8b
	movb	805(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	806(%rcx), %r8b
	movb	806(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	807(%rcx), %r8b
	movb	807(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	808(%rcx), %r8b
	movb	808(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	809(%rcx), %r8b
	movb	809(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	810(%rcx), %r8b
	movb	810(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	811(%rcx), %r8b
	movb	811(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	812(%rcx), %r8b
	movb	812(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	813(%rcx), %r8b
	movb	813(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	814(%rcx), %r8b
	movb	814(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	815(%rcx), %r8b
	movb	815(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	816(%rcx), %r8b
	movb	816(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	817(%rcx), %r8b
	movb	817(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	818(%rcx), %r8b
	movb	818(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	819(%rcx), %r8b
	movb	819(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	820(%rcx), %r8b
	movb	820(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	821(%rcx), %r8b
	movb	821(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	822(%rcx), %r8b
	movb	822(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	823(%rcx), %r8b
	movb	823(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	824(%rcx), %r8b
	movb	824(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	825(%rcx), %r8b
	movb	825(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	826(%rcx), %r8b
	movb	826(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	827(%rcx), %r8b
	movb	827(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	828(%rcx), %r8b
	movb	828(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	829(%rcx), %r8b
	movb	829(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	830(%rcx), %r8b
	movb	830(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	831(%rcx), %r8b
	movb	831(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	832(%rcx), %r8b
	movb	832(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	833(%rcx), %r8b
	movb	833(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	834(%rcx), %r8b
	movb	834(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	835(%rcx), %r8b
	movb	835(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	836(%rcx), %r8b
	movb	836(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	837(%rcx), %r8b
	movb	837(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	838(%rcx), %r8b
	movb	838(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	839(%rcx), %r8b
	movb	839(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	840(%rcx), %r8b
	movb	840(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	841(%rcx), %r8b
	movb	841(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	842(%rcx), %r8b
	movb	842(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	843(%rcx), %r8b
	movb	843(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	844(%rcx), %r8b
	movb	844(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	845(%rcx), %r8b
	movb	845(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	846(%rcx), %r8b
	movb	846(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	847(%rcx), %r8b
	movb	847(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	848(%rcx), %r8b
	movb	848(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	849(%rcx), %r8b
	movb	849(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	850(%rcx), %r8b
	movb	850(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	851(%rcx), %r8b
	movb	851(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	852(%rcx), %r8b
	movb	852(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	853(%rcx), %r8b
	movb	853(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	854(%rcx), %r8b
	movb	854(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	855(%rcx), %r8b
	movb	855(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	856(%rcx), %r8b
	movb	856(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	857(%rcx), %r8b
	movb	857(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	858(%rcx), %r8b
	movb	858(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	859(%rcx), %r8b
	movb	859(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	860(%rcx), %r8b
	movb	860(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	861(%rcx), %r8b
	movb	861(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	862(%rcx), %r8b
	movb	862(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	863(%rcx), %r8b
	movb	863(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	864(%rcx), %r8b
	movb	864(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	865(%rcx), %r8b
	movb	865(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	866(%rcx), %r8b
	movb	866(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	867(%rcx), %r8b
	movb	867(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	868(%rcx), %r8b
	movb	868(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	869(%rcx), %r8b
	movb	869(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	870(%rcx), %r8b
	movb	870(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	871(%rcx), %r8b
	movb	871(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	872(%rcx), %r8b
	movb	872(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	873(%rcx), %r8b
	movb	873(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	874(%rcx), %r8b
	movb	874(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	875(%rcx), %r8b
	movb	875(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	876(%rcx), %r8b
	movb	876(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	877(%rcx), %r8b
	movb	877(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	878(%rcx), %r8b
	movb	878(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	879(%rcx), %r8b
	movb	879(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	880(%rcx), %r8b
	movb	880(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	881(%rcx), %r8b
	movb	881(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	882(%rcx), %r8b
	movb	882(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	883(%rcx), %r8b
	movb	883(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	884(%rcx), %r8b
	movb	884(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	885(%rcx), %r8b
	movb	885(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	886(%rcx), %r8b
	movb	886(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	887(%rcx), %r8b
	movb	887(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	888(%rcx), %r8b
	movb	888(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	889(%rcx), %r8b
	movb	889(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	890(%rcx), %r8b
	movb	890(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	891(%rcx), %r8b
	movb	891(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	892(%rcx), %r8b
	movb	892(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	893(%rcx), %r8b
	movb	893(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	894(%rcx), %r8b
	movb	894(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	895(%rcx), %r8b
	movb	895(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	896(%rcx), %r8b
	movb	896(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	897(%rcx), %r8b
	movb	897(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	898(%rcx), %r8b
	movb	898(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	899(%rcx), %r8b
	movb	899(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	900(%rcx), %r8b
	movb	900(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	901(%rcx), %r8b
	movb	901(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	902(%rcx), %r8b
	movb	902(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	903(%rcx), %r8b
	movb	903(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	904(%rcx), %r8b
	movb	904(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	905(%rcx), %r8b
	movb	905(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	906(%rcx), %r8b
	movb	906(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	907(%rcx), %r8b
	movb	907(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	908(%rcx), %r8b
	movb	908(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	909(%rcx), %r8b
	movb	909(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	910(%rcx), %r8b
	movb	910(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	911(%rcx), %r8b
	movb	911(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	912(%rcx), %r8b
	movb	912(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	913(%rcx), %r8b
	movb	913(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	914(%rcx), %r8b
	movb	914(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	915(%rcx), %r8b
	movb	915(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	916(%rcx), %r8b
	movb	916(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	917(%rcx), %r8b
	movb	917(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	918(%rcx), %r8b
	movb	918(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	919(%rcx), %r8b
	movb	919(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	920(%rcx), %r8b
	movb	920(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	921(%rcx), %r8b
	movb	921(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	922(%rcx), %r8b
	movb	922(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	923(%rcx), %r8b
	movb	923(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	924(%rcx), %r8b
	movb	924(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	925(%rcx), %r8b
	movb	925(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	926(%rcx), %r8b
	movb	926(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	927(%rcx), %r8b
	movb	927(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	928(%rcx), %r8b
	movb	928(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	929(%rcx), %r8b
	movb	929(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	930(%rcx), %r8b
	movb	930(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	931(%rcx), %r8b
	movb	931(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	932(%rcx), %r8b
	movb	932(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	933(%rcx), %r8b
	movb	933(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	934(%rcx), %r8b
	movb	934(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	935(%rcx), %r8b
	movb	935(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	936(%rcx), %r8b
	movb	936(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	937(%rcx), %r8b
	movb	937(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	938(%rcx), %r8b
	movb	938(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	939(%rcx), %r8b
	movb	939(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	940(%rcx), %r8b
	movb	940(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	941(%rcx), %r8b
	movb	941(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	942(%rcx), %r8b
	movb	942(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	943(%rcx), %r8b
	movb	943(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	944(%rcx), %r8b
	movb	944(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	945(%rcx), %r8b
	movb	945(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	946(%rcx), %r8b
	movb	946(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	947(%rcx), %r8b
	movb	947(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	948(%rcx), %r8b
	movb	948(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	949(%rcx), %r8b
	movb	949(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	950(%rcx), %r8b
	movb	950(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	951(%rcx), %r8b
	movb	951(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	952(%rcx), %r8b
	movb	952(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	953(%rcx), %r8b
	movb	953(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	954(%rcx), %r8b
	movb	954(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	955(%rcx), %r8b
	movb	955(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	956(%rcx), %r8b
	movb	956(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	957(%rcx), %r8b
	movb	957(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	958(%rcx), %r8b
	movb	958(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	959(%rcx), %r8b
	movb	959(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	960(%rcx), %r8b
	movb	960(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	961(%rcx), %r8b
	movb	961(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	962(%rcx), %r8b
	movb	962(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	963(%rcx), %r8b
	movb	963(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	964(%rcx), %r8b
	movb	964(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	965(%rcx), %r8b
	movb	965(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	966(%rcx), %r8b
	movb	966(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	967(%rcx), %r8b
	movb	967(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	968(%rcx), %r8b
	movb	968(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	969(%rcx), %r8b
	movb	969(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	970(%rcx), %r8b
	movb	970(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	971(%rcx), %r8b
	movb	971(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	972(%rcx), %r8b
	movb	972(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	973(%rcx), %r8b
	movb	973(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	974(%rcx), %r8b
	movb	974(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	975(%rcx), %r8b
	movb	975(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	976(%rcx), %r8b
	movb	976(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	977(%rcx), %r8b
	movb	977(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	978(%rcx), %r8b
	movb	978(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	979(%rcx), %r8b
	movb	979(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	980(%rcx), %r8b
	movb	980(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	981(%rcx), %r8b
	movb	981(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	982(%rcx), %r8b
	movb	982(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	983(%rcx), %r8b
	movb	983(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	984(%rcx), %r8b
	movb	984(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	985(%rcx), %r8b
	movb	985(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	986(%rcx), %r8b
	movb	986(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	987(%rcx), %r8b
	movb	987(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	988(%rcx), %r8b
	movb	988(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	989(%rcx), %r8b
	movb	989(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	990(%rcx), %r8b
	movb	990(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	991(%rcx), %r8b
	movb	991(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	992(%rcx), %r8b
	movb	992(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	993(%rcx), %r8b
	movb	993(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	994(%rcx), %r8b
	movb	994(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	995(%rcx), %r8b
	movb	995(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	996(%rcx), %r8b
	movb	996(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	997(%rcx), %r8b
	movb	997(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	998(%rcx), %r8b
	movb	998(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	999(%rcx), %r8b
	movb	999(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1000(%rcx), %r8b
	movb	1000(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1001(%rcx), %r8b
	movb	1001(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1002(%rcx), %r8b
	movb	1002(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1003(%rcx), %r8b
	movb	1003(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1004(%rcx), %r8b
	movb	1004(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1005(%rcx), %r8b
	movb	1005(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1006(%rcx), %r8b
	movb	1006(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1007(%rcx), %r8b
	movb	1007(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1008(%rcx), %r8b
	movb	1008(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1009(%rcx), %r8b
	movb	1009(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1010(%rcx), %r8b
	movb	1010(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1011(%rcx), %r8b
	movb	1011(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1012(%rcx), %r8b
	movb	1012(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1013(%rcx), %r8b
	movb	1013(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1014(%rcx), %r8b
	movb	1014(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1015(%rcx), %r8b
	movb	1015(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1016(%rcx), %r8b
	movb	1016(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1017(%rcx), %r8b
	movb	1017(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1018(%rcx), %r8b
	movb	1018(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1019(%rcx), %r8b
	movb	1019(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1020(%rcx), %r8b
	movb	1020(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1021(%rcx), %r8b
	movb	1021(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1022(%rcx), %r8b
	movb	1022(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1023(%rcx), %r8b
	movb	1023(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1024(%rcx), %r8b
	movb	1024(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1025(%rcx), %r8b
	movb	1025(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1026(%rcx), %r8b
	movb	1026(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1027(%rcx), %r8b
	movb	1027(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1028(%rcx), %r8b
	movb	1028(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1029(%rcx), %r8b
	movb	1029(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1030(%rcx), %r8b
	movb	1030(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1031(%rcx), %r8b
	movb	1031(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1032(%rcx), %r8b
	movb	1032(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1033(%rcx), %r8b
	movb	1033(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1034(%rcx), %r8b
	movb	1034(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1035(%rcx), %r8b
	movb	1035(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1036(%rcx), %r8b
	movb	1036(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1037(%rcx), %r8b
	movb	1037(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1038(%rcx), %r8b
	movb	1038(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1039(%rcx), %r8b
	movb	1039(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1040(%rcx), %r8b
	movb	1040(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1041(%rcx), %r8b
	movb	1041(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1042(%rcx), %r8b
	movb	1042(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1043(%rcx), %r8b
	movb	1043(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1044(%rcx), %r8b
	movb	1044(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1045(%rcx), %r8b
	movb	1045(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1046(%rcx), %r8b
	movb	1046(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1047(%rcx), %r8b
	movb	1047(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1048(%rcx), %r8b
	movb	1048(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1049(%rcx), %r8b
	movb	1049(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1050(%rcx), %r8b
	movb	1050(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1051(%rcx), %r8b
	movb	1051(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1052(%rcx), %r8b
	movb	1052(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1053(%rcx), %r8b
	movb	1053(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1054(%rcx), %r8b
	movb	1054(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1055(%rcx), %r8b
	movb	1055(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1056(%rcx), %r8b
	movb	1056(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1057(%rcx), %r8b
	movb	1057(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1058(%rcx), %r8b
	movb	1058(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1059(%rcx), %r8b
	movb	1059(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1060(%rcx), %r8b
	movb	1060(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1061(%rcx), %r8b
	movb	1061(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1062(%rcx), %r8b
	movb	1062(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1063(%rcx), %r8b
	movb	1063(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1064(%rcx), %r8b
	movb	1064(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1065(%rcx), %r8b
	movb	1065(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1066(%rcx), %r8b
	movb	1066(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1067(%rcx), %r8b
	movb	1067(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1068(%rcx), %r8b
	movb	1068(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1069(%rcx), %r8b
	movb	1069(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1070(%rcx), %r8b
	movb	1070(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1071(%rcx), %r8b
	movb	1071(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1072(%rcx), %r8b
	movb	1072(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1073(%rcx), %r8b
	movb	1073(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1074(%rcx), %r8b
	movb	1074(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1075(%rcx), %r8b
	movb	1075(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1076(%rcx), %r8b
	movb	1076(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1077(%rcx), %r8b
	movb	1077(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1078(%rcx), %r8b
	movb	1078(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1079(%rcx), %r8b
	movb	1079(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1080(%rcx), %r8b
	movb	1080(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1081(%rcx), %r8b
	movb	1081(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1082(%rcx), %r8b
	movb	1082(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1083(%rcx), %r8b
	movb	1083(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1084(%rcx), %r8b
	movb	1084(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1085(%rcx), %r8b
	movb	1085(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1086(%rcx), %r8b
	movb	1086(%rax), %r9b
	xorb	%r9b, %r8b
	movzbq	%r8b, %r8
	orq 	%r8, %rdx
	movb	1087(%rcx), %cl
	movb	1087(%rax), %r8b
	xorb	%r8b, %cl
	movzbq	%cl, %rcx
	orq 	%rcx, %rdx
	negq	%rdx
	shrq	$63, %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rcx
	addq	$64, %rcx
	addq	$2304, %rcx
	movq	(%rsp), %rdx
	leaq	-232(%rsp), %rsp
	call	L_shake256_1120_32$1
Ljade_kem_mlkem_mlkem768_amd64_ref_dec$1:
	leaq	232(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	leaq	152(%rsp), %rdx
	negq	%rcx
	movb	(%rax), %r8b
	movb	(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, (%rax)
	movb	1(%rax), %r8b
	movb	1(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 1(%rax)
	movb	2(%rax), %r8b
	movb	2(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 2(%rax)
	movb	3(%rax), %r8b
	movb	3(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 3(%rax)
	movb	4(%rax), %r8b
	movb	4(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 4(%rax)
	movb	5(%rax), %r8b
	movb	5(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 5(%rax)
	movb	6(%rax), %r8b
	movb	6(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 6(%rax)
	movb	7(%rax), %r8b
	movb	7(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 7(%rax)
	movb	8(%rax), %r8b
	movb	8(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	movb	9(%rax), %r8b
	movb	9(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 9(%rax)
	movb	10(%rax), %r8b
	movb	10(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 10(%rax)
	movb	11(%rax), %r8b
	movb	11(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 11(%rax)
	movb	12(%rax), %r8b
	movb	12(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 12(%rax)
	movb	13(%rax), %r8b
	movb	13(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 13(%rax)
	movb	14(%rax), %r8b
	movb	14(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 14(%rax)
	movb	15(%rax), %r8b
	movb	15(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 15(%rax)
	movb	16(%rax), %r8b
	movb	16(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 16(%rax)
	movb	17(%rax), %r8b
	movb	17(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 17(%rax)
	movb	18(%rax), %r8b
	movb	18(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 18(%rax)
	movb	19(%rax), %r8b
	movb	19(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 19(%rax)
	movb	20(%rax), %r8b
	movb	20(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 20(%rax)
	movb	21(%rax), %r8b
	movb	21(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 21(%rax)
	movb	22(%rax), %r8b
	movb	22(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 22(%rax)
	movb	23(%rax), %r8b
	movb	23(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 23(%rax)
	movb	24(%rax), %r8b
	movb	24(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 24(%rax)
	movb	25(%rax), %r8b
	movb	25(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 25(%rax)
	movb	26(%rax), %r8b
	movb	26(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 26(%rax)
	movb	27(%rax), %r8b
	movb	27(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 27(%rax)
	movb	28(%rax), %r8b
	movb	28(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 28(%rax)
	movb	29(%rax), %r8b
	movb	29(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 29(%rax)
	movb	30(%rax), %r8b
	movb	30(%rdx), %r9b
	xorb	%r9b, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %r9b
	movb	%r9b, 30(%rax)
	movb	31(%rax), %r8b
	movb	31(%rdx), %dl
	xorb	%dl, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dl
	movb	%dl, 31(%rax)
	xorq	%rax, %rax
	movq	14512(%rsp), %rbx
	movq	14520(%rsp), %rbp
	movq	14528(%rsp), %rsi
	movq	14536(%rsp), %rdi
	movq	14544(%rsp), %r12
	movq	14552(%rsp), %r13
	movq	14560(%rsp), %r14
	movq	14568(%rsp), %r15
	movq	14576(%rsp), %rsp
	ret
_jade_kem_mlkem_mlkem768_amd64_ref_enc:
jade_kem_mlkem_mlkem768_amd64_ref_enc:
	movq	%rsp, %rax
	leaq	-13480(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rbx, 13408(%rsp)
	movq	%rbp, 13416(%rsp)
	movq	%rsi, 13424(%rsp)
	movq	%rdi, 13432(%rsp)
	movq	%r12, 13440(%rsp)
	movq	%r13, 13448(%rsp)
	movq	%r14, 13456(%rsp)
	movq	%r15, 13464(%rsp)
	movq	%rax, 13472(%rsp)
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %rdi
	leaq	40(%rsp), %rcx
	movq	$32, %rdx
	call	__jasmin_syscall_randombytes__
	movq	%rdi, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 96(%rsp)
	movq	(%rsp), %r10
	movq	$1184, %rax
	leaq	104(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$204:
	leaq	232(%rsp), %rsp
	leaq	136(%rsp), %rax
	leaq	72(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$203:
	leaq	208(%rsp), %rsp
	movq	(%rsp), %rcx
	leaq	72(%rsp), %rax
	leaq	168(%rsp), %rdx
	movq	%rdx, (%rsp)
	movq	%rcx, %rdx
	leaq	2448(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$202:
	addq	$384, %rdx
	leaq	2960(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$201:
	addq	$384, %rdx
	leaq	3472(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$200:
	xorq	%rdx, %rdx
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$198
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$199:
	movq	(%rcx), %r8
	movq	%r8, 40(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$198:
	cmpq	$4, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$199
	leaq	400(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$197:
	movq	$1, %rax
	movq	%rax, 24(%rsp)
	movb	40(%rsp), %al
	movb	%al, 13200(%rsp)
	movb	41(%rsp), %al
	movb	%al, 13201(%rsp)
	movb	42(%rsp), %al
	movb	%al, 13202(%rsp)
	movb	43(%rsp), %al
	movb	%al, 13203(%rsp)
	movb	44(%rsp), %al
	movb	%al, 13204(%rsp)
	movb	45(%rsp), %al
	movb	%al, 13205(%rsp)
	movb	46(%rsp), %al
	movb	%al, 13206(%rsp)
	movb	47(%rsp), %al
	movb	%al, 13207(%rsp)
	movb	48(%rsp), %al
	movb	%al, 13208(%rsp)
	movb	49(%rsp), %al
	movb	%al, 13209(%rsp)
	movb	50(%rsp), %al
	movb	%al, 13210(%rsp)
	movb	51(%rsp), %al
	movb	%al, 13211(%rsp)
	movb	52(%rsp), %al
	movb	%al, 13212(%rsp)
	movb	53(%rsp), %al
	movb	%al, 13213(%rsp)
	movb	54(%rsp), %al
	movb	%al, 13214(%rsp)
	movb	55(%rsp), %al
	movb	%al, 13215(%rsp)
	movb	56(%rsp), %al
	movb	%al, 13216(%rsp)
	movb	57(%rsp), %al
	movb	%al, 13217(%rsp)
	movb	58(%rsp), %al
	movb	%al, 13218(%rsp)
	movb	59(%rsp), %al
	movb	%al, 13219(%rsp)
	movb	60(%rsp), %al
	movb	%al, 13220(%rsp)
	movb	61(%rsp), %al
	movb	%al, 13221(%rsp)
	movb	62(%rsp), %al
	movb	%al, 13222(%rsp)
	movb	63(%rsp), %al
	movb	%al, 13223(%rsp)
	movb	64(%rsp), %al
	movb	%al, 13224(%rsp)
	movb	65(%rsp), %al
	movb	%al, 13225(%rsp)
	movb	66(%rsp), %al
	movb	%al, 13226(%rsp)
	movb	67(%rsp), %al
	movb	%al, 13227(%rsp)
	movb	68(%rsp), %al
	movb	%al, 13228(%rsp)
	movb	69(%rsp), %al
	movb	%al, 13229(%rsp)
	movb	70(%rsp), %al
	movb	%al, 13230(%rsp)
	movb	71(%rsp), %al
	movb	%al, 13231(%rsp)
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$195
	movb	$0, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$196
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$195:
	movb	$0, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$196:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$194:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$184
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$185:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$193:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$186
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$187:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$188
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$186
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$188:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$192
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$192:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$186
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$186
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$191:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$190:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$189:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$186:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$187
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$184:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$185
	xorq	%rax, %rax
	leaq	8592(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$182
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$183:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$182:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$183
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$180
	movb	$0, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$181
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$180:
	movb	$1, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$181:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$179:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$169
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$170:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$178:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$171
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$172:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$173
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$171
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$173:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$177
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$177:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$171
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$171
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$176:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$175:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$174:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$171:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$172
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$169:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$170
	xorq	%rax, %rax
	leaq	9104(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$167
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$168:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$167:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$168
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$165
	movb	$0, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$166
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$165:
	movb	$2, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$166:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$164:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$154
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$155:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$163:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$156
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$157:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$158
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$156
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$158:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$162
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$162:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$156
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$156
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$161:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$160:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$159:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$156:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$157
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$154:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$155
	xorq	%rax, %rax
	leaq	9616(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$152
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$153:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$152:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$153
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$150
	movb	$1, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$151
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$150:
	movb	$0, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$151:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$149:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$139
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$140:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$148:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$141
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$142:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$143
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$141
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$143:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$147
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$147:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$141
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$141
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$146:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$145:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$144:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$141:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$142
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$139:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$140
	xorq	%rax, %rax
	leaq	10128(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$137
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$138:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$137:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$138
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$135
	movb	$1, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$136
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$135:
	movb	$1, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$136:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$134:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$124
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$125:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$133:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$126
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$127:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$128
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$126
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$128:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$132
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$132:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$126
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$126
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$131:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$130:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$129:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$126:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$127
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$124:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$125
	xorq	%rax, %rax
	leaq	10640(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$122
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$123:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$122:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$123
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$120
	movb	$1, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$121
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$120:
	movb	$2, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$121:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$119:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$109
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$110:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$118:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$111
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$112:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$113
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$111
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$113:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$117
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$117:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$111
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$111
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$116:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$115:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$114:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$111:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$112
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$109:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$110
	xorq	%rax, %rax
	leaq	11152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$107
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$108:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$107:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$108
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$105
	movb	$2, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$106
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$105:
	movb	$0, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$106:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$104:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$94
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$95:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$103:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$96
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$97:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$98
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$96
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$98:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$102
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$102:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$96
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$96
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$101:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$100:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$99:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$96:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$97
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$94:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$95
	xorq	%rax, %rax
	leaq	11664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$92
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$93:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$92:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$93
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$90
	movb	$2, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$91
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$90:
	movb	$1, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$91:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$89:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$79
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$80:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$88:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$81
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$82:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$83
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$81
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$83:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$87
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$87:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$81
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$81
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$86:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$85:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$84:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$81:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$82
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$79:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$80
	xorq	%rax, %rax
	leaq	12176(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$77
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$78:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$77:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$78
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$75
	movb	$2, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$76
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$75:
	movb	$2, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$76:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$74:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$64
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$65:
	movq	%rax, 24(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$73:
	leaq	8(%rsp), %rsp
	movq	24(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$66
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$67:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$68
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$66
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$68:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$72
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$72:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$66
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$66
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$71:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$70:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$69:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$66:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$67
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$64:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$65
	xorq	%rax, %rax
	leaq	12688(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$62
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$63:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$62:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$63
	xorb	%al, %al
	leaq	3984(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$61:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	4496(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$60:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	5008(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$59:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	5520(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$58:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	6032(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$57:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	6544(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$56:
	leaq	176(%rsp), %rsp
	movb	$6, %al
	leaq	912(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$55:
	leaq	176(%rsp), %rsp
	leaq	3984(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$54:
	leaq	4496(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$53:
	leaq	5008(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$52:
	leaq	7056(%rsp), %r9
	leaq	8592(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$51:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	9104(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$50:
	leaq	16(%rsp), %rsp
	leaq	7056(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$49:
	leaq	1424(%rsp), %r9
	leaq	9616(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$48:
	leaq	16(%rsp), %rsp
	leaq	7056(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$47:
	leaq	7056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$45
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$46:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$45:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$46
	leaq	7568(%rsp), %r9
	leaq	10128(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$44:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	10640(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$43:
	leaq	16(%rsp), %rsp
	leaq	7568(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$42:
	leaq	1424(%rsp), %r9
	leaq	11152(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$41:
	leaq	16(%rsp), %rsp
	leaq	7568(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$40:
	leaq	7568(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$38
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$39:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$38:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$39
	leaq	8080(%rsp), %r9
	leaq	11664(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$37:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	12176(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$36:
	leaq	16(%rsp), %rsp
	leaq	8080(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$35:
	leaq	1424(%rsp), %r9
	leaq	12688(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$34:
	leaq	16(%rsp), %rsp
	leaq	8080(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$33:
	leaq	8080(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$31
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$32:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$31:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$32
	leaq	1424(%rsp), %r9
	leaq	2448(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$30:
	leaq	16(%rsp), %rsp
	leaq	1936(%rsp), %r9
	leaq	2960(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$29:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %rcx
	leaq	1936(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$28:
	leaq	1936(%rsp), %r9
	leaq	3472(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$27:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %rcx
	leaq	1936(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$26:
	leaq	1424(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$24
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$25:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$24:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$25
	leaq	7056(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$23:
	leaq	7568(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$22:
	leaq	8080(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$21:
	leaq	1424(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$20:
	leaq	7056(%rsp), %rcx
	leaq	5520(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$19:
	leaq	7568(%rsp), %rcx
	leaq	6032(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$18:
	leaq	8080(%rsp), %rcx
	leaq	6544(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$17:
	leaq	1424(%rsp), %rcx
	leaq	912(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$16:
	leaq	1424(%rsp), %rcx
	leaq	400(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$15:
	leaq	7056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$13
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$13:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$14
	leaq	7568(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$11
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$11:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$12
	leaq	8080(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$9
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$10:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$9:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$10
	leaq	1424(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$7
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$8:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$7:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$8
	movq	8(%rsp), %rax
	xorq	%r8, %r8
	xorq	%r11, %r11
	leaq	7056(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$6:
	leaq	7568(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$5:
	leaq	8080(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$4:
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$2
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$3:
	movzwq	7056(%rsp,%r8,2), %rcx
	incq	%r8
	shlq	$10, %rcx
	addq	$1665, %rcx
	imulq	$1290167, %rcx, %rcx
	shrq	$32, %rcx
	andq	$1023, %rcx
	movzwq	7056(%rsp,%r8,2), %rdx
	incq	%r8
	shlq	$10, %rdx
	addq	$1665, %rdx
	imulq	$1290167, %rdx, %rdx
	shrq	$32, %rdx
	andq	$1023, %rdx
	movzwq	7056(%rsp,%r8,2), %r9
	incq	%r8
	shlq	$10, %r9
	addq	$1665, %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movzwq	7056(%rsp,%r8,2), %r10
	incq	%r8
	shlq	$10, %r10
	addq	$1665, %r10
	imulq	$1290167, %r10, %r10
	shrq	$32, %r10
	andq	$1023, %r10
	movw	%cx, %bx
	andw	$255, %bx
	movb	%bl, (%rax,%r11)
	incq	%r11
	shrw	$8, %cx
	movw	%dx, %bx
	shlw	$2, %bx
	orw 	%cx, %bx
	movb	%bl, (%rax,%r11)
	incq	%r11
	shrw	$6, %dx
	movw	%r9w, %cx
	shlw	$4, %cx
	orw 	%dx, %cx
	movb	%cl, (%rax,%r11)
	incq	%r11
	shrw	$4, %r9w
	movw	%r10w, %cx
	shlw	$6, %cx
	orw 	%r9w, %cx
	movb	%cl, (%rax,%r11)
	incq	%r11
	shrq	$2, %r10
	movb	%r10b, (%rax,%r11)
	incq	%r11
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$2:
	cmpq	$765, %r8
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc$3
	addq	$960, %rax
	leaq	1424(%rsp), %rcx
	call	L_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc$1:
	movq	16(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	144(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	152(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	160(%rsp), %rcx
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	13408(%rsp), %rbx
	movq	13416(%rsp), %rbp
	movq	13424(%rsp), %rsi
	movq	13432(%rsp), %rdi
	movq	13440(%rsp), %r12
	movq	13448(%rsp), %r13
	movq	13456(%rsp), %r14
	movq	13464(%rsp), %r15
	movq	13472(%rsp), %rsp
	ret
_jade_kem_mlkem_mlkem768_amd64_ref_keypair:
jade_kem_mlkem_mlkem768_amd64_ref_keypair:
	movq	%rsp, %rax
	leaq	-10456(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%rsi, 10400(%rsp)
	movq	%rdi, 10408(%rsp)
	movq	%r12, 10416(%rsp)
	movq	%r13, 10424(%rsp)
	movq	%r14, 10432(%rsp)
	movq	%r15, 10440(%rsp)
	movq	%rax, 10448(%rsp)
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	leaq	120(%rsp), %rcx
	movq	$64, %rdx
	call	__jasmin_syscall_randombytes__
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbp, 32(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 80(%rsp)
	leaq	184(%rsp), %rcx
	leaq	56(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_sha3512_32$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$188:
	leaq	208(%rsp), %rsp
	movq	184(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 80(%rsp)
	xorq	%rax, %rax
	movq	%rax, 40(%rsp)
	movb	88(%rsp), %al
	movb	%al, 10176(%rsp)
	movb	89(%rsp), %al
	movb	%al, 10177(%rsp)
	movb	90(%rsp), %al
	movb	%al, 10178(%rsp)
	movb	91(%rsp), %al
	movb	%al, 10179(%rsp)
	movb	92(%rsp), %al
	movb	%al, 10180(%rsp)
	movb	93(%rsp), %al
	movb	%al, 10181(%rsp)
	movb	94(%rsp), %al
	movb	%al, 10182(%rsp)
	movb	95(%rsp), %al
	movb	%al, 10183(%rsp)
	movb	96(%rsp), %al
	movb	%al, 10184(%rsp)
	movb	97(%rsp), %al
	movb	%al, 10185(%rsp)
	movb	98(%rsp), %al
	movb	%al, 10186(%rsp)
	movb	99(%rsp), %al
	movb	%al, 10187(%rsp)
	movb	100(%rsp), %al
	movb	%al, 10188(%rsp)
	movb	101(%rsp), %al
	movb	%al, 10189(%rsp)
	movb	102(%rsp), %al
	movb	%al, 10190(%rsp)
	movb	103(%rsp), %al
	movb	%al, 10191(%rsp)
	movb	104(%rsp), %al
	movb	%al, 10192(%rsp)
	movb	105(%rsp), %al
	movb	%al, 10193(%rsp)
	movb	106(%rsp), %al
	movb	%al, 10194(%rsp)
	movb	107(%rsp), %al
	movb	%al, 10195(%rsp)
	movb	108(%rsp), %al
	movb	%al, 10196(%rsp)
	movb	109(%rsp), %al
	movb	%al, 10197(%rsp)
	movb	110(%rsp), %al
	movb	%al, 10198(%rsp)
	movb	111(%rsp), %al
	movb	%al, 10199(%rsp)
	movb	112(%rsp), %al
	movb	%al, 10200(%rsp)
	movb	113(%rsp), %al
	movb	%al, 10201(%rsp)
	movb	114(%rsp), %al
	movb	%al, 10202(%rsp)
	movb	115(%rsp), %al
	movb	%al, 10203(%rsp)
	movb	116(%rsp), %al
	movb	%al, 10204(%rsp)
	movb	117(%rsp), %al
	movb	%al, 10205(%rsp)
	movb	118(%rsp), %al
	movb	%al, 10206(%rsp)
	movb	119(%rsp), %al
	movb	%al, 10207(%rsp)
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$186
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$187
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$186:
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$187:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$185:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$175
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$176:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$184:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$177
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$178:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$179
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$177
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$179:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$183
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$183:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$177
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$177
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$182:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$181:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$180:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$177:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$178
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$175:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$176
	xorq	%rax, %rax
	leaq	5568(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$173
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$174:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$173:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$174
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$171
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$172
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$171:
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$172:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$170:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$160
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$161:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$169:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$162
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$163:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$164
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$162
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$164:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$168
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$168:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$162
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$162
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$167:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$166:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$165:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$162:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$163
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$160:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$161
	xorq	%rax, %rax
	leaq	6080(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$158
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$159:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$158:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$159
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$156
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$157
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$156:
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$157:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$155:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$145
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$146:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$154:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$147
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$148:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$149
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$147
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$149:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$153
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$153:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$147
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$147
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$152:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$151:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$150:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$147:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$148
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$145:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$146
	xorq	%rax, %rax
	leaq	6592(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$143
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$144:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$143:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$144
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$141
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$142
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$141:
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$142:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$140:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$130
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$131:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$139:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$132
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$133:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$134
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$132
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$134:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$138
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$138:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$132
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$132
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$137:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$136:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$135:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$132:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$133
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$130:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$131
	xorq	%rax, %rax
	leaq	7104(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$128
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$129:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$129
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$126
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$127
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$126:
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$127:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$125:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$115
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$116:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$124:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$117
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$118:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$119
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$117
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$119:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$123
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$123:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$117
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$117
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$122:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$121:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$120:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$117:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$118
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$115:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$116
	xorq	%rax, %rax
	leaq	7616(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$113
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$114:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$113:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$114
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$111
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$112
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$111:
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$112:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$110:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$100
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$101:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$109:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$102
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$103:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$104
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$102
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$104:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$108
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$108:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$102
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$102
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$107:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$106:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$105:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$102:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$103
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$100:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$101
	xorq	%rax, %rax
	leaq	8128(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$98
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$99:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$99
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$96
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$97
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$96:
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$97:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$95:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$85
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$86:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$94:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$87
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$88:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$89
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$87
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$89:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$93
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$93:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$87
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$87
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$92:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$91:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$90:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$87:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$88
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$85:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$86
	xorq	%rax, %rax
	leaq	8640(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$83
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$84:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$83:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$84
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$81
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$82
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$81:
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$82:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$80:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$70
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$71:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$79:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$72
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$73:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$74
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$72
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$74:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$78
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$78:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$72
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$72
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$77:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$76:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$75:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$72:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$73
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$70:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$71
	xorq	%rax, %rax
	leaq	9152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$68
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$69:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$68:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$69
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$66
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$67
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$66:
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$67:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$65:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$55
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$56:
	movq	%rax, 40(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$64:
	leaq	8(%rsp), %rsp
	movq	40(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$57
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$58:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$59
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$57
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$59:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$63
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$63:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$57
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$57
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$62:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$61:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$60:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$57:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$58
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$55:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$56
	xorq	%rax, %rax
	leaq	9664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$53
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$54:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$53:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$54
	xorb	%al, %al
	leaq	960(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$52:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	1472(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$51:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	1984(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$50:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	2496(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$49:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	3008(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$48:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	3520(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$47:
	leaq	176(%rsp), %rsp
	leaq	960(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$46:
	leaq	1472(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$45:
	leaq	1984(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$44:
	leaq	2496(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$43:
	leaq	3008(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$42:
	leaq	3520(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$41:
	leaq	4032(%rsp), %r9
	leaq	5568(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$40:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	6080(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$39:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$38:
	leaq	448(%rsp), %r9
	leaq	6592(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$37:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$36:
	leaq	4032(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$34
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$35:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$34:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$35
	leaq	4032(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$33:
	leaq	4544(%rsp), %r9
	leaq	7104(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$32:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	7616(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$31:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$30:
	leaq	448(%rsp), %r9
	leaq	8128(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$29:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$28:
	leaq	4544(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$26
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$27:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$26:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$27
	leaq	4544(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$25:
	leaq	5056(%rsp), %r9
	leaq	8640(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$24:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	9152(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$23:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$22:
	leaq	448(%rsp), %r9
	leaq	9664(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$21:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$20:
	leaq	5056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$18
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$19:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$18:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$19
	leaq	5056(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$17:
	leaq	4032(%rsp), %rcx
	leaq	2496(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$16:
	leaq	4544(%rsp), %rcx
	leaq	3008(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$15:
	leaq	5056(%rsp), %rcx
	leaq	3520(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$14:
	leaq	4032(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$12
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$13:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$12:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$13
	leaq	4544(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$10
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$11:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$10:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$11
	leaq	5056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$8
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$9:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$8:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$9
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, %r8
	leaq	960(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$7:
	addq	$384, %r8
	leaq	1472(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$6:
	addq	$384, %r8
	leaq	1984(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$5:
	movq	%rax, %r8
	leaq	4032(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$4:
	addq	$384, %r8
	leaq	4544(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$3:
	addq	$384, %r8
	leaq	5056(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$2:
	addq	$1152, %rax
	movq	88(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	96(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	104(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	addq	$1152, %rax
	movq	8(%rsp), %rcx
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
	addq	$2336, 16(%rsp)
	movq	8(%rsp), %r10
	movq	$1184, %rax
	leaq	88(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair$1:
	leaq	232(%rsp), %rsp
	movq	16(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	104(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	112(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rsp), %rcx
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
	movq	10400(%rsp), %rsi
	movq	10408(%rsp), %rdi
	movq	10416(%rsp), %r12
	movq	10424(%rsp), %r13
	movq	10432(%rsp), %r14
	movq	10440(%rsp), %r15
	movq	10448(%rsp), %rsp
	ret
_jade_kem_mlkem_mlkem768_amd64_ref_enc_derand:
jade_kem_mlkem_mlkem768_amd64_ref_enc_derand:
	movq	%rsp, %rax
	leaq	-13480(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 13408(%rsp)
	movq	%rbp, 13416(%rsp)
	movq	%rsi, 13424(%rsp)
	movq	%rdi, 13432(%rsp)
	movq	%r12, 13440(%rsp)
	movq	%r13, 13448(%rsp)
	movq	%r14, 13456(%rsp)
	movq	%r15, 13464(%rsp)
	movq	%rax, 13472(%rsp)
	movb	(%r9), %al
	movb	%al, 40(%rsp)
	movb	1(%r9), %al
	movb	%al, 41(%rsp)
	movb	2(%r9), %al
	movb	%al, 42(%rsp)
	movb	3(%r9), %al
	movb	%al, 43(%rsp)
	movb	4(%r9), %al
	movb	%al, 44(%rsp)
	movb	5(%r9), %al
	movb	%al, 45(%rsp)
	movb	6(%r9), %al
	movb	%al, 46(%rsp)
	movb	7(%r9), %al
	movb	%al, 47(%rsp)
	movb	8(%r9), %al
	movb	%al, 48(%rsp)
	movb	9(%r9), %al
	movb	%al, 49(%rsp)
	movb	10(%r9), %al
	movb	%al, 50(%rsp)
	movb	11(%r9), %al
	movb	%al, 51(%rsp)
	movb	12(%r9), %al
	movb	%al, 52(%rsp)
	movb	13(%r9), %al
	movb	%al, 53(%rsp)
	movb	14(%r9), %al
	movb	%al, 54(%rsp)
	movb	15(%r9), %al
	movb	%al, 55(%rsp)
	movb	16(%r9), %al
	movb	%al, 56(%rsp)
	movb	17(%r9), %al
	movb	%al, 57(%rsp)
	movb	18(%r9), %al
	movb	%al, 58(%rsp)
	movb	19(%r9), %al
	movb	%al, 59(%rsp)
	movb	20(%r9), %al
	movb	%al, 60(%rsp)
	movb	21(%r9), %al
	movb	%al, 61(%rsp)
	movb	22(%r9), %al
	movb	%al, 62(%rsp)
	movb	23(%r9), %al
	movb	%al, 63(%rsp)
	movb	24(%r9), %al
	movb	%al, 64(%rsp)
	movb	25(%r9), %al
	movb	%al, 65(%rsp)
	movb	26(%r9), %al
	movb	%al, 66(%rsp)
	movb	27(%r9), %al
	movb	%al, 67(%rsp)
	movb	28(%r9), %al
	movb	%al, 68(%rsp)
	movb	29(%r9), %al
	movb	%al, 69(%rsp)
	movb	30(%r9), %al
	movb	%al, 70(%rsp)
	movb	31(%r9), %al
	movb	%al, 71(%rsp)
	leaq	40(%rsp), %rax
	movq	%r8, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 96(%rsp)
	movq	(%rsp), %r10
	movq	$1184, %rax
	leaq	104(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$204:
	leaq	232(%rsp), %rsp
	leaq	136(%rsp), %rax
	leaq	72(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$203:
	leaq	208(%rsp), %rsp
	movq	(%rsp), %rcx
	leaq	72(%rsp), %rax
	leaq	168(%rsp), %rdx
	movq	%rdx, (%rsp)
	movq	%rcx, %rdx
	leaq	2448(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$202:
	addq	$384, %rdx
	leaq	2960(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$201:
	addq	$384, %rdx
	leaq	3472(%rsp), %r9
	call	L_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$200:
	xorq	%rdx, %rdx
	addq	$1152, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$198
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$199:
	movq	(%rcx), %r8
	movq	%r8, 40(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$198:
	cmpq	$4, %rdx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$199
	leaq	400(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$197:
	movq	$1, %rax
	movq	%rax, 24(%rsp)
	movb	40(%rsp), %al
	movb	%al, 13200(%rsp)
	movb	41(%rsp), %al
	movb	%al, 13201(%rsp)
	movb	42(%rsp), %al
	movb	%al, 13202(%rsp)
	movb	43(%rsp), %al
	movb	%al, 13203(%rsp)
	movb	44(%rsp), %al
	movb	%al, 13204(%rsp)
	movb	45(%rsp), %al
	movb	%al, 13205(%rsp)
	movb	46(%rsp), %al
	movb	%al, 13206(%rsp)
	movb	47(%rsp), %al
	movb	%al, 13207(%rsp)
	movb	48(%rsp), %al
	movb	%al, 13208(%rsp)
	movb	49(%rsp), %al
	movb	%al, 13209(%rsp)
	movb	50(%rsp), %al
	movb	%al, 13210(%rsp)
	movb	51(%rsp), %al
	movb	%al, 13211(%rsp)
	movb	52(%rsp), %al
	movb	%al, 13212(%rsp)
	movb	53(%rsp), %al
	movb	%al, 13213(%rsp)
	movb	54(%rsp), %al
	movb	%al, 13214(%rsp)
	movb	55(%rsp), %al
	movb	%al, 13215(%rsp)
	movb	56(%rsp), %al
	movb	%al, 13216(%rsp)
	movb	57(%rsp), %al
	movb	%al, 13217(%rsp)
	movb	58(%rsp), %al
	movb	%al, 13218(%rsp)
	movb	59(%rsp), %al
	movb	%al, 13219(%rsp)
	movb	60(%rsp), %al
	movb	%al, 13220(%rsp)
	movb	61(%rsp), %al
	movb	%al, 13221(%rsp)
	movb	62(%rsp), %al
	movb	%al, 13222(%rsp)
	movb	63(%rsp), %al
	movb	%al, 13223(%rsp)
	movb	64(%rsp), %al
	movb	%al, 13224(%rsp)
	movb	65(%rsp), %al
	movb	%al, 13225(%rsp)
	movb	66(%rsp), %al
	movb	%al, 13226(%rsp)
	movb	67(%rsp), %al
	movb	%al, 13227(%rsp)
	movb	68(%rsp), %al
	movb	%al, 13228(%rsp)
	movb	69(%rsp), %al
	movb	%al, 13229(%rsp)
	movb	70(%rsp), %al
	movb	%al, 13230(%rsp)
	movb	71(%rsp), %al
	movb	%al, 13231(%rsp)
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$195
	movb	$0, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$196
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$195:
	movb	$0, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$196:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$194:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$184
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$185:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$193:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$186
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$187:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$188
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$186
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$188:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$192
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$192:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$186
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$186
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$191:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$190:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$189:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$186:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$187
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$184:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$185
	xorq	%rax, %rax
	leaq	8592(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$182
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$183:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$182:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$183
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$180
	movb	$0, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$181
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$180:
	movb	$1, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$181:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$179:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$169
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$170:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$178:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$171
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$172:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$173
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$171
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$173:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$177
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$177:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$171
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$171
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$176:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$175:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$174:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$171:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$172
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$169:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$170
	xorq	%rax, %rax
	leaq	9104(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$167
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$168:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$167:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$168
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$165
	movb	$0, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$166
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$165:
	movb	$2, 13232(%rsp)
	movb	$0, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$166:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$164:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$154
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$155:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$163:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$156
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$157:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$158
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$156
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$158:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$162
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$162:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$156
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$156
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$161:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$160:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$159:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$156:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$157
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$154:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$155
	xorq	%rax, %rax
	leaq	9616(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$152
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$153:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$152:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$153
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$150
	movb	$1, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$151
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$150:
	movb	$0, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$151:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$149:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$139
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$140:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$148:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$141
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$142:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$143
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$141
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$143:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$147
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$147:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$141
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$141
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$146:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$145:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$144:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$141:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$142
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$139:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$140
	xorq	%rax, %rax
	leaq	10128(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$137
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$138:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$137:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$138
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$135
	movb	$1, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$136
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$135:
	movb	$1, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$136:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$134:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$124
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$125:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$133:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$126
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$127:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$128
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$126
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$128:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$132
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$132:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$126
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$126
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$131:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$130:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$129:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$126:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$127
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$124:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$125
	xorq	%rax, %rax
	leaq	10640(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$122
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$123:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$122:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$123
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$120
	movb	$1, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$121
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$120:
	movb	$2, 13232(%rsp)
	movb	$1, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$121:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$119:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$109
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$110:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$118:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$111
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$112:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$113
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$111
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$113:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$117
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$117:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$111
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$111
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$116:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$115:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$114:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$111:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$112
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$109:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$110
	xorq	%rax, %rax
	leaq	11152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$107
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$108:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$107:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$108
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$105
	movb	$2, 13232(%rsp)
	movb	$0, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$106
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$105:
	movb	$0, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$106:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$104:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$94
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$95:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$103:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$96
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$97:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$98
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$96
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$98:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$102
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$102:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$96
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$96
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$101:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$100:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$99:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$96:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$97
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$94:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$95
	xorq	%rax, %rax
	leaq	11664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$92
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$93:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$92:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$93
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$90
	movb	$2, 13232(%rsp)
	movb	$1, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$91
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$90:
	movb	$1, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$91:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$89:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$79
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$80:
	movq	%rax, 32(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$88:
	leaq	8(%rsp), %rsp
	movq	32(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$81
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$82:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$83
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$81
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$83:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$87
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$87:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$81
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$81
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$86:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$85:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$84:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$81:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$82
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$79:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$80
	xorq	%rax, %rax
	leaq	12176(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$77
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$78:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$77:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$78
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$75
	movb	$2, 13232(%rsp)
	movb	$2, 13233(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$76
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$75:
	movb	$2, 13232(%rsp)
	movb	$2, 13233(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$76:
	leaq	200(%rsp), %rax
	leaq	13200(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$74:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$64
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$65:
	movq	%rax, 24(%rsp)
	leaq	200(%rsp), %rax
	leaq	13234(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$73:
	leaq	8(%rsp), %rsp
	movq	24(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$66
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$67:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$68
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$66
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$68:
	movzbw	13234(%rsp,%rcx), %dx
	movzbw	13235(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	13236(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$72
	movw	%dx, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$72:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$66
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$66
	movw	%r9w, 912(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$71:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$70:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$69:
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$66:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$67
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$64:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$65
	xorq	%rax, %rax
	leaq	12688(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$62
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$63:
	movw	912(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$62:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$63
	xorb	%al, %al
	leaq	3984(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$61:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	4496(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$60:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	5008(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$59:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	5520(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$58:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	6032(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$57:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	6544(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$56:
	leaq	176(%rsp), %rsp
	movb	$6, %al
	leaq	912(%rsp), %rdx
	movq	(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$55:
	leaq	176(%rsp), %rsp
	leaq	3984(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$54:
	leaq	4496(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$53:
	leaq	5008(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$52:
	leaq	7056(%rsp), %r9
	leaq	8592(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$51:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	9104(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$50:
	leaq	16(%rsp), %rsp
	leaq	7056(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$49:
	leaq	1424(%rsp), %r9
	leaq	9616(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$48:
	leaq	16(%rsp), %rsp
	leaq	7056(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$47:
	leaq	7056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$45
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$46:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$45:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$46
	leaq	7568(%rsp), %r9
	leaq	10128(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$44:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	10640(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$43:
	leaq	16(%rsp), %rsp
	leaq	7568(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$42:
	leaq	1424(%rsp), %r9
	leaq	11152(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$41:
	leaq	16(%rsp), %rsp
	leaq	7568(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$40:
	leaq	7568(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$38
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$39:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$38:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$39
	leaq	8080(%rsp), %r9
	leaq	11664(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$37:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %r9
	leaq	12176(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$36:
	leaq	16(%rsp), %rsp
	leaq	8080(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$35:
	leaq	1424(%rsp), %r9
	leaq	12688(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$34:
	leaq	16(%rsp), %rsp
	leaq	8080(%rsp), %rcx
	leaq	1424(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$33:
	leaq	8080(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$31
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$32:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$31:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$32
	leaq	1424(%rsp), %r9
	leaq	2448(%rsp), %rcx
	leaq	3984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$30:
	leaq	16(%rsp), %rsp
	leaq	1936(%rsp), %r9
	leaq	2960(%rsp), %rcx
	leaq	4496(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$29:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %rcx
	leaq	1936(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$28:
	leaq	1936(%rsp), %r9
	leaq	3472(%rsp), %rcx
	leaq	5008(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$27:
	leaq	16(%rsp), %rsp
	leaq	1424(%rsp), %rcx
	leaq	1936(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$26:
	leaq	1424(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$24
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$25:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$24:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$25
	leaq	7056(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$23:
	leaq	7568(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$22:
	leaq	8080(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$21:
	leaq	1424(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$20:
	leaq	7056(%rsp), %rcx
	leaq	5520(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$19:
	leaq	7568(%rsp), %rcx
	leaq	6032(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$18:
	leaq	8080(%rsp), %rcx
	leaq	6544(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$17:
	leaq	1424(%rsp), %rcx
	leaq	912(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$16:
	leaq	1424(%rsp), %rcx
	leaq	400(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$15:
	leaq	7056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$13
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$13:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$14
	leaq	7568(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$11
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$11:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$12
	leaq	8080(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$9
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$10:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$9:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$10
	leaq	1424(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$7
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$8:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$7:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$8
	movq	8(%rsp), %rax
	xorq	%r8, %r8
	xorq	%r11, %r11
	leaq	7056(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$6:
	leaq	7568(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$5:
	leaq	8080(%rsp), %rcx
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$4:
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$2
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$3:
	movzwq	7056(%rsp,%r8,2), %rcx
	incq	%r8
	shlq	$10, %rcx
	addq	$1665, %rcx
	imulq	$1290167, %rcx, %rcx
	shrq	$32, %rcx
	andq	$1023, %rcx
	movzwq	7056(%rsp,%r8,2), %rdx
	incq	%r8
	shlq	$10, %rdx
	addq	$1665, %rdx
	imulq	$1290167, %rdx, %rdx
	shrq	$32, %rdx
	andq	$1023, %rdx
	movzwq	7056(%rsp,%r8,2), %r9
	incq	%r8
	shlq	$10, %r9
	addq	$1665, %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movzwq	7056(%rsp,%r8,2), %r10
	incq	%r8
	shlq	$10, %r10
	addq	$1665, %r10
	imulq	$1290167, %r10, %r10
	shrq	$32, %r10
	andq	$1023, %r10
	movw	%cx, %bx
	andw	$255, %bx
	movb	%bl, (%rax,%r11)
	incq	%r11
	shrw	$8, %cx
	movw	%dx, %bx
	shlw	$2, %bx
	orw 	%cx, %bx
	movb	%bl, (%rax,%r11)
	incq	%r11
	shrw	$6, %dx
	movw	%r9w, %cx
	shlw	$4, %cx
	orw 	%dx, %cx
	movb	%cl, (%rax,%r11)
	incq	%r11
	shrw	$4, %r9w
	movw	%r10w, %cx
	shlw	$6, %cx
	orw 	%r9w, %cx
	movb	%cl, (%rax,%r11)
	incq	%r11
	shrq	$2, %r10
	movb	%r10b, (%rax,%r11)
	incq	%r11
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$2:
	cmpq	$765, %r8
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$3
	addq	$960, %rax
	leaq	1424(%rsp), %rcx
	call	L_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_ref_enc_derand$1:
	movq	16(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	144(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	152(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	160(%rsp), %rcx
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	13408(%rsp), %rbx
	movq	13416(%rsp), %rbp
	movq	13424(%rsp), %rsi
	movq	13432(%rsp), %rdi
	movq	13440(%rsp), %r12
	movq	13448(%rsp), %r13
	movq	13456(%rsp), %r14
	movq	13464(%rsp), %r15
	movq	13472(%rsp), %rsp
	ret
_jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand:
jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand:
	movq	%rsp, %rax
	leaq	-10456(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%rsi, 10400(%rsp)
	movq	%rdi, 10408(%rsp)
	movq	%r12, 10416(%rsp)
	movq	%r13, 10424(%rsp)
	movq	%r14, 10432(%rsp)
	movq	%r15, 10440(%rsp)
	movq	%rax, 10448(%rsp)
	movb	(%r8), %al
	movb	%al, 120(%rsp)
	movb	1(%r8), %al
	movb	%al, 121(%rsp)
	movb	2(%r8), %al
	movb	%al, 122(%rsp)
	movb	3(%r8), %al
	movb	%al, 123(%rsp)
	movb	4(%r8), %al
	movb	%al, 124(%rsp)
	movb	5(%r8), %al
	movb	%al, 125(%rsp)
	movb	6(%r8), %al
	movb	%al, 126(%rsp)
	movb	7(%r8), %al
	movb	%al, 127(%rsp)
	movb	8(%r8), %al
	movb	%al, 128(%rsp)
	movb	9(%r8), %al
	movb	%al, 129(%rsp)
	movb	10(%r8), %al
	movb	%al, 130(%rsp)
	movb	11(%r8), %al
	movb	%al, 131(%rsp)
	movb	12(%r8), %al
	movb	%al, 132(%rsp)
	movb	13(%r8), %al
	movb	%al, 133(%rsp)
	movb	14(%r8), %al
	movb	%al, 134(%rsp)
	movb	15(%r8), %al
	movb	%al, 135(%rsp)
	movb	16(%r8), %al
	movb	%al, 136(%rsp)
	movb	17(%r8), %al
	movb	%al, 137(%rsp)
	movb	18(%r8), %al
	movb	%al, 138(%rsp)
	movb	19(%r8), %al
	movb	%al, 139(%rsp)
	movb	20(%r8), %al
	movb	%al, 140(%rsp)
	movb	21(%r8), %al
	movb	%al, 141(%rsp)
	movb	22(%r8), %al
	movb	%al, 142(%rsp)
	movb	23(%r8), %al
	movb	%al, 143(%rsp)
	movb	24(%r8), %al
	movb	%al, 144(%rsp)
	movb	25(%r8), %al
	movb	%al, 145(%rsp)
	movb	26(%r8), %al
	movb	%al, 146(%rsp)
	movb	27(%r8), %al
	movb	%al, 147(%rsp)
	movb	28(%r8), %al
	movb	%al, 148(%rsp)
	movb	29(%r8), %al
	movb	%al, 149(%rsp)
	movb	30(%r8), %al
	movb	%al, 150(%rsp)
	movb	31(%r8), %al
	movb	%al, 151(%rsp)
	movb	32(%r8), %al
	movb	%al, 152(%rsp)
	movb	33(%r8), %al
	movb	%al, 153(%rsp)
	movb	34(%r8), %al
	movb	%al, 154(%rsp)
	movb	35(%r8), %al
	movb	%al, 155(%rsp)
	movb	36(%r8), %al
	movb	%al, 156(%rsp)
	movb	37(%r8), %al
	movb	%al, 157(%rsp)
	movb	38(%r8), %al
	movb	%al, 158(%rsp)
	movb	39(%r8), %al
	movb	%al, 159(%rsp)
	movb	40(%r8), %al
	movb	%al, 160(%rsp)
	movb	41(%r8), %al
	movb	%al, 161(%rsp)
	movb	42(%r8), %al
	movb	%al, 162(%rsp)
	movb	43(%r8), %al
	movb	%al, 163(%rsp)
	movb	44(%r8), %al
	movb	%al, 164(%rsp)
	movb	45(%r8), %al
	movb	%al, 165(%rsp)
	movb	46(%r8), %al
	movb	%al, 166(%rsp)
	movb	47(%r8), %al
	movb	%al, 167(%rsp)
	movb	48(%r8), %al
	movb	%al, 168(%rsp)
	movb	49(%r8), %al
	movb	%al, 169(%rsp)
	movb	50(%r8), %al
	movb	%al, 170(%rsp)
	movb	51(%r8), %al
	movb	%al, 171(%rsp)
	movb	52(%r8), %al
	movb	%al, 172(%rsp)
	movb	53(%r8), %al
	movb	%al, 173(%rsp)
	movb	54(%r8), %al
	movb	%al, 174(%rsp)
	movb	55(%r8), %al
	movb	%al, 175(%rsp)
	movb	56(%r8), %al
	movb	%al, 176(%rsp)
	movb	57(%r8), %al
	movb	%al, 177(%rsp)
	movb	58(%r8), %al
	movb	%al, 178(%rsp)
	movb	59(%r8), %al
	movb	%al, 179(%rsp)
	movb	60(%r8), %al
	movb	%al, 180(%rsp)
	movb	61(%r8), %al
	movb	%al, 181(%rsp)
	movb	62(%r8), %al
	movb	%al, 182(%rsp)
	movb	63(%r8), %al
	movb	%al, 183(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 80(%rsp)
	leaq	184(%rsp), %rcx
	leaq	56(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_sha3512_32$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$188:
	leaq	208(%rsp), %rsp
	movq	184(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 80(%rsp)
	xorq	%rax, %rax
	movq	%rax, 40(%rsp)
	movb	88(%rsp), %al
	movb	%al, 10176(%rsp)
	movb	89(%rsp), %al
	movb	%al, 10177(%rsp)
	movb	90(%rsp), %al
	movb	%al, 10178(%rsp)
	movb	91(%rsp), %al
	movb	%al, 10179(%rsp)
	movb	92(%rsp), %al
	movb	%al, 10180(%rsp)
	movb	93(%rsp), %al
	movb	%al, 10181(%rsp)
	movb	94(%rsp), %al
	movb	%al, 10182(%rsp)
	movb	95(%rsp), %al
	movb	%al, 10183(%rsp)
	movb	96(%rsp), %al
	movb	%al, 10184(%rsp)
	movb	97(%rsp), %al
	movb	%al, 10185(%rsp)
	movb	98(%rsp), %al
	movb	%al, 10186(%rsp)
	movb	99(%rsp), %al
	movb	%al, 10187(%rsp)
	movb	100(%rsp), %al
	movb	%al, 10188(%rsp)
	movb	101(%rsp), %al
	movb	%al, 10189(%rsp)
	movb	102(%rsp), %al
	movb	%al, 10190(%rsp)
	movb	103(%rsp), %al
	movb	%al, 10191(%rsp)
	movb	104(%rsp), %al
	movb	%al, 10192(%rsp)
	movb	105(%rsp), %al
	movb	%al, 10193(%rsp)
	movb	106(%rsp), %al
	movb	%al, 10194(%rsp)
	movb	107(%rsp), %al
	movb	%al, 10195(%rsp)
	movb	108(%rsp), %al
	movb	%al, 10196(%rsp)
	movb	109(%rsp), %al
	movb	%al, 10197(%rsp)
	movb	110(%rsp), %al
	movb	%al, 10198(%rsp)
	movb	111(%rsp), %al
	movb	%al, 10199(%rsp)
	movb	112(%rsp), %al
	movb	%al, 10200(%rsp)
	movb	113(%rsp), %al
	movb	%al, 10201(%rsp)
	movb	114(%rsp), %al
	movb	%al, 10202(%rsp)
	movb	115(%rsp), %al
	movb	%al, 10203(%rsp)
	movb	116(%rsp), %al
	movb	%al, 10204(%rsp)
	movb	117(%rsp), %al
	movb	%al, 10205(%rsp)
	movb	118(%rsp), %al
	movb	%al, 10206(%rsp)
	movb	119(%rsp), %al
	movb	%al, 10207(%rsp)
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$186
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$187
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$186:
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$187:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$185:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$175
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$176:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$184:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$177
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$178:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$179
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$177
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$179:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$183
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$183:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$177
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$177
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$182:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$181:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$180:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$177:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$178
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$175:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$176
	xorq	%rax, %rax
	leaq	5568(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$173
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$174:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$173:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$174
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$171
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$172
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$171:
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$172:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$170:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$160
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$161:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$169:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$162
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$163:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$164
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$162
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$164:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$168
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$168:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$162
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$162
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$167:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$166:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$165:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$162:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$163
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$160:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$161
	xorq	%rax, %rax
	leaq	6080(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$158
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$159:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$158:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$159
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$156
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$157
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$156:
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$157:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$155:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$145
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$146:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$154:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$147
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$148:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$149
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$147
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$149:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$153
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$153:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$147
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$147
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$152:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$151:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$150:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$147:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$148
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$145:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$146
	xorq	%rax, %rax
	leaq	6592(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$143
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$144:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$143:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$144
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$141
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$142
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$141:
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$142:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$140:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$130
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$131:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$139:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$132
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$133:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$134
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$132
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$134:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$138
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$138:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$132
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$132
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$137:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$136:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$135:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$132:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$133
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$130:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$131
	xorq	%rax, %rax
	leaq	7104(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$128
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$129:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$129
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$126
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$127
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$126:
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$127:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$125:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$115
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$116:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$124:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$117
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$118:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$119
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$117
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$119:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$123
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$123:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$117
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$117
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$122:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$121:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$120:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$117:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$118
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$115:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$116
	xorq	%rax, %rax
	leaq	7616(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$113
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$114:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$113:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$114
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$111
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$112
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$111:
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$112:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$110:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$100
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$101:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$109:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$102
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$103:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$104
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$102
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$104:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$108
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$108:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$102
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$102
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$107:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$106:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$105:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$102:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$103
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$100:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$101
	xorq	%rax, %rax
	leaq	8128(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$98
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$99:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$99
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$96
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$97
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$96:
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$97:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$95:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$85
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$86:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$94:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$87
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$88:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$89
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$87
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$89:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$93
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$93:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$87
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$87
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$92:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$91:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$90:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$87:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$88
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$85:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$86
	xorq	%rax, %rax
	leaq	8640(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$83
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$84:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$83:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$84
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$81
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$82
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$81:
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$82:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$80:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$70
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$71:
	movq	%rax, 48(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$79:
	leaq	8(%rsp), %rsp
	movq	48(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$72
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$73:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$74
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$72
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$74:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$78
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$78:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$72
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$72
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$77:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$76:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$75:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$72:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$73
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$70:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$71
	xorq	%rax, %rax
	leaq	9152(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$68
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$69:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$68:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$69
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$66
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$67
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$66:
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$67:
	leaq	248(%rsp), %rax
	leaq	10176(%rsp), %rcx
	call	L_shake128_absorb34$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$65:
	xorq	%rax, %rax
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$55
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$56:
	movq	%rax, 40(%rsp)
	leaq	248(%rsp), %rax
	leaq	10210(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$64:
	leaq	8(%rsp), %rsp
	movq	40(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$57
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$58:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$59
	movq	$168, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$57
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$59:
	movzbw	10210(%rsp,%rcx), %dx
	movzbw	10211(%rsp,%rcx), %r8w
	movw	%r8w, %r9w
	shrw	$4, %r9w
	andw	$15, %r8w
	shlw	$8, %r8w
	orw 	%r8w, %dx
	movzbw	10212(%rsp,%rcx), %r8w
	shlw	$4, %r8w
	orw 	%r8w, %r9w
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$63
	movw	%dx, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$63:
	cmpw	$3329, %r9w
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$57
	cmpq	$256, %rax
	jnb 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$57
	movw	%r9w, 448(%rsp,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$62:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$61:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$60:
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$57:
	cmpq	$166, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$58
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$55:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$56
	xorq	%rax, %rax
	leaq	9664(%rsp), %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$53
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$54:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$53:
	cmpq	$256, %rax
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$54
	xorb	%al, %al
	leaq	960(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$52:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	1472(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$51:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	1984(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$50:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	2496(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$49:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	3008(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$48:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	3520(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$47:
	leaq	176(%rsp), %rsp
	leaq	960(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$46:
	leaq	1472(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$45:
	leaq	1984(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$44:
	leaq	2496(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$43:
	leaq	3008(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$42:
	leaq	3520(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$41:
	leaq	4032(%rsp), %r9
	leaq	5568(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$40:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	6080(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$39:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$38:
	leaq	448(%rsp), %r9
	leaq	6592(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$37:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$36:
	leaq	4032(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$34
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$35:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$34:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$35
	leaq	4032(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$33:
	leaq	4544(%rsp), %r9
	leaq	7104(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$32:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	7616(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$31:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$30:
	leaq	448(%rsp), %r9
	leaq	8128(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$29:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$28:
	leaq	4544(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$26
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$27:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$26:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$27
	leaq	4544(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$25:
	leaq	5056(%rsp), %r9
	leaq	8640(%rsp), %rcx
	leaq	960(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$24:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %r9
	leaq	9152(%rsp), %rcx
	leaq	1472(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$23:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$22:
	leaq	448(%rsp), %r9
	leaq	9664(%rsp), %rcx
	leaq	1984(%rsp), %rdx
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$21:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$20:
	leaq	5056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$18
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$19:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$18:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$19
	leaq	5056(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$17:
	leaq	4032(%rsp), %rcx
	leaq	2496(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$16:
	leaq	4544(%rsp), %rcx
	leaq	3008(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$15:
	leaq	5056(%rsp), %rcx
	leaq	3520(%rsp), %rdx
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$14:
	leaq	4032(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$12
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$13:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$12:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$13
	leaq	4544(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$10
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$11:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$10:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$11
	leaq	5056(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$8
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$9:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$8:
	cmpq	$256, %rcx
	jb  	Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$9
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, %r8
	leaq	960(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$7:
	addq	$384, %r8
	leaq	1472(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$6:
	addq	$384, %r8
	leaq	1984(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$5:
	movq	%rax, %r8
	leaq	4032(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$4:
	addq	$384, %r8
	leaq	4544(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$3:
	addq	$384, %r8
	leaq	5056(%rsp), %rcx
	call	L_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$2:
	addq	$1152, %rax
	movq	88(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	96(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	104(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	addq	$1152, %rax
	movq	8(%rsp), %rcx
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
	addq	$2336, 16(%rsp)
	movq	8(%rsp), %r10
	movq	$1184, %rax
	leaq	88(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
Ljade_kem_mlkem_mlkem768_amd64_ref_keypair_derand$1:
	leaq	232(%rsp), %rsp
	movq	16(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	104(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	112(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rsp), %rcx
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
	movq	10400(%rsp), %rsi
	movq	10408(%rsp), %rdi
	movq	10416(%rsp), %r12
	movq	10424(%rsp), %r13
	movq	10432(%rsp), %r14
	movq	10440(%rsp), %r15
	movq	10448(%rsp), %rsp
	ret
L_i_poly_tomsg$1:
	call	L_poly_csubq$1
L_i_poly_tomsg$2:
	xorb	%dl, %dl
	movw	(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	2(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	4(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	6(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	8(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	10(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	12(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	14(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, (%rax)
	xorb	%dl, %dl
	movw	16(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	18(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	20(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	22(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	24(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	26(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	28(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	30(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 1(%rax)
	xorb	%dl, %dl
	movw	32(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	34(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	36(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	38(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	40(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	42(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	44(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	46(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 2(%rax)
	xorb	%dl, %dl
	movw	48(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	50(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	52(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	54(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	56(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	58(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	60(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	62(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 3(%rax)
	xorb	%dl, %dl
	movw	64(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	66(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	68(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	70(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	72(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	74(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	76(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	78(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 4(%rax)
	xorb	%dl, %dl
	movw	80(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	82(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	84(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	86(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	88(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	90(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	92(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	94(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 5(%rax)
	xorb	%dl, %dl
	movw	96(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	98(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	100(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	102(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	104(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	106(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	108(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	110(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 6(%rax)
	xorb	%dl, %dl
	movw	112(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	114(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	116(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	118(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	120(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	122(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	124(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	126(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 7(%rax)
	xorb	%dl, %dl
	movw	128(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	130(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	132(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	134(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	136(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	138(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	140(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	142(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 8(%rax)
	xorb	%dl, %dl
	movw	144(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	146(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	148(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	150(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	152(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	154(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	156(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	158(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 9(%rax)
	xorb	%dl, %dl
	movw	160(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	162(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	164(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	166(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	168(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	170(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	172(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	174(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 10(%rax)
	xorb	%dl, %dl
	movw	176(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	178(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	180(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	182(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	184(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	186(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	188(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	190(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 11(%rax)
	xorb	%dl, %dl
	movw	192(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	194(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	196(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	198(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	200(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	202(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	204(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	206(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 12(%rax)
	xorb	%dl, %dl
	movw	208(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	210(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	212(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	214(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	216(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	218(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	220(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	222(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 13(%rax)
	xorb	%dl, %dl
	movw	224(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	226(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	228(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	230(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	232(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	234(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	236(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	238(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 14(%rax)
	xorb	%dl, %dl
	movw	240(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	242(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	244(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	246(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	248(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	250(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	252(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	254(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 15(%rax)
	xorb	%dl, %dl
	movw	256(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	258(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	260(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	262(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	264(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	266(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	268(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	270(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 16(%rax)
	xorb	%dl, %dl
	movw	272(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	274(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	276(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	278(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	280(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	282(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	284(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	286(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 17(%rax)
	xorb	%dl, %dl
	movw	288(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	290(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	292(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	294(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	296(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	298(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	300(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	302(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 18(%rax)
	xorb	%dl, %dl
	movw	304(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	306(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	308(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	310(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	312(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	314(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	316(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	318(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 19(%rax)
	xorb	%dl, %dl
	movw	320(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	322(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	324(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	326(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	328(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	330(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	332(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	334(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 20(%rax)
	xorb	%dl, %dl
	movw	336(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	338(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	340(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	342(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	344(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	346(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	348(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	350(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 21(%rax)
	xorb	%dl, %dl
	movw	352(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	354(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	356(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	358(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	360(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	362(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	364(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	366(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 22(%rax)
	xorb	%dl, %dl
	movw	368(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	370(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	372(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	374(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	376(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	378(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	380(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	382(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 23(%rax)
	xorb	%dl, %dl
	movw	384(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	386(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	388(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	390(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	392(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	394(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	396(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	398(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 24(%rax)
	xorb	%dl, %dl
	movw	400(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	402(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	404(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	406(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	408(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	410(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	412(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	414(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 25(%rax)
	xorb	%dl, %dl
	movw	416(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	418(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	420(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	422(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	424(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	426(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	428(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	430(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 26(%rax)
	xorb	%dl, %dl
	movw	432(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	434(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	436(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	438(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	440(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	442(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	444(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	446(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 27(%rax)
	xorb	%dl, %dl
	movw	448(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	450(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	452(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	454(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	456(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	458(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	460(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	462(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 28(%rax)
	xorb	%dl, %dl
	movw	464(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	466(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	468(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	470(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	472(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	474(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	476(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	478(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 29(%rax)
	xorb	%dl, %dl
	movw	480(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	482(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	484(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	486(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	488(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	490(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	492(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	494(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$7, %r9d
	orb 	%r9b, %dl
	movb	%dl, 30(%rax)
	xorb	%dl, %dl
	movw	496(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$0, %r9d
	orb 	%r9b, %dl
	movw	498(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$1, %r9d
	orb 	%r9b, %dl
	movw	500(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$2, %r9d
	orb 	%r9b, %dl
	movw	502(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$3, %r9d
	orb 	%r9b, %dl
	movw	504(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$4, %r9d
	orb 	%r9b, %dl
	movw	506(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$5, %r9d
	orb 	%r9b, %dl
	movw	508(%rcx), %r9w
	movzwl	%r9w, %r9d
	shll	$1, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$1, %r9d
	shll	$6, %r9d
	orb 	%r9b, %dl
	movw	510(%rcx), %cx
	movzwl	%cx, %ecx
	shll	$1, %ecx
	addl	$1665, %ecx
	imull	$80635, %ecx, %ecx
	shrl	$28, %ecx
	andl	$1, %ecx
	shll	$7, %ecx
	orb 	%cl, %dl
	movb	%dl, 31(%rax)
	ret
L_poly_tobytes$1:
	call	L_poly_csubq$1
L_poly_tobytes$4:
	xorq	%rdx, %rdx
	xorq	%r9, %r9
	jmp 	L_poly_tobytes$2
L_poly_tobytes$3:
	movw	(%rcx,%rdx,2), %r10w
	incq	%rdx
	movw	(%rcx,%rdx,2), %r11w
	incq	%rdx
	movw	%r10w, %bx
	andw	$255, %bx
	movb	%bl, (%r8,%r9)
	incq	%r9
	shrw	$8, %r10w
	movw	%r11w, %bx
	andw	$15, %bx
	shlw	$4, %bx
	orw 	%r10w, %bx
	movb	%bl, (%r8,%r9)
	incq	%r9
	shrw	$4, %r11w
	movb	%r11b, (%r8,%r9)
	incq	%r9
L_poly_tobytes$2:
	cmpq	$256, %rdx
	jb  	L_poly_tobytes$3
	ret
L_poly_sub$1:
	xorq	%r10, %r10
	jmp 	L_poly_sub$2
L_poly_sub$3:
	movw	(%rdx,%r10,2), %r11w
	movw	(%r9,%r10,2), %bx
	subw	%bx, %r11w
	movw	%r11w, (%rcx,%r10,2)
	incq	%r10
L_poly_sub$2:
	cmpq	$256, %r10
	jb  	L_poly_sub$3
	ret
L_poly_ntt$1:
	leaq	glob_data + 448(%rip), %rdx
	xorq	%r9, %r9
	movq	$128, %r10
	jmp 	L_poly_ntt$4
L_poly_ntt$5:
	xorq	%rbp, %rbp
	jmp 	L_poly_ntt$6
L_poly_ntt$7:
	incq	%r9
	movw	(%rdx,%r9,2), %r11w
	movq	%rbp, %rbx
	addq	%r10, %rbp
	jmp 	L_poly_ntt$8
L_poly_ntt$9:
	movw	(%rcx,%rbx,2), %di
	movw	%di, %si
	movq	%rbx, %r12
	addq	%r10, %r12
	movw	(%rcx,%r12,2), %r13w
	movswl	%r13w, %r13d
	movswl	%r11w, %r14d
	imull	%r14d, %r13d
	imull	$-218038272, %r13d, %r14d
	sarl	$16, %r14d
	imull	$-3329, %r14d, %r14d
	addl	%r13d, %r14d
	sarl	$16, %r14d
	subw	%r14w, %si
	addw	%di, %r14w
	movw	%si, (%rcx,%r12,2)
	movw	%r14w, (%rcx,%rbx,2)
	incq	%rbx
L_poly_ntt$8:
	cmpq	%rbp, %rbx
	jb  	L_poly_ntt$9
	movq	%rbx, %rbp
	addq	%r10, %rbp
L_poly_ntt$6:
	cmpq	$256, %rbp
	jb  	L_poly_ntt$7
	shrq	$1, %r10
L_poly_ntt$4:
	cmpq	$2, %r10
	jnb 	L_poly_ntt$5
	xorq	%rdx, %rdx
	jmp 	L_poly_ntt$2
L_poly_ntt$3:
	movw	(%rcx,%rdx,2), %r9w
	movswl	%r9w, %r10d
	imull	$20159, %r10d, %r10d
	sarl	$26, %r10d
	imull	$3329, %r10d, %r10d
	subw	%r10w, %r9w
	movw	%r9w, (%rcx,%rdx,2)
	incq	%rdx
L_poly_ntt$2:
	cmpq	$256, %rdx
	jb  	L_poly_ntt$3
	ret
L_poly_invntt$1:
	leaq	glob_data + 192(%rip), %rdx
	xorq	%r9, %r9
	movq	$2, %r10
	jmp 	L_poly_invntt$4
L_poly_invntt$5:
	xorq	%rbp, %rbp
	jmp 	L_poly_invntt$6
L_poly_invntt$7:
	movw	(%rdx,%r9,2), %r11w
	incq	%r9
	movq	%rbp, %rbx
	addq	%r10, %rbp
	jmp 	L_poly_invntt$8
L_poly_invntt$9:
	movw	(%rcx,%rbx,2), %di
	movq	%rbx, %rsi
	addq	%r10, %rsi
	movw	(%rcx,%rsi,2), %r12w
	movw	%r12w, %r13w
	addw	%di, %r13w
	movswl	%r13w, %r14d
	imull	$20159, %r14d, %r14d
	sarl	$26, %r14d
	imull	$3329, %r14d, %r14d
	subw	%r14w, %r13w
	movw	%r13w, (%rcx,%rbx,2)
	subw	%r12w, %di
	movswl	%di, %edi
	movswl	%r11w, %r12d
	imull	%r12d, %edi
	imull	$-218038272, %edi, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%edi, %r12d
	sarl	$16, %r12d
	movw	%r12w, (%rcx,%rsi,2)
	incq	%rbx
L_poly_invntt$8:
	cmpq	%rbp, %rbx
	jb  	L_poly_invntt$9
	movq	%rbx, %rbp
	addq	%r10, %rbp
L_poly_invntt$6:
	cmpq	$256, %rbp
	jb  	L_poly_invntt$7
	shlq	$1, %r10
L_poly_invntt$4:
	cmpq	$128, %r10
	jbe 	L_poly_invntt$5
	movw	254(%rdx), %dx
	xorq	%r9, %r9
	jmp 	L_poly_invntt$2
L_poly_invntt$3:
	movw	(%rcx,%r9,2), %r10w
	movswl	%r10w, %r10d
	movswl	%dx, %r11d
	imull	%r11d, %r10d
	imull	$-218038272, %r10d, %r11d
	sarl	$16, %r11d
	imull	$-3329, %r11d, %r11d
	addl	%r10d, %r11d
	sarl	$16, %r11d
	movw	%r11w, (%rcx,%r9,2)
	incq	%r9
L_poly_invntt$2:
	cmpq	$256, %r9
	jb  	L_poly_invntt$3
	ret
L_poly_getnoise$1:
	movq	%rdx, 8(%rsp)
	movb	(%rcx), %dl
	movb	%dl, 16(%rsp)
	movb	1(%rcx), %dl
	movb	%dl, 17(%rsp)
	movb	2(%rcx), %dl
	movb	%dl, 18(%rsp)
	movb	3(%rcx), %dl
	movb	%dl, 19(%rsp)
	movb	4(%rcx), %dl
	movb	%dl, 20(%rsp)
	movb	5(%rcx), %dl
	movb	%dl, 21(%rsp)
	movb	6(%rcx), %dl
	movb	%dl, 22(%rsp)
	movb	7(%rcx), %dl
	movb	%dl, 23(%rsp)
	movb	8(%rcx), %dl
	movb	%dl, 24(%rsp)
	movb	9(%rcx), %dl
	movb	%dl, 25(%rsp)
	movb	10(%rcx), %dl
	movb	%dl, 26(%rsp)
	movb	11(%rcx), %dl
	movb	%dl, 27(%rsp)
	movb	12(%rcx), %dl
	movb	%dl, 28(%rsp)
	movb	13(%rcx), %dl
	movb	%dl, 29(%rsp)
	movb	14(%rcx), %dl
	movb	%dl, 30(%rsp)
	movb	15(%rcx), %dl
	movb	%dl, 31(%rsp)
	movb	16(%rcx), %dl
	movb	%dl, 32(%rsp)
	movb	17(%rcx), %dl
	movb	%dl, 33(%rsp)
	movb	18(%rcx), %dl
	movb	%dl, 34(%rsp)
	movb	19(%rcx), %dl
	movb	%dl, 35(%rsp)
	movb	20(%rcx), %dl
	movb	%dl, 36(%rsp)
	movb	21(%rcx), %dl
	movb	%dl, 37(%rsp)
	movb	22(%rcx), %dl
	movb	%dl, 38(%rsp)
	movb	23(%rcx), %dl
	movb	%dl, 39(%rsp)
	movb	24(%rcx), %dl
	movb	%dl, 40(%rsp)
	movb	25(%rcx), %dl
	movb	%dl, 41(%rsp)
	movb	26(%rcx), %dl
	movb	%dl, 42(%rsp)
	movb	27(%rcx), %dl
	movb	%dl, 43(%rsp)
	movb	28(%rcx), %dl
	movb	%dl, 44(%rsp)
	movb	29(%rcx), %dl
	movb	%dl, 45(%rsp)
	movb	30(%rcx), %dl
	movb	%dl, 46(%rsp)
	movb	31(%rcx), %cl
	movb	%cl, 47(%rsp)
	movb	%al, 48(%rsp)
	leaq	49(%rsp), %rcx
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_shake256_128_33$1
L_poly_getnoise$4:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	xorq	%rcx, %rcx
	jmp 	L_poly_getnoise$2
L_poly_getnoise$3:
	movb	49(%rsp,%rcx), %dl
	movb	%dl, %r8b
	andb	$85, %r8b
	shrb	$1, %dl
	andb	$85, %dl
	addb	%r8b, %dl
	movb	%dl, %r8b
	andb	$3, %r8b
	movb	%dl, %r9b
	shrb	$2, %r9b
	andb	$3, %r9b
	subb	%r9b, %r8b
	movsbw	%r8b, %r8w
	movw	%r8w, (%rax,%rcx,4)
	movb	%dl, %r8b
	shrb	$4, %r8b
	andb	$3, %r8b
	shrb	$6, %dl
	andb	$3, %dl
	subb	%dl, %r8b
	movsbw	%r8b, %dx
	movw	%dx, 2(%rax,%rcx,4)
	incq	%rcx
L_poly_getnoise$2:
	cmpq	$128, %rcx
	jb  	L_poly_getnoise$3
	ret
L_i_poly_frommsg$1:
	movb	(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, (%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 2(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 4(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 6(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 8(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 10(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 12(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 14(%rcx)
	movb	1(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 16(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 18(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 20(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 22(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 24(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 26(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 28(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 30(%rcx)
	movb	2(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 32(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 34(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 36(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 38(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 40(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 42(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 44(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 46(%rcx)
	movb	3(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 48(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 50(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 52(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 54(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 56(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 58(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 60(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 62(%rcx)
	movb	4(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 64(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 66(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 68(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 70(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 72(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 74(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 76(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 78(%rcx)
	movb	5(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 80(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 82(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 84(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 86(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 88(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 90(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 92(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 94(%rcx)
	movb	6(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 96(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 98(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 100(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 102(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 104(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 106(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 108(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 110(%rcx)
	movb	7(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 112(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 114(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 116(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 118(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 120(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 122(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 124(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 126(%rcx)
	movb	8(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 128(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 130(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 132(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 134(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 136(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 138(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 140(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 142(%rcx)
	movb	9(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 144(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 146(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 148(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 150(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 152(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 154(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 156(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 158(%rcx)
	movb	10(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 160(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 162(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 164(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 166(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 168(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 170(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 172(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 174(%rcx)
	movb	11(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 176(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 178(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 180(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 182(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 184(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 186(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 188(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 190(%rcx)
	movb	12(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 192(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 194(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 196(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 198(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 200(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 202(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 204(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 206(%rcx)
	movb	13(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 208(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 210(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 212(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 214(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 216(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 218(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 220(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 222(%rcx)
	movb	14(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 224(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 226(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 228(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 230(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 232(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 234(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 236(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 238(%rcx)
	movb	15(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 240(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 242(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 244(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 246(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 248(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 250(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 252(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 254(%rcx)
	movb	16(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 256(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 258(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 260(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 262(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 264(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 266(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 268(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 270(%rcx)
	movb	17(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 272(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 274(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 276(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 278(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 280(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 282(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 284(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 286(%rcx)
	movb	18(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 288(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 290(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 292(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 294(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 296(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 298(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 300(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 302(%rcx)
	movb	19(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 304(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 306(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 308(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 310(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 312(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 314(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 316(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 318(%rcx)
	movb	20(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 320(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 322(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 324(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 326(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 328(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 330(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 332(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 334(%rcx)
	movb	21(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 336(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 338(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 340(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 342(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 344(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 346(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 348(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 350(%rcx)
	movb	22(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 352(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 354(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 356(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 358(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 360(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 362(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 364(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 366(%rcx)
	movb	23(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 368(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 370(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 372(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 374(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 376(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 378(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 380(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 382(%rcx)
	movb	24(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 384(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 386(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 388(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 390(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 392(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 394(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 396(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 398(%rcx)
	movb	25(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 400(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 402(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 404(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 406(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 408(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 410(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 412(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 414(%rcx)
	movb	26(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 416(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 418(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 420(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 422(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 424(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 426(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 428(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 430(%rcx)
	movb	27(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 432(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 434(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 436(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 438(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 440(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 442(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 444(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 446(%rcx)
	movb	28(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 448(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 450(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 452(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 454(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 456(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 458(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 460(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 462(%rcx)
	movb	29(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 464(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 466(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 468(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 470(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 472(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 474(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 476(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 478(%rcx)
	movb	30(%rax), %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 480(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 482(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 484(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 486(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 488(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 490(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 492(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 494(%rcx)
	movb	31(%rax), %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 496(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 498(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 500(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 502(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 504(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 506(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 508(%rcx)
	shrb	$1, %al
	movzbw	%al, %ax
	andw	$1, %ax
	imulw	$1665, %ax, %ax
	movw	%ax, 510(%rcx)
	ret
L_poly_frommont$1:
	movw	$1353, %cx
	xorq	%rdx, %rdx
	jmp 	L_poly_frommont$2
L_poly_frommont$3:
	movw	(%rax,%rdx,2), %r8w
	movswl	%r8w, %r8d
	movswl	%cx, %r9d
	imull	%r9d, %r8d
	imull	$-218038272, %r8d, %r9d
	sarl	$16, %r9d
	imull	$-3329, %r9d, %r9d
	addl	%r8d, %r9d
	sarl	$16, %r9d
	movw	%r9w, (%rax,%rdx,2)
	incq	%rdx
L_poly_frommont$2:
	cmpq	$256, %rdx
	jb  	L_poly_frommont$3
	ret
L_poly_frombytes$1:
	movb	(%rdx), %r10b
	movb	1(%rdx), %r11b
	movb	2(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, (%r9)
	movw	%bx, 2(%r9)
	movb	3(%rdx), %r10b
	movb	4(%rdx), %r11b
	movb	5(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 4(%r9)
	movw	%bx, 6(%r9)
	movb	6(%rdx), %r10b
	movb	7(%rdx), %r11b
	movb	8(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 8(%r9)
	movw	%bx, 10(%r9)
	movb	9(%rdx), %r10b
	movb	10(%rdx), %r11b
	movb	11(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 12(%r9)
	movw	%bx, 14(%r9)
	movb	12(%rdx), %r10b
	movb	13(%rdx), %r11b
	movb	14(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 16(%r9)
	movw	%bx, 18(%r9)
	movb	15(%rdx), %r10b
	movb	16(%rdx), %r11b
	movb	17(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 20(%r9)
	movw	%bx, 22(%r9)
	movb	18(%rdx), %r10b
	movb	19(%rdx), %r11b
	movb	20(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 24(%r9)
	movw	%bx, 26(%r9)
	movb	21(%rdx), %r10b
	movb	22(%rdx), %r11b
	movb	23(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 28(%r9)
	movw	%bx, 30(%r9)
	movb	24(%rdx), %r10b
	movb	25(%rdx), %r11b
	movb	26(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 32(%r9)
	movw	%bx, 34(%r9)
	movb	27(%rdx), %r10b
	movb	28(%rdx), %r11b
	movb	29(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 36(%r9)
	movw	%bx, 38(%r9)
	movb	30(%rdx), %r10b
	movb	31(%rdx), %r11b
	movb	32(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 40(%r9)
	movw	%bx, 42(%r9)
	movb	33(%rdx), %r10b
	movb	34(%rdx), %r11b
	movb	35(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 44(%r9)
	movw	%bx, 46(%r9)
	movb	36(%rdx), %r10b
	movb	37(%rdx), %r11b
	movb	38(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 48(%r9)
	movw	%bx, 50(%r9)
	movb	39(%rdx), %r10b
	movb	40(%rdx), %r11b
	movb	41(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 52(%r9)
	movw	%bx, 54(%r9)
	movb	42(%rdx), %r10b
	movb	43(%rdx), %r11b
	movb	44(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 56(%r9)
	movw	%bx, 58(%r9)
	movb	45(%rdx), %r10b
	movb	46(%rdx), %r11b
	movb	47(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 60(%r9)
	movw	%bx, 62(%r9)
	movb	48(%rdx), %r10b
	movb	49(%rdx), %r11b
	movb	50(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 64(%r9)
	movw	%bx, 66(%r9)
	movb	51(%rdx), %r10b
	movb	52(%rdx), %r11b
	movb	53(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 68(%r9)
	movw	%bx, 70(%r9)
	movb	54(%rdx), %r10b
	movb	55(%rdx), %r11b
	movb	56(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 72(%r9)
	movw	%bx, 74(%r9)
	movb	57(%rdx), %r10b
	movb	58(%rdx), %r11b
	movb	59(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 76(%r9)
	movw	%bx, 78(%r9)
	movb	60(%rdx), %r10b
	movb	61(%rdx), %r11b
	movb	62(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 80(%r9)
	movw	%bx, 82(%r9)
	movb	63(%rdx), %r10b
	movb	64(%rdx), %r11b
	movb	65(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 84(%r9)
	movw	%bx, 86(%r9)
	movb	66(%rdx), %r10b
	movb	67(%rdx), %r11b
	movb	68(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 88(%r9)
	movw	%bx, 90(%r9)
	movb	69(%rdx), %r10b
	movb	70(%rdx), %r11b
	movb	71(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 92(%r9)
	movw	%bx, 94(%r9)
	movb	72(%rdx), %r10b
	movb	73(%rdx), %r11b
	movb	74(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 96(%r9)
	movw	%bx, 98(%r9)
	movb	75(%rdx), %r10b
	movb	76(%rdx), %r11b
	movb	77(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 100(%r9)
	movw	%bx, 102(%r9)
	movb	78(%rdx), %r10b
	movb	79(%rdx), %r11b
	movb	80(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 104(%r9)
	movw	%bx, 106(%r9)
	movb	81(%rdx), %r10b
	movb	82(%rdx), %r11b
	movb	83(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 108(%r9)
	movw	%bx, 110(%r9)
	movb	84(%rdx), %r10b
	movb	85(%rdx), %r11b
	movb	86(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 112(%r9)
	movw	%bx, 114(%r9)
	movb	87(%rdx), %r10b
	movb	88(%rdx), %r11b
	movb	89(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 116(%r9)
	movw	%bx, 118(%r9)
	movb	90(%rdx), %r10b
	movb	91(%rdx), %r11b
	movb	92(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 120(%r9)
	movw	%bx, 122(%r9)
	movb	93(%rdx), %r10b
	movb	94(%rdx), %r11b
	movb	95(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 124(%r9)
	movw	%bx, 126(%r9)
	movb	96(%rdx), %r10b
	movb	97(%rdx), %r11b
	movb	98(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 128(%r9)
	movw	%bx, 130(%r9)
	movb	99(%rdx), %r10b
	movb	100(%rdx), %r11b
	movb	101(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 132(%r9)
	movw	%bx, 134(%r9)
	movb	102(%rdx), %r10b
	movb	103(%rdx), %r11b
	movb	104(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 136(%r9)
	movw	%bx, 138(%r9)
	movb	105(%rdx), %r10b
	movb	106(%rdx), %r11b
	movb	107(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 140(%r9)
	movw	%bx, 142(%r9)
	movb	108(%rdx), %r10b
	movb	109(%rdx), %r11b
	movb	110(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 144(%r9)
	movw	%bx, 146(%r9)
	movb	111(%rdx), %r10b
	movb	112(%rdx), %r11b
	movb	113(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 148(%r9)
	movw	%bx, 150(%r9)
	movb	114(%rdx), %r10b
	movb	115(%rdx), %r11b
	movb	116(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 152(%r9)
	movw	%bx, 154(%r9)
	movb	117(%rdx), %r10b
	movb	118(%rdx), %r11b
	movb	119(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 156(%r9)
	movw	%bx, 158(%r9)
	movb	120(%rdx), %r10b
	movb	121(%rdx), %r11b
	movb	122(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 160(%r9)
	movw	%bx, 162(%r9)
	movb	123(%rdx), %r10b
	movb	124(%rdx), %r11b
	movb	125(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 164(%r9)
	movw	%bx, 166(%r9)
	movb	126(%rdx), %r10b
	movb	127(%rdx), %r11b
	movb	128(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 168(%r9)
	movw	%bx, 170(%r9)
	movb	129(%rdx), %r10b
	movb	130(%rdx), %r11b
	movb	131(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 172(%r9)
	movw	%bx, 174(%r9)
	movb	132(%rdx), %r10b
	movb	133(%rdx), %r11b
	movb	134(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 176(%r9)
	movw	%bx, 178(%r9)
	movb	135(%rdx), %r10b
	movb	136(%rdx), %r11b
	movb	137(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 180(%r9)
	movw	%bx, 182(%r9)
	movb	138(%rdx), %r10b
	movb	139(%rdx), %r11b
	movb	140(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 184(%r9)
	movw	%bx, 186(%r9)
	movb	141(%rdx), %r10b
	movb	142(%rdx), %r11b
	movb	143(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 188(%r9)
	movw	%bx, 190(%r9)
	movb	144(%rdx), %r10b
	movb	145(%rdx), %r11b
	movb	146(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 192(%r9)
	movw	%bx, 194(%r9)
	movb	147(%rdx), %r10b
	movb	148(%rdx), %r11b
	movb	149(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 196(%r9)
	movw	%bx, 198(%r9)
	movb	150(%rdx), %r10b
	movb	151(%rdx), %r11b
	movb	152(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 200(%r9)
	movw	%bx, 202(%r9)
	movb	153(%rdx), %r10b
	movb	154(%rdx), %r11b
	movb	155(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 204(%r9)
	movw	%bx, 206(%r9)
	movb	156(%rdx), %r10b
	movb	157(%rdx), %r11b
	movb	158(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 208(%r9)
	movw	%bx, 210(%r9)
	movb	159(%rdx), %r10b
	movb	160(%rdx), %r11b
	movb	161(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 212(%r9)
	movw	%bx, 214(%r9)
	movb	162(%rdx), %r10b
	movb	163(%rdx), %r11b
	movb	164(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 216(%r9)
	movw	%bx, 218(%r9)
	movb	165(%rdx), %r10b
	movb	166(%rdx), %r11b
	movb	167(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 220(%r9)
	movw	%bx, 222(%r9)
	movb	168(%rdx), %r10b
	movb	169(%rdx), %r11b
	movb	170(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 224(%r9)
	movw	%bx, 226(%r9)
	movb	171(%rdx), %r10b
	movb	172(%rdx), %r11b
	movb	173(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 228(%r9)
	movw	%bx, 230(%r9)
	movb	174(%rdx), %r10b
	movb	175(%rdx), %r11b
	movb	176(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 232(%r9)
	movw	%bx, 234(%r9)
	movb	177(%rdx), %r10b
	movb	178(%rdx), %r11b
	movb	179(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 236(%r9)
	movw	%bx, 238(%r9)
	movb	180(%rdx), %r10b
	movb	181(%rdx), %r11b
	movb	182(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 240(%r9)
	movw	%bx, 242(%r9)
	movb	183(%rdx), %r10b
	movb	184(%rdx), %r11b
	movb	185(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 244(%r9)
	movw	%bx, 246(%r9)
	movb	186(%rdx), %r10b
	movb	187(%rdx), %r11b
	movb	188(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 248(%r9)
	movw	%bx, 250(%r9)
	movb	189(%rdx), %r10b
	movb	190(%rdx), %r11b
	movb	191(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 252(%r9)
	movw	%bx, 254(%r9)
	movb	192(%rdx), %r10b
	movb	193(%rdx), %r11b
	movb	194(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 256(%r9)
	movw	%bx, 258(%r9)
	movb	195(%rdx), %r10b
	movb	196(%rdx), %r11b
	movb	197(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 260(%r9)
	movw	%bx, 262(%r9)
	movb	198(%rdx), %r10b
	movb	199(%rdx), %r11b
	movb	200(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 264(%r9)
	movw	%bx, 266(%r9)
	movb	201(%rdx), %r10b
	movb	202(%rdx), %r11b
	movb	203(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 268(%r9)
	movw	%bx, 270(%r9)
	movb	204(%rdx), %r10b
	movb	205(%rdx), %r11b
	movb	206(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 272(%r9)
	movw	%bx, 274(%r9)
	movb	207(%rdx), %r10b
	movb	208(%rdx), %r11b
	movb	209(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 276(%r9)
	movw	%bx, 278(%r9)
	movb	210(%rdx), %r10b
	movb	211(%rdx), %r11b
	movb	212(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 280(%r9)
	movw	%bx, 282(%r9)
	movb	213(%rdx), %r10b
	movb	214(%rdx), %r11b
	movb	215(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 284(%r9)
	movw	%bx, 286(%r9)
	movb	216(%rdx), %r10b
	movb	217(%rdx), %r11b
	movb	218(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 288(%r9)
	movw	%bx, 290(%r9)
	movb	219(%rdx), %r10b
	movb	220(%rdx), %r11b
	movb	221(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 292(%r9)
	movw	%bx, 294(%r9)
	movb	222(%rdx), %r10b
	movb	223(%rdx), %r11b
	movb	224(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 296(%r9)
	movw	%bx, 298(%r9)
	movb	225(%rdx), %r10b
	movb	226(%rdx), %r11b
	movb	227(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 300(%r9)
	movw	%bx, 302(%r9)
	movb	228(%rdx), %r10b
	movb	229(%rdx), %r11b
	movb	230(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 304(%r9)
	movw	%bx, 306(%r9)
	movb	231(%rdx), %r10b
	movb	232(%rdx), %r11b
	movb	233(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 308(%r9)
	movw	%bx, 310(%r9)
	movb	234(%rdx), %r10b
	movb	235(%rdx), %r11b
	movb	236(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 312(%r9)
	movw	%bx, 314(%r9)
	movb	237(%rdx), %r10b
	movb	238(%rdx), %r11b
	movb	239(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 316(%r9)
	movw	%bx, 318(%r9)
	movb	240(%rdx), %r10b
	movb	241(%rdx), %r11b
	movb	242(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 320(%r9)
	movw	%bx, 322(%r9)
	movb	243(%rdx), %r10b
	movb	244(%rdx), %r11b
	movb	245(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 324(%r9)
	movw	%bx, 326(%r9)
	movb	246(%rdx), %r10b
	movb	247(%rdx), %r11b
	movb	248(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 328(%r9)
	movw	%bx, 330(%r9)
	movb	249(%rdx), %r10b
	movb	250(%rdx), %r11b
	movb	251(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 332(%r9)
	movw	%bx, 334(%r9)
	movb	252(%rdx), %r10b
	movb	253(%rdx), %r11b
	movb	254(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 336(%r9)
	movw	%bx, 338(%r9)
	movb	255(%rdx), %r10b
	movb	256(%rdx), %r11b
	movb	257(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 340(%r9)
	movw	%bx, 342(%r9)
	movb	258(%rdx), %r10b
	movb	259(%rdx), %r11b
	movb	260(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 344(%r9)
	movw	%bx, 346(%r9)
	movb	261(%rdx), %r10b
	movb	262(%rdx), %r11b
	movb	263(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 348(%r9)
	movw	%bx, 350(%r9)
	movb	264(%rdx), %r10b
	movb	265(%rdx), %r11b
	movb	266(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 352(%r9)
	movw	%bx, 354(%r9)
	movb	267(%rdx), %r10b
	movb	268(%rdx), %r11b
	movb	269(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 356(%r9)
	movw	%bx, 358(%r9)
	movb	270(%rdx), %r10b
	movb	271(%rdx), %r11b
	movb	272(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 360(%r9)
	movw	%bx, 362(%r9)
	movb	273(%rdx), %r10b
	movb	274(%rdx), %r11b
	movb	275(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 364(%r9)
	movw	%bx, 366(%r9)
	movb	276(%rdx), %r10b
	movb	277(%rdx), %r11b
	movb	278(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 368(%r9)
	movw	%bx, 370(%r9)
	movb	279(%rdx), %r10b
	movb	280(%rdx), %r11b
	movb	281(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 372(%r9)
	movw	%bx, 374(%r9)
	movb	282(%rdx), %r10b
	movb	283(%rdx), %r11b
	movb	284(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 376(%r9)
	movw	%bx, 378(%r9)
	movb	285(%rdx), %r10b
	movb	286(%rdx), %r11b
	movb	287(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 380(%r9)
	movw	%bx, 382(%r9)
	movb	288(%rdx), %r10b
	movb	289(%rdx), %r11b
	movb	290(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 384(%r9)
	movw	%bx, 386(%r9)
	movb	291(%rdx), %r10b
	movb	292(%rdx), %r11b
	movb	293(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 388(%r9)
	movw	%bx, 390(%r9)
	movb	294(%rdx), %r10b
	movb	295(%rdx), %r11b
	movb	296(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 392(%r9)
	movw	%bx, 394(%r9)
	movb	297(%rdx), %r10b
	movb	298(%rdx), %r11b
	movb	299(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 396(%r9)
	movw	%bx, 398(%r9)
	movb	300(%rdx), %r10b
	movb	301(%rdx), %r11b
	movb	302(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 400(%r9)
	movw	%bx, 402(%r9)
	movb	303(%rdx), %r10b
	movb	304(%rdx), %r11b
	movb	305(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 404(%r9)
	movw	%bx, 406(%r9)
	movb	306(%rdx), %r10b
	movb	307(%rdx), %r11b
	movb	308(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 408(%r9)
	movw	%bx, 410(%r9)
	movb	309(%rdx), %r10b
	movb	310(%rdx), %r11b
	movb	311(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 412(%r9)
	movw	%bx, 414(%r9)
	movb	312(%rdx), %r10b
	movb	313(%rdx), %r11b
	movb	314(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 416(%r9)
	movw	%bx, 418(%r9)
	movb	315(%rdx), %r10b
	movb	316(%rdx), %r11b
	movb	317(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 420(%r9)
	movw	%bx, 422(%r9)
	movb	318(%rdx), %r10b
	movb	319(%rdx), %r11b
	movb	320(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 424(%r9)
	movw	%bx, 426(%r9)
	movb	321(%rdx), %r10b
	movb	322(%rdx), %r11b
	movb	323(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 428(%r9)
	movw	%bx, 430(%r9)
	movb	324(%rdx), %r10b
	movb	325(%rdx), %r11b
	movb	326(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 432(%r9)
	movw	%bx, 434(%r9)
	movb	327(%rdx), %r10b
	movb	328(%rdx), %r11b
	movb	329(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 436(%r9)
	movw	%bx, 438(%r9)
	movb	330(%rdx), %r10b
	movb	331(%rdx), %r11b
	movb	332(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 440(%r9)
	movw	%bx, 442(%r9)
	movb	333(%rdx), %r10b
	movb	334(%rdx), %r11b
	movb	335(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 444(%r9)
	movw	%bx, 446(%r9)
	movb	336(%rdx), %r10b
	movb	337(%rdx), %r11b
	movb	338(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 448(%r9)
	movw	%bx, 450(%r9)
	movb	339(%rdx), %r10b
	movb	340(%rdx), %r11b
	movb	341(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 452(%r9)
	movw	%bx, 454(%r9)
	movb	342(%rdx), %r10b
	movb	343(%rdx), %r11b
	movb	344(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 456(%r9)
	movw	%bx, 458(%r9)
	movb	345(%rdx), %r10b
	movb	346(%rdx), %r11b
	movb	347(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 460(%r9)
	movw	%bx, 462(%r9)
	movb	348(%rdx), %r10b
	movb	349(%rdx), %r11b
	movb	350(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 464(%r9)
	movw	%bx, 466(%r9)
	movb	351(%rdx), %r10b
	movb	352(%rdx), %r11b
	movb	353(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 468(%r9)
	movw	%bx, 470(%r9)
	movb	354(%rdx), %r10b
	movb	355(%rdx), %r11b
	movb	356(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 472(%r9)
	movw	%bx, 474(%r9)
	movb	357(%rdx), %r10b
	movb	358(%rdx), %r11b
	movb	359(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 476(%r9)
	movw	%bx, 478(%r9)
	movb	360(%rdx), %r10b
	movb	361(%rdx), %r11b
	movb	362(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 480(%r9)
	movw	%bx, 482(%r9)
	movb	363(%rdx), %r10b
	movb	364(%rdx), %r11b
	movb	365(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 484(%r9)
	movw	%bx, 486(%r9)
	movb	366(%rdx), %r10b
	movb	367(%rdx), %r11b
	movb	368(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 488(%r9)
	movw	%bx, 490(%r9)
	movb	369(%rdx), %r10b
	movb	370(%rdx), %r11b
	movb	371(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 492(%r9)
	movw	%bx, 494(%r9)
	movb	372(%rdx), %r10b
	movb	373(%rdx), %r11b
	movb	374(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 496(%r9)
	movw	%bx, 498(%r9)
	movb	375(%rdx), %r10b
	movb	376(%rdx), %r11b
	movb	377(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 500(%r9)
	movw	%bx, 502(%r9)
	movb	378(%rdx), %r10b
	movb	379(%rdx), %r11b
	movb	380(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 504(%r9)
	movw	%bx, 506(%r9)
	movb	381(%rdx), %r10b
	movb	382(%rdx), %r11b
	movb	383(%rdx), %bl
	movzbw	%r10b, %r10w
	movzbw	%r11b, %bp
	andw	$15, %bp
	shlw	$8, %bp
	orw 	%bp, %r10w
	movzbw	%bl, %bx
	shlw	$4, %bx
	movzbw	%r11b, %r11w
	shrw	$4, %r11w
	orw 	%r11w, %bx
	movw	%r10w, 508(%r9)
	movw	%bx, 510(%r9)
	ret
L_poly_decompress$1:
	xorq	%r9, %r9
	jmp 	L_poly_decompress$2
L_poly_decompress$3:
	movb	(%rdx,%r9), %r10b
	movzbw	%r10b, %r11w
	movzbw	%r10b, %r10w
	andw	$15, %r11w
	shrw	$4, %r10w
	imulw	$3329, %r11w, %r11w
	imulw	$3329, %r10w, %r10w
	addw	$8, %r11w
	addw	$8, %r10w
	shrw	$4, %r11w
	shrw	$4, %r10w
	movw	%r11w, (%rcx,%r9,4)
	movw	%r10w, 2(%rcx,%r9,4)
	incq	%r9
L_poly_decompress$2:
	cmpq	$128, %r9
	jb  	L_poly_decompress$3
	ret
L_i_poly_compress$1:
	call	L_poly_csubq$1
L_i_poly_compress$4:
	xorq	%rdx, %rdx
	jmp 	L_i_poly_compress$2
L_i_poly_compress$3:
	movzwl	(%rcx,%rdx,4), %r8d
	movzwl	2(%rcx,%rdx,4), %r9d
	shll	$4, %r8d
	addl	$1665, %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$15, %r8d
	shll	$4, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$15, %r9d
	shll	$4, %r9d
	orl 	%r9d, %r8d
	movb	%r8b, (%rax,%rdx)
	incq	%rdx
L_i_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_i_poly_compress$3
	ret
L_poly_compress$1:
	call	L_poly_csubq$1
L_poly_compress$4:
	xorq	%rdx, %rdx
	jmp 	L_poly_compress$2
L_poly_compress$3:
	movzwl	(%rcx,%rdx,4), %r8d
	movzwl	2(%rcx,%rdx,4), %r9d
	shll	$4, %r8d
	addl	$1665, %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$15, %r8d
	shll	$4, %r9d
	addl	$1665, %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$15, %r9d
	shll	$4, %r9d
	orl 	%r9d, %r8d
	movb	%r8b, (%rax,%rdx)
	incq	%rdx
L_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_poly_compress$3
	ret
L_poly_basemul$1:
	movq	%r9, 8(%rsp)
	xorq	%r9, %r9
	jmp 	L_poly_basemul$2
L_poly_basemul$3:
	leaq	glob_data + 576(%rip), %r10
	movq	%r9, %r11
	shrq	$2, %r11
	movw	(%r10,%r11,2), %r10w
	movw	(%rcx,%r9,2), %r11w
	movw	(%rdx,%r9,2), %bx
	incq	%r9
	movw	(%rcx,%r9,2), %bp
	movw	(%rdx,%r9,2), %di
	addq	$-1, %r9
	movswl	%bp, %esi
	movswl	%di, %r12d
	imull	%r12d, %esi
	imull	$-218038272, %esi, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%esi, %r12d
	sarl	$16, %r12d
	movswl	%r12w, %esi
	movswl	%r10w, %r12d
	imull	%r12d, %esi
	imull	$-218038272, %esi, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%esi, %r12d
	sarl	$16, %r12d
	movw	%r12w, %si
	movswl	%r11w, %r12d
	movswl	%bx, %r13d
	imull	%r13d, %r12d
	imull	$-218038272, %r12d, %r13d
	sarl	$16, %r13d
	imull	$-3329, %r13d, %r13d
	addl	%r12d, %r13d
	sarl	$16, %r13d
	addw	%r13w, %si
	movswl	%r11w, %r11d
	movswl	%di, %edi
	imull	%edi, %r11d
	imull	$-218038272, %r11d, %edi
	sarl	$16, %edi
	imull	$-3329, %edi, %edi
	addl	%r11d, %edi
	sarl	$16, %edi
	movw	%di, %r11w
	movswl	%bp, %ebp
	movswl	%bx, %ebx
	imull	%ebx, %ebp
	imull	$-218038272, %ebp, %ebx
	sarl	$16, %ebx
	imull	$-3329, %ebx, %ebx
	addl	%ebp, %ebx
	sarl	$16, %ebx
	addw	%bx, %r11w
	movq	8(%rsp), %rbx
	movw	%si, (%rbx,%r9,2)
	incq	%r9
	movw	%r11w, (%rbx,%r9,2)
	movq	%rbx, 16(%rsp)
	negw	%r10w
	incq	%r9
	movw	(%rcx,%r9,2), %r11w
	movw	(%rdx,%r9,2), %bx
	incq	%r9
	movw	(%rcx,%r9,2), %bp
	movw	(%rdx,%r9,2), %di
	addq	$-1, %r9
	movswl	%bp, %esi
	movswl	%di, %r12d
	imull	%r12d, %esi
	imull	$-218038272, %esi, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%esi, %r12d
	sarl	$16, %r12d
	movswl	%r12w, %esi
	movswl	%r10w, %r10d
	imull	%r10d, %esi
	imull	$-218038272, %esi, %r10d
	sarl	$16, %r10d
	imull	$-3329, %r10d, %r10d
	addl	%esi, %r10d
	sarl	$16, %r10d
	movswl	%r11w, %esi
	movswl	%bx, %r12d
	imull	%r12d, %esi
	imull	$-218038272, %esi, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%esi, %r12d
	sarl	$16, %r12d
	addw	%r12w, %r10w
	movswl	%r11w, %r11d
	movswl	%di, %edi
	imull	%edi, %r11d
	imull	$-218038272, %r11d, %edi
	sarl	$16, %edi
	imull	$-3329, %edi, %edi
	addl	%r11d, %edi
	sarl	$16, %edi
	movswl	%bp, %r11d
	movswl	%bx, %ebx
	imull	%ebx, %r11d
	imull	$-218038272, %r11d, %ebx
	sarl	$16, %ebx
	imull	$-3329, %ebx, %ebx
	addl	%r11d, %ebx
	sarl	$16, %ebx
	addw	%bx, %di
	movq	16(%rsp), %r11
	movw	%r10w, (%r11,%r9,2)
	incq	%r9
	movw	%di, (%r11,%r9,2)
	incq	%r9
L_poly_basemul$2:
	cmpq	$253, %r9
	jb  	L_poly_basemul$3
	ret
L_poly_csubq$1:
	xorq	%rdx, %rdx
	jmp 	L_poly_csubq$2
L_poly_csubq$3:
	movw	(%rcx,%rdx,2), %r9w
	addw	$-3329, %r9w
	movw	%r9w, %r10w
	sarw	$15, %r10w
	andw	$3329, %r10w
	addw	%r10w, %r9w
	movw	%r9w, (%rcx,%rdx,2)
	incq	%rdx
L_poly_csubq$2:
	cmpq	$256, %rdx
	jb  	L_poly_csubq$3
	ret
L_poly_add2$1:
	xorq	%r9, %r9
	jmp 	L_poly_add2$2
L_poly_add2$3:
	movw	(%rcx,%r9,2), %r10w
	movw	(%rdx,%r9,2), %r11w
	addw	%r11w, %r10w
	movw	%r10w, (%rcx,%r9,2)
	incq	%r9
L_poly_add2$2:
	cmpq	$256, %r9
	jb  	L_poly_add2$3
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
	xorq	%r8, %r8
	jmp 	L_isha3_256$10
L_isha3_256$11:
	movq	(%r10,%r8,8), %r9
	xorq	%r9, 40(%rsp,%r8,8)
	incq	%r8
L_isha3_256$10:
	cmpq	%rdx, %r8
	jb  	L_isha3_256$11
	addq	%rcx, %r10
	subq	%rcx, %rax
	movq	%r10, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_isha3_256$9:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %r10
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
L_isha3_256$7:
	cmpq	%rcx, %rax
	jnb 	L_isha3_256$8
	movb	$6, %dl
	movq	%rax, %r8
	shrq	$3, %r8
	xorq	%r9, %r9
	jmp 	L_isha3_256$5
L_isha3_256$6:
	movq	(%r10,%r9,8), %r11
	xorq	%r11, 40(%rsp,%r9,8)
	incq	%r9
L_isha3_256$5:
	cmpq	%r8, %r9
	jb  	L_isha3_256$6
	shlq	$3, %r9
	jmp 	L_isha3_256$3
L_isha3_256$4:
	movb	(%r10,%r9), %r8b
	xorb	%r8b, 40(%rsp,%r9)
	incq	%r9
L_isha3_256$3:
	cmpq	%rax, %r9
	jb  	L_isha3_256$4
	xorb	%dl, 40(%rsp,%r9)
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
L_shake128_squeezeblock$1:
	movq	%rcx, 8(%rsp)
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake128_squeezeblock$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rcx
	movb	(%rax), %dl
	movb	%dl, (%rcx)
	movb	1(%rax), %dl
	movb	%dl, 1(%rcx)
	movb	2(%rax), %dl
	movb	%dl, 2(%rcx)
	movb	3(%rax), %dl
	movb	%dl, 3(%rcx)
	movb	4(%rax), %dl
	movb	%dl, 4(%rcx)
	movb	5(%rax), %dl
	movb	%dl, 5(%rcx)
	movb	6(%rax), %dl
	movb	%dl, 6(%rcx)
	movb	7(%rax), %dl
	movb	%dl, 7(%rcx)
	movb	8(%rax), %dl
	movb	%dl, 8(%rcx)
	movb	9(%rax), %dl
	movb	%dl, 9(%rcx)
	movb	10(%rax), %dl
	movb	%dl, 10(%rcx)
	movb	11(%rax), %dl
	movb	%dl, 11(%rcx)
	movb	12(%rax), %dl
	movb	%dl, 12(%rcx)
	movb	13(%rax), %dl
	movb	%dl, 13(%rcx)
	movb	14(%rax), %dl
	movb	%dl, 14(%rcx)
	movb	15(%rax), %dl
	movb	%dl, 15(%rcx)
	movb	16(%rax), %dl
	movb	%dl, 16(%rcx)
	movb	17(%rax), %dl
	movb	%dl, 17(%rcx)
	movb	18(%rax), %dl
	movb	%dl, 18(%rcx)
	movb	19(%rax), %dl
	movb	%dl, 19(%rcx)
	movb	20(%rax), %dl
	movb	%dl, 20(%rcx)
	movb	21(%rax), %dl
	movb	%dl, 21(%rcx)
	movb	22(%rax), %dl
	movb	%dl, 22(%rcx)
	movb	23(%rax), %dl
	movb	%dl, 23(%rcx)
	movb	24(%rax), %dl
	movb	%dl, 24(%rcx)
	movb	25(%rax), %dl
	movb	%dl, 25(%rcx)
	movb	26(%rax), %dl
	movb	%dl, 26(%rcx)
	movb	27(%rax), %dl
	movb	%dl, 27(%rcx)
	movb	28(%rax), %dl
	movb	%dl, 28(%rcx)
	movb	29(%rax), %dl
	movb	%dl, 29(%rcx)
	movb	30(%rax), %dl
	movb	%dl, 30(%rcx)
	movb	31(%rax), %dl
	movb	%dl, 31(%rcx)
	movb	32(%rax), %dl
	movb	%dl, 32(%rcx)
	movb	33(%rax), %dl
	movb	%dl, 33(%rcx)
	movb	34(%rax), %dl
	movb	%dl, 34(%rcx)
	movb	35(%rax), %dl
	movb	%dl, 35(%rcx)
	movb	36(%rax), %dl
	movb	%dl, 36(%rcx)
	movb	37(%rax), %dl
	movb	%dl, 37(%rcx)
	movb	38(%rax), %dl
	movb	%dl, 38(%rcx)
	movb	39(%rax), %dl
	movb	%dl, 39(%rcx)
	movb	40(%rax), %dl
	movb	%dl, 40(%rcx)
	movb	41(%rax), %dl
	movb	%dl, 41(%rcx)
	movb	42(%rax), %dl
	movb	%dl, 42(%rcx)
	movb	43(%rax), %dl
	movb	%dl, 43(%rcx)
	movb	44(%rax), %dl
	movb	%dl, 44(%rcx)
	movb	45(%rax), %dl
	movb	%dl, 45(%rcx)
	movb	46(%rax), %dl
	movb	%dl, 46(%rcx)
	movb	47(%rax), %dl
	movb	%dl, 47(%rcx)
	movb	48(%rax), %dl
	movb	%dl, 48(%rcx)
	movb	49(%rax), %dl
	movb	%dl, 49(%rcx)
	movb	50(%rax), %dl
	movb	%dl, 50(%rcx)
	movb	51(%rax), %dl
	movb	%dl, 51(%rcx)
	movb	52(%rax), %dl
	movb	%dl, 52(%rcx)
	movb	53(%rax), %dl
	movb	%dl, 53(%rcx)
	movb	54(%rax), %dl
	movb	%dl, 54(%rcx)
	movb	55(%rax), %dl
	movb	%dl, 55(%rcx)
	movb	56(%rax), %dl
	movb	%dl, 56(%rcx)
	movb	57(%rax), %dl
	movb	%dl, 57(%rcx)
	movb	58(%rax), %dl
	movb	%dl, 58(%rcx)
	movb	59(%rax), %dl
	movb	%dl, 59(%rcx)
	movb	60(%rax), %dl
	movb	%dl, 60(%rcx)
	movb	61(%rax), %dl
	movb	%dl, 61(%rcx)
	movb	62(%rax), %dl
	movb	%dl, 62(%rcx)
	movb	63(%rax), %dl
	movb	%dl, 63(%rcx)
	movb	64(%rax), %dl
	movb	%dl, 64(%rcx)
	movb	65(%rax), %dl
	movb	%dl, 65(%rcx)
	movb	66(%rax), %dl
	movb	%dl, 66(%rcx)
	movb	67(%rax), %dl
	movb	%dl, 67(%rcx)
	movb	68(%rax), %dl
	movb	%dl, 68(%rcx)
	movb	69(%rax), %dl
	movb	%dl, 69(%rcx)
	movb	70(%rax), %dl
	movb	%dl, 70(%rcx)
	movb	71(%rax), %dl
	movb	%dl, 71(%rcx)
	movb	72(%rax), %dl
	movb	%dl, 72(%rcx)
	movb	73(%rax), %dl
	movb	%dl, 73(%rcx)
	movb	74(%rax), %dl
	movb	%dl, 74(%rcx)
	movb	75(%rax), %dl
	movb	%dl, 75(%rcx)
	movb	76(%rax), %dl
	movb	%dl, 76(%rcx)
	movb	77(%rax), %dl
	movb	%dl, 77(%rcx)
	movb	78(%rax), %dl
	movb	%dl, 78(%rcx)
	movb	79(%rax), %dl
	movb	%dl, 79(%rcx)
	movb	80(%rax), %dl
	movb	%dl, 80(%rcx)
	movb	81(%rax), %dl
	movb	%dl, 81(%rcx)
	movb	82(%rax), %dl
	movb	%dl, 82(%rcx)
	movb	83(%rax), %dl
	movb	%dl, 83(%rcx)
	movb	84(%rax), %dl
	movb	%dl, 84(%rcx)
	movb	85(%rax), %dl
	movb	%dl, 85(%rcx)
	movb	86(%rax), %dl
	movb	%dl, 86(%rcx)
	movb	87(%rax), %dl
	movb	%dl, 87(%rcx)
	movb	88(%rax), %dl
	movb	%dl, 88(%rcx)
	movb	89(%rax), %dl
	movb	%dl, 89(%rcx)
	movb	90(%rax), %dl
	movb	%dl, 90(%rcx)
	movb	91(%rax), %dl
	movb	%dl, 91(%rcx)
	movb	92(%rax), %dl
	movb	%dl, 92(%rcx)
	movb	93(%rax), %dl
	movb	%dl, 93(%rcx)
	movb	94(%rax), %dl
	movb	%dl, 94(%rcx)
	movb	95(%rax), %dl
	movb	%dl, 95(%rcx)
	movb	96(%rax), %dl
	movb	%dl, 96(%rcx)
	movb	97(%rax), %dl
	movb	%dl, 97(%rcx)
	movb	98(%rax), %dl
	movb	%dl, 98(%rcx)
	movb	99(%rax), %dl
	movb	%dl, 99(%rcx)
	movb	100(%rax), %dl
	movb	%dl, 100(%rcx)
	movb	101(%rax), %dl
	movb	%dl, 101(%rcx)
	movb	102(%rax), %dl
	movb	%dl, 102(%rcx)
	movb	103(%rax), %dl
	movb	%dl, 103(%rcx)
	movb	104(%rax), %dl
	movb	%dl, 104(%rcx)
	movb	105(%rax), %dl
	movb	%dl, 105(%rcx)
	movb	106(%rax), %dl
	movb	%dl, 106(%rcx)
	movb	107(%rax), %dl
	movb	%dl, 107(%rcx)
	movb	108(%rax), %dl
	movb	%dl, 108(%rcx)
	movb	109(%rax), %dl
	movb	%dl, 109(%rcx)
	movb	110(%rax), %dl
	movb	%dl, 110(%rcx)
	movb	111(%rax), %dl
	movb	%dl, 111(%rcx)
	movb	112(%rax), %dl
	movb	%dl, 112(%rcx)
	movb	113(%rax), %dl
	movb	%dl, 113(%rcx)
	movb	114(%rax), %dl
	movb	%dl, 114(%rcx)
	movb	115(%rax), %dl
	movb	%dl, 115(%rcx)
	movb	116(%rax), %dl
	movb	%dl, 116(%rcx)
	movb	117(%rax), %dl
	movb	%dl, 117(%rcx)
	movb	118(%rax), %dl
	movb	%dl, 118(%rcx)
	movb	119(%rax), %dl
	movb	%dl, 119(%rcx)
	movb	120(%rax), %dl
	movb	%dl, 120(%rcx)
	movb	121(%rax), %dl
	movb	%dl, 121(%rcx)
	movb	122(%rax), %dl
	movb	%dl, 122(%rcx)
	movb	123(%rax), %dl
	movb	%dl, 123(%rcx)
	movb	124(%rax), %dl
	movb	%dl, 124(%rcx)
	movb	125(%rax), %dl
	movb	%dl, 125(%rcx)
	movb	126(%rax), %dl
	movb	%dl, 126(%rcx)
	movb	127(%rax), %dl
	movb	%dl, 127(%rcx)
	movb	128(%rax), %dl
	movb	%dl, 128(%rcx)
	movb	129(%rax), %dl
	movb	%dl, 129(%rcx)
	movb	130(%rax), %dl
	movb	%dl, 130(%rcx)
	movb	131(%rax), %dl
	movb	%dl, 131(%rcx)
	movb	132(%rax), %dl
	movb	%dl, 132(%rcx)
	movb	133(%rax), %dl
	movb	%dl, 133(%rcx)
	movb	134(%rax), %dl
	movb	%dl, 134(%rcx)
	movb	135(%rax), %dl
	movb	%dl, 135(%rcx)
	movb	136(%rax), %dl
	movb	%dl, 136(%rcx)
	movb	137(%rax), %dl
	movb	%dl, 137(%rcx)
	movb	138(%rax), %dl
	movb	%dl, 138(%rcx)
	movb	139(%rax), %dl
	movb	%dl, 139(%rcx)
	movb	140(%rax), %dl
	movb	%dl, 140(%rcx)
	movb	141(%rax), %dl
	movb	%dl, 141(%rcx)
	movb	142(%rax), %dl
	movb	%dl, 142(%rcx)
	movb	143(%rax), %dl
	movb	%dl, 143(%rcx)
	movb	144(%rax), %dl
	movb	%dl, 144(%rcx)
	movb	145(%rax), %dl
	movb	%dl, 145(%rcx)
	movb	146(%rax), %dl
	movb	%dl, 146(%rcx)
	movb	147(%rax), %dl
	movb	%dl, 147(%rcx)
	movb	148(%rax), %dl
	movb	%dl, 148(%rcx)
	movb	149(%rax), %dl
	movb	%dl, 149(%rcx)
	movb	150(%rax), %dl
	movb	%dl, 150(%rcx)
	movb	151(%rax), %dl
	movb	%dl, 151(%rcx)
	movb	152(%rax), %dl
	movb	%dl, 152(%rcx)
	movb	153(%rax), %dl
	movb	%dl, 153(%rcx)
	movb	154(%rax), %dl
	movb	%dl, 154(%rcx)
	movb	155(%rax), %dl
	movb	%dl, 155(%rcx)
	movb	156(%rax), %dl
	movb	%dl, 156(%rcx)
	movb	157(%rax), %dl
	movb	%dl, 157(%rcx)
	movb	158(%rax), %dl
	movb	%dl, 158(%rcx)
	movb	159(%rax), %dl
	movb	%dl, 159(%rcx)
	movb	160(%rax), %dl
	movb	%dl, 160(%rcx)
	movb	161(%rax), %dl
	movb	%dl, 161(%rcx)
	movb	162(%rax), %dl
	movb	%dl, 162(%rcx)
	movb	163(%rax), %dl
	movb	%dl, 163(%rcx)
	movb	164(%rax), %dl
	movb	%dl, 164(%rcx)
	movb	165(%rax), %dl
	movb	%dl, 165(%rcx)
	movb	166(%rax), %dl
	movb	%dl, 166(%rcx)
	movb	167(%rax), %al
	movb	%al, 167(%rcx)
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
	movb	(%rcx), %dl
	xorb	%dl, (%rax)
	movb	1(%rcx), %dl
	xorb	%dl, 1(%rax)
	movb	2(%rcx), %dl
	xorb	%dl, 2(%rax)
	movb	3(%rcx), %dl
	xorb	%dl, 3(%rax)
	movb	4(%rcx), %dl
	xorb	%dl, 4(%rax)
	movb	5(%rcx), %dl
	xorb	%dl, 5(%rax)
	movb	6(%rcx), %dl
	xorb	%dl, 6(%rax)
	movb	7(%rcx), %dl
	xorb	%dl, 7(%rax)
	movb	8(%rcx), %dl
	xorb	%dl, 8(%rax)
	movb	9(%rcx), %dl
	xorb	%dl, 9(%rax)
	movb	10(%rcx), %dl
	xorb	%dl, 10(%rax)
	movb	11(%rcx), %dl
	xorb	%dl, 11(%rax)
	movb	12(%rcx), %dl
	xorb	%dl, 12(%rax)
	movb	13(%rcx), %dl
	xorb	%dl, 13(%rax)
	movb	14(%rcx), %dl
	xorb	%dl, 14(%rax)
	movb	15(%rcx), %dl
	xorb	%dl, 15(%rax)
	movb	16(%rcx), %dl
	xorb	%dl, 16(%rax)
	movb	17(%rcx), %dl
	xorb	%dl, 17(%rax)
	movb	18(%rcx), %dl
	xorb	%dl, 18(%rax)
	movb	19(%rcx), %dl
	xorb	%dl, 19(%rax)
	movb	20(%rcx), %dl
	xorb	%dl, 20(%rax)
	movb	21(%rcx), %dl
	xorb	%dl, 21(%rax)
	movb	22(%rcx), %dl
	xorb	%dl, 22(%rax)
	movb	23(%rcx), %dl
	xorb	%dl, 23(%rax)
	movb	24(%rcx), %dl
	xorb	%dl, 24(%rax)
	movb	25(%rcx), %dl
	xorb	%dl, 25(%rax)
	movb	26(%rcx), %dl
	xorb	%dl, 26(%rax)
	movb	27(%rcx), %dl
	xorb	%dl, 27(%rax)
	movb	28(%rcx), %dl
	xorb	%dl, 28(%rax)
	movb	29(%rcx), %dl
	xorb	%dl, 29(%rax)
	movb	30(%rcx), %dl
	xorb	%dl, 30(%rax)
	movb	31(%rcx), %dl
	xorb	%dl, 31(%rax)
	movb	32(%rcx), %dl
	xorb	%dl, 32(%rax)
	movb	33(%rcx), %cl
	xorb	%cl, 33(%rax)
	xorb	$31, 34(%rax)
	xorb	$128, 167(%rax)
	ret
L_sha3512_32$1:
	movq	%rcx, 8(%rsp)
	leaq	16(%rsp), %rcx
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
	movb	(%rax), %cl
	xorb	%cl, 16(%rsp)
	movb	1(%rax), %cl
	xorb	%cl, 17(%rsp)
	movb	2(%rax), %cl
	xorb	%cl, 18(%rsp)
	movb	3(%rax), %cl
	xorb	%cl, 19(%rsp)
	movb	4(%rax), %cl
	xorb	%cl, 20(%rsp)
	movb	5(%rax), %cl
	xorb	%cl, 21(%rsp)
	movb	6(%rax), %cl
	xorb	%cl, 22(%rsp)
	movb	7(%rax), %cl
	xorb	%cl, 23(%rsp)
	movb	8(%rax), %cl
	xorb	%cl, 24(%rsp)
	movb	9(%rax), %cl
	xorb	%cl, 25(%rsp)
	movb	10(%rax), %cl
	xorb	%cl, 26(%rsp)
	movb	11(%rax), %cl
	xorb	%cl, 27(%rsp)
	movb	12(%rax), %cl
	xorb	%cl, 28(%rsp)
	movb	13(%rax), %cl
	xorb	%cl, 29(%rsp)
	movb	14(%rax), %cl
	xorb	%cl, 30(%rsp)
	movb	15(%rax), %cl
	xorb	%cl, 31(%rsp)
	movb	16(%rax), %cl
	xorb	%cl, 32(%rsp)
	movb	17(%rax), %cl
	xorb	%cl, 33(%rsp)
	movb	18(%rax), %cl
	xorb	%cl, 34(%rsp)
	movb	19(%rax), %cl
	xorb	%cl, 35(%rsp)
	movb	20(%rax), %cl
	xorb	%cl, 36(%rsp)
	movb	21(%rax), %cl
	xorb	%cl, 37(%rsp)
	movb	22(%rax), %cl
	xorb	%cl, 38(%rsp)
	movb	23(%rax), %cl
	xorb	%cl, 39(%rsp)
	movb	24(%rax), %cl
	xorb	%cl, 40(%rsp)
	movb	25(%rax), %cl
	xorb	%cl, 41(%rsp)
	movb	26(%rax), %cl
	xorb	%cl, 42(%rsp)
	movb	27(%rax), %cl
	xorb	%cl, 43(%rsp)
	movb	28(%rax), %cl
	xorb	%cl, 44(%rsp)
	movb	29(%rax), %cl
	xorb	%cl, 45(%rsp)
	movb	30(%rax), %cl
	xorb	%cl, 46(%rsp)
	movb	31(%rax), %al
	xorb	%al, 47(%rsp)
	xorb	$6, 48(%rsp)
	xorb	$128, 87(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3512_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movb	16(%rsp), %cl
	movb	%cl, (%rax)
	movb	17(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	18(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	19(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	20(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	21(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	22(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	23(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	24(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	25(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	26(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	27(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	28(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	29(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	30(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	31(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	32(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	33(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	34(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	35(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	64(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	65(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	66(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	67(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	68(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	69(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	70(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	71(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	72(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	73(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	74(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	75(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	76(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	77(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	78(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	79(%rsp), %cl
	movb	%cl, 63(%rax)
	ret
L_shake256_1120_32$1:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
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
	movq	96(%rax), %rax
	xorq	%rax, 168(%rsp)
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
	movq	%rax, %r8
	shrq	$3, %r8
	xorq	%r9, %r9
	jmp 	L_shake256_1120_32$10
L_shake256_1120_32$11:
	movq	(%rdx,%r9,8), %r10
	xorq	%r10, 40(%rsp,%r9,8)
	incq	%r9
L_shake256_1120_32$10:
	cmpq	%r8, %r9
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
	movb	$31, %r8b
	movq	%rcx, %r9
	shrq	$3, %r9
	xorq	%r10, %r10
	jmp 	L_shake256_1120_32$5
L_shake256_1120_32$6:
	movq	(%rdx,%r10,8), %r11
	xorq	%r11, 40(%rsp,%r10,8)
	incq	%r10
L_shake256_1120_32$5:
	cmpq	%r9, %r10
	jb  	L_shake256_1120_32$6
	shlq	$3, %r10
	jmp 	L_shake256_1120_32$3
L_shake256_1120_32$4:
	movb	(%rdx,%r10), %r9b
	xorb	%r9b, 40(%rsp,%r10)
	incq	%r10
L_shake256_1120_32$3:
	cmpq	%rcx, %r10
	jb  	L_shake256_1120_32$4
	xorb	%r8b, 40(%rsp,%r10)
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
L_shake256_128_33$1:
	movq	%rcx, 8(%rsp)
	leaq	16(%rsp), %rcx
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
	movb	(%rax), %cl
	xorb	%cl, 16(%rsp)
	movb	1(%rax), %cl
	xorb	%cl, 17(%rsp)
	movb	2(%rax), %cl
	xorb	%cl, 18(%rsp)
	movb	3(%rax), %cl
	xorb	%cl, 19(%rsp)
	movb	4(%rax), %cl
	xorb	%cl, 20(%rsp)
	movb	5(%rax), %cl
	xorb	%cl, 21(%rsp)
	movb	6(%rax), %cl
	xorb	%cl, 22(%rsp)
	movb	7(%rax), %cl
	xorb	%cl, 23(%rsp)
	movb	8(%rax), %cl
	xorb	%cl, 24(%rsp)
	movb	9(%rax), %cl
	xorb	%cl, 25(%rsp)
	movb	10(%rax), %cl
	xorb	%cl, 26(%rsp)
	movb	11(%rax), %cl
	xorb	%cl, 27(%rsp)
	movb	12(%rax), %cl
	xorb	%cl, 28(%rsp)
	movb	13(%rax), %cl
	xorb	%cl, 29(%rsp)
	movb	14(%rax), %cl
	xorb	%cl, 30(%rsp)
	movb	15(%rax), %cl
	xorb	%cl, 31(%rsp)
	movb	16(%rax), %cl
	xorb	%cl, 32(%rsp)
	movb	17(%rax), %cl
	xorb	%cl, 33(%rsp)
	movb	18(%rax), %cl
	xorb	%cl, 34(%rsp)
	movb	19(%rax), %cl
	xorb	%cl, 35(%rsp)
	movb	20(%rax), %cl
	xorb	%cl, 36(%rsp)
	movb	21(%rax), %cl
	xorb	%cl, 37(%rsp)
	movb	22(%rax), %cl
	xorb	%cl, 38(%rsp)
	movb	23(%rax), %cl
	xorb	%cl, 39(%rsp)
	movb	24(%rax), %cl
	xorb	%cl, 40(%rsp)
	movb	25(%rax), %cl
	xorb	%cl, 41(%rsp)
	movb	26(%rax), %cl
	xorb	%cl, 42(%rsp)
	movb	27(%rax), %cl
	xorb	%cl, 43(%rsp)
	movb	28(%rax), %cl
	xorb	%cl, 44(%rsp)
	movb	29(%rax), %cl
	xorb	%cl, 45(%rsp)
	movb	30(%rax), %cl
	xorb	%cl, 46(%rsp)
	movb	31(%rax), %cl
	xorb	%cl, 47(%rsp)
	movb	32(%rax), %al
	xorb	%al, 48(%rsp)
	xorb	$31, 49(%rsp)
	xorb	$128, 151(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_128_33$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movb	16(%rsp), %cl
	movb	%cl, (%rax)
	movb	17(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	18(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	19(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	20(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	21(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	22(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	23(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	24(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	25(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	26(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	27(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	28(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	29(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	30(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	31(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	32(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	33(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	34(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	35(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	64(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	65(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	66(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	67(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	68(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	69(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	70(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	71(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	72(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	73(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	74(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	75(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	76(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	77(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	78(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	79(%rsp), %cl
	movb	%cl, 63(%rax)
	movb	80(%rsp), %cl
	movb	%cl, 64(%rax)
	movb	81(%rsp), %cl
	movb	%cl, 65(%rax)
	movb	82(%rsp), %cl
	movb	%cl, 66(%rax)
	movb	83(%rsp), %cl
	movb	%cl, 67(%rax)
	movb	84(%rsp), %cl
	movb	%cl, 68(%rax)
	movb	85(%rsp), %cl
	movb	%cl, 69(%rax)
	movb	86(%rsp), %cl
	movb	%cl, 70(%rax)
	movb	87(%rsp), %cl
	movb	%cl, 71(%rax)
	movb	88(%rsp), %cl
	movb	%cl, 72(%rax)
	movb	89(%rsp), %cl
	movb	%cl, 73(%rax)
	movb	90(%rsp), %cl
	movb	%cl, 74(%rax)
	movb	91(%rsp), %cl
	movb	%cl, 75(%rax)
	movb	92(%rsp), %cl
	movb	%cl, 76(%rax)
	movb	93(%rsp), %cl
	movb	%cl, 77(%rax)
	movb	94(%rsp), %cl
	movb	%cl, 78(%rax)
	movb	95(%rsp), %cl
	movb	%cl, 79(%rax)
	movb	96(%rsp), %cl
	movb	%cl, 80(%rax)
	movb	97(%rsp), %cl
	movb	%cl, 81(%rax)
	movb	98(%rsp), %cl
	movb	%cl, 82(%rax)
	movb	99(%rsp), %cl
	movb	%cl, 83(%rax)
	movb	100(%rsp), %cl
	movb	%cl, 84(%rax)
	movb	101(%rsp), %cl
	movb	%cl, 85(%rax)
	movb	102(%rsp), %cl
	movb	%cl, 86(%rax)
	movb	103(%rsp), %cl
	movb	%cl, 87(%rax)
	movb	104(%rsp), %cl
	movb	%cl, 88(%rax)
	movb	105(%rsp), %cl
	movb	%cl, 89(%rax)
	movb	106(%rsp), %cl
	movb	%cl, 90(%rax)
	movb	107(%rsp), %cl
	movb	%cl, 91(%rax)
	movb	108(%rsp), %cl
	movb	%cl, 92(%rax)
	movb	109(%rsp), %cl
	movb	%cl, 93(%rax)
	movb	110(%rsp), %cl
	movb	%cl, 94(%rax)
	movb	111(%rsp), %cl
	movb	%cl, 95(%rax)
	movb	112(%rsp), %cl
	movb	%cl, 96(%rax)
	movb	113(%rsp), %cl
	movb	%cl, 97(%rax)
	movb	114(%rsp), %cl
	movb	%cl, 98(%rax)
	movb	115(%rsp), %cl
	movb	%cl, 99(%rax)
	movb	116(%rsp), %cl
	movb	%cl, 100(%rax)
	movb	117(%rsp), %cl
	movb	%cl, 101(%rax)
	movb	118(%rsp), %cl
	movb	%cl, 102(%rax)
	movb	119(%rsp), %cl
	movb	%cl, 103(%rax)
	movb	120(%rsp), %cl
	movb	%cl, 104(%rax)
	movb	121(%rsp), %cl
	movb	%cl, 105(%rax)
	movb	122(%rsp), %cl
	movb	%cl, 106(%rax)
	movb	123(%rsp), %cl
	movb	%cl, 107(%rax)
	movb	124(%rsp), %cl
	movb	%cl, 108(%rax)
	movb	125(%rsp), %cl
	movb	%cl, 109(%rax)
	movb	126(%rsp), %cl
	movb	%cl, 110(%rax)
	movb	127(%rsp), %cl
	movb	%cl, 111(%rax)
	movb	128(%rsp), %cl
	movb	%cl, 112(%rax)
	movb	129(%rsp), %cl
	movb	%cl, 113(%rax)
	movb	130(%rsp), %cl
	movb	%cl, 114(%rax)
	movb	131(%rsp), %cl
	movb	%cl, 115(%rax)
	movb	132(%rsp), %cl
	movb	%cl, 116(%rax)
	movb	133(%rsp), %cl
	movb	%cl, 117(%rax)
	movb	134(%rsp), %cl
	movb	%cl, 118(%rax)
	movb	135(%rsp), %cl
	movb	%cl, 119(%rax)
	movb	136(%rsp), %cl
	movb	%cl, 120(%rax)
	movb	137(%rsp), %cl
	movb	%cl, 121(%rax)
	movb	138(%rsp), %cl
	movb	%cl, 122(%rax)
	movb	139(%rsp), %cl
	movb	%cl, 123(%rax)
	movb	140(%rsp), %cl
	movb	%cl, 124(%rax)
	movb	141(%rsp), %cl
	movb	%cl, 125(%rax)
	movb	142(%rsp), %cl
	movb	%cl, 126(%rax)
	movb	143(%rsp), %cl
	movb	%cl, 127(%rax)
	ret
L_keccakf1600$1:
	leaq	glob_data + 0(%rip), %rcx
	leaq	16(%rsp), %rdx
	xorq	%r8, %r8
	jmp 	L_keccakf1600$2
L_keccakf1600$3:
	movq	(%rcx,%r8,8), %r9
	movq	%r9, 8(%rsp)
	movq	(%rax), %rbp
	movq	8(%rax), %rbx
	movq	16(%rax), %rdi
	movq	24(%rax), %rsi
	movq	32(%rax), %r12
	xorq	40(%rax), %rbp
	xorq	48(%rax), %rbx
	xorq	56(%rax), %rdi
	xorq	64(%rax), %rsi
	xorq	72(%rax), %r12
	xorq	80(%rax), %rbp
	xorq	88(%rax), %rbx
	xorq	96(%rax), %rdi
	xorq	104(%rax), %rsi
	xorq	112(%rax), %r12
	xorq	120(%rax), %rbp
	xorq	128(%rax), %rbx
	xorq	136(%rax), %rdi
	xorq	144(%rax), %rsi
	xorq	152(%rax), %r12
	xorq	160(%rax), %rbp
	xorq	168(%rax), %rbx
	xorq	176(%rax), %rdi
	xorq	184(%rax), %rsi
	xorq	192(%rax), %r12
	movq	%rbx, %r9
	rolq	$1, %r9
	xorq	%r12, %r9
	movq	%rdi, %r10
	rolq	$1, %r10
	xorq	%rbp, %r10
	movq	%rsi, %r11
	rolq	$1, %r11
	xorq	%rbx, %r11
	movq	%r12, %rbx
	rolq	$1, %rbx
	xorq	%rdi, %rbx
	rolq	$1, %rbp
	xorq	%rsi, %rbp
	movq	(%rax), %rdi
	xorq	%r9, %rdi
	movq	48(%rax), %rsi
	xorq	%r10, %rsi
	rolq	$44, %rsi
	movq	96(%rax), %r12
	xorq	%r11, %r12
	rolq	$43, %r12
	movq	144(%rax), %r13
	xorq	%rbx, %r13
	rolq	$21, %r13
	movq	192(%rax), %r14
	xorq	%rbp, %r14
	rolq	$14, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 8(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rdx)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 32(%rdx)
	movq	24(%rax), %rdi
	xorq	%rbx, %rdi
	rolq	$28, %rdi
	movq	72(%rax), %rsi
	xorq	%rbp, %rsi
	rolq	$20, %rsi
	movq	80(%rax), %r12
	xorq	%r9, %r12
	rolq	$3, %r12
	movq	128(%rax), %r13
	xorq	%r10, %r13
	rolq	$45, %r13
	movq	176(%rax), %r14
	xorq	%r11, %r14
	rolq	$61, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 40(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 48(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rdx)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 72(%rdx)
	movq	8(%rax), %rdi
	xorq	%r10, %rdi
	rolq	$1, %rdi
	movq	56(%rax), %rsi
	xorq	%r11, %rsi
	rolq	$6, %rsi
	movq	104(%rax), %r12
	xorq	%rbx, %r12
	rolq	$25, %r12
	movq	152(%rax), %r13
	xorq	%rbp, %r13
	rolq	$8, %r13
	movq	160(%rax), %r14
	xorq	%r9, %r14
	rolq	$18, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 80(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 88(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rdx)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 112(%rdx)
	movq	32(%rax), %rdi
	xorq	%rbp, %rdi
	rolq	$27, %rdi
	movq	40(%rax), %rsi
	xorq	%r9, %rsi
	rolq	$36, %rsi
	movq	88(%rax), %r12
	xorq	%r10, %r12
	rolq	$10, %r12
	movq	136(%rax), %r13
	xorq	%r11, %r13
	rolq	$15, %r13
	movq	184(%rax), %r14
	xorq	%rbx, %r14
	rolq	$56, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 120(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 128(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rdx)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 152(%rdx)
	movq	16(%rax), %rdi
	xorq	%r11, %rdi
	rolq	$62, %rdi
	movq	64(%rax), %r11
	xorq	%rbx, %r11
	rolq	$55, %r11
	movq	112(%rax), %rbx
	xorq	%rbp, %rbx
	rolq	$39, %rbx
	movq	120(%rax), %rbp
	xorq	%r9, %rbp
	rolq	$41, %rbp
	movq	168(%rax), %r9
	xorq	%r10, %r9
	rolq	$2, %r9
	movq	%r11, %r10
	notq	%r10
	andq	%rbx, %r10
	xorq	%rdi, %r10
	movq	%r10, 160(%rdx)
	movq	%rbx, %r10
	notq	%r10
	andq	%rbp, %r10
	xorq	%r11, %r10
	movq	%r10, 168(%rdx)
	movq	%rbp, %r10
	notq	%r10
	andq	%r9, %r10
	xorq	%rbx, %r10
	movq	%r10, 176(%rdx)
	movq	%r9, %r10
	notq	%r10
	andq	%rdi, %r10
	xorq	%rbp, %r10
	movq	%r10, 184(%rdx)
	notq	%rdi
	andq	%r11, %rdi
	xorq	%r9, %rdi
	movq	%rdi, 192(%rdx)
	movq	8(%rcx,%r8,8), %r9
	movq	%r9, 8(%rsp)
	movq	(%rdx), %rbp
	movq	8(%rdx), %rbx
	movq	16(%rdx), %rdi
	movq	24(%rdx), %rsi
	movq	32(%rdx), %r12
	xorq	40(%rdx), %rbp
	xorq	48(%rdx), %rbx
	xorq	56(%rdx), %rdi
	xorq	64(%rdx), %rsi
	xorq	72(%rdx), %r12
	xorq	80(%rdx), %rbp
	xorq	88(%rdx), %rbx
	xorq	96(%rdx), %rdi
	xorq	104(%rdx), %rsi
	xorq	112(%rdx), %r12
	xorq	120(%rdx), %rbp
	xorq	128(%rdx), %rbx
	xorq	136(%rdx), %rdi
	xorq	144(%rdx), %rsi
	xorq	152(%rdx), %r12
	xorq	160(%rdx), %rbp
	xorq	168(%rdx), %rbx
	xorq	176(%rdx), %rdi
	xorq	184(%rdx), %rsi
	xorq	192(%rdx), %r12
	movq	%rbx, %r9
	rolq	$1, %r9
	xorq	%r12, %r9
	movq	%rdi, %r10
	rolq	$1, %r10
	xorq	%rbp, %r10
	movq	%rsi, %r11
	rolq	$1, %r11
	xorq	%rbx, %r11
	movq	%r12, %rbx
	rolq	$1, %rbx
	xorq	%rdi, %rbx
	rolq	$1, %rbp
	xorq	%rsi, %rbp
	movq	(%rdx), %rdi
	xorq	%r9, %rdi
	movq	48(%rdx), %rsi
	xorq	%r10, %rsi
	rolq	$44, %rsi
	movq	96(%rdx), %r12
	xorq	%r11, %r12
	rolq	$43, %r12
	movq	144(%rdx), %r13
	xorq	%rbx, %r13
	rolq	$21, %r13
	movq	192(%rdx), %r14
	xorq	%rbp, %r14
	rolq	$14, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 8(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rax)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 32(%rax)
	movq	24(%rdx), %rdi
	xorq	%rbx, %rdi
	rolq	$28, %rdi
	movq	72(%rdx), %rsi
	xorq	%rbp, %rsi
	rolq	$20, %rsi
	movq	80(%rdx), %r12
	xorq	%r9, %r12
	rolq	$3, %r12
	movq	128(%rdx), %r13
	xorq	%r10, %r13
	rolq	$45, %r13
	movq	176(%rdx), %r14
	xorq	%r11, %r14
	rolq	$61, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 40(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 48(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rax)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 72(%rax)
	movq	8(%rdx), %rdi
	xorq	%r10, %rdi
	rolq	$1, %rdi
	movq	56(%rdx), %rsi
	xorq	%r11, %rsi
	rolq	$6, %rsi
	movq	104(%rdx), %r12
	xorq	%rbx, %r12
	rolq	$25, %r12
	movq	152(%rdx), %r13
	xorq	%rbp, %r13
	rolq	$8, %r13
	movq	160(%rdx), %r14
	xorq	%r9, %r14
	rolq	$18, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 80(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 88(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rax)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 112(%rax)
	movq	32(%rdx), %rdi
	xorq	%rbp, %rdi
	rolq	$27, %rdi
	movq	40(%rdx), %rsi
	xorq	%r9, %rsi
	rolq	$36, %rsi
	movq	88(%rdx), %r12
	xorq	%r10, %r12
	rolq	$10, %r12
	movq	136(%rdx), %r13
	xorq	%r11, %r13
	rolq	$15, %r13
	movq	184(%rdx), %r14
	xorq	%rbx, %r14
	rolq	$56, %r14
	movq	%rsi, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rdi, %r15
	movq	%r15, 120(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rsi, %r15
	movq	%r15, 128(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rdi, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rax)
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%r14, %rdi
	movq	%rdi, 152(%rax)
	movq	16(%rdx), %rdi
	xorq	%r11, %rdi
	rolq	$62, %rdi
	movq	64(%rdx), %r11
	xorq	%rbx, %r11
	rolq	$55, %r11
	movq	112(%rdx), %rbx
	xorq	%rbp, %rbx
	rolq	$39, %rbx
	movq	120(%rdx), %rbp
	xorq	%r9, %rbp
	rolq	$41, %rbp
	movq	168(%rdx), %r9
	xorq	%r10, %r9
	rolq	$2, %r9
	movq	%r11, %r10
	notq	%r10
	andq	%rbx, %r10
	xorq	%rdi, %r10
	movq	%r10, 160(%rax)
	movq	%rbx, %r10
	notq	%r10
	andq	%rbp, %r10
	xorq	%r11, %r10
	movq	%r10, 168(%rax)
	movq	%rbp, %r10
	notq	%r10
	andq	%r9, %r10
	xorq	%rbx, %r10
	movq	%r10, 176(%rax)
	movq	%r9, %r10
	notq	%r10
	andq	%rdi, %r10
	xorq	%rbp, %r10
	movq	%r10, 184(%rax)
	notq	%rdi
	andq	%r11, %rdi
	xorq	%r9, %rdi
	movq	%rdi, 192(%rax)
	addq	$2, %r8
L_keccakf1600$2:
	cmpq	$23, %r8
	jb  	L_keccakf1600$3
	ret
	.data
	.p2align	5
_glob_data:
glob_data:
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
