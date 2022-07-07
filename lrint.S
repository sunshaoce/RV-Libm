.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_lrint	
_rv_lrint: 	
	fmv.x.d a0,fa0	
	addi sp,sp,-192
	addi t0,zero,2047	
	li t1,0x1	
	slli t0,t0,0x34	
	slli t1,t1,0x34	
	addi t2,zero,537	
	addi t6,zero,1075	
	slli t2,t2,0x35	
	slli t6,t6,52	
	fmv.d.x fa7,t6	
	and t0,a0,t0	
	sub t1,t0,t1	
	sltu t1,t1,t2	
	fsgnj.d ft0,fa7,fa0	
	beqz t1,L$60	
	fadd.d fs1,fa0,ft0	
	fsub.d ft0,fs1,ft0	
	fcvt.l.d a2,ft0,rtz
	fmv.d.x ft0,a2
	fmv.x.d a0,ft0	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
L$60: 	
	li t3,0x11	
	addi t4,zero,-1	
	slli t3,t3,0x3a	
	srli t4,t4,0xc	
	sltu t3,t0,t3	
	and a0,a0,t4	
	beqz t3,L$100	
	bnez t0,L$c0	
	addi t6,zero,1021	
	slli t6,t6,52	
	fmv.d.x fs2,t6	
	beqz a0,L$a0	
	fsgnj.d fs3,fs2,fa0	
	fadd.d fs3,fs3,ft0	
	fsub.d fa0,fs3,ft0	
L$a0: 	
	fcvt.l.d a2,fa0,rtz
	fmv.d.x fa0,a2
	fmv.x.d a0,fa0	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
L$c0: 	
	addi t6,zero,1086	
	li a2,3134
	add a7,zero,a2
	slli t6,t6,52	
	slli a7,a7,52	
	fmv.d.x fs4,t6	
	fmv.d.x fs5,a7	
	flt.d a2,fa0,fs4
	beqz a2,TYPH_1
	li a2,0x4000000000000000
	fmv.d.x fs4,a2
	j TYPH_2
TYPH_1:	fmv.d.x fs4,a2
TYPH_2:
	li a2,0x0
	fmv.d.x ft3,a2
	feq.d a2,fs4,ft3
	bnez a2,L$100
	flt.d a2,fa0,fs5
	beqz a2,TYPH_3
	li a2,0x4000000000000000
	fmv.d.x fs5,a2
	j TYPH_4
TYPH_3:	fmv.d.x fs5,a2
TYPH_4:	
	li a2,0x0
	fmv.d.x ft3,a2
	feq.d a2,fs5,ft3
	beqz a2,L$100
	fcvt.l.d a2,fa0,rtz
	fmv.d.x fa0,a2
	fmv.x.d a0,fa0	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
L$100: 	
	addi s9,zero,1	
	li a2,17666
	add s10,zero,a2
	slli s9,s9,63	
	or s9,s9,s10	
	sd ra,0(sp)	
	addi a1,sp,8	
	sd s9,8(sp)	
	ld ra,0(sp)	
	addi a0,zero,-1	
	srli a0,a0,0x1	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
