.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_modf	
_rv_modf: 	
	fmv.x.d t1,fa0	
	addi t2,zero,2047	
	slli t2,t2,0x34	
	li t4,0x1	
	addi t5,zero,537	
	slli t4,t4,0x34	
	slli t5,t5,0x35	
	addi s7,zero,1075	
	slli s7,s7,52	
	fmv.d.x fa7,s7	
	and t3,t1,t2	
	sub t4,t3,t4	
	sltu t4,t4,t5	
	beqz t4,L$60	
	fsgnj.d ft0,fa7,fa0	
	fadd.d fs1,fa0,ft0,rtz	
	fsub.d ft0,fs1,ft0	
	fsub.d fa7,fa0,ft0	
	fmv.x.d a1,fa7
	beqz a1,life_3
	fmv.d fa0,fa7	
	j life_4
life_3: fmv.x.d a1,fa0
	bgtz a1,life_5
	li a1,0x8000000000000000
	fmv.d.x fa0,a1
	j life_4
life_5: fmv.d fa0,fa7	
life_4:	ret
L$60: 	
	bnez t3,L$80	
	.align 4	
	ret
	.align 4	
L$80: 	
	addi t6,zero,-1	
	sub t2,t3,t2	
	seqz t2,t2
	fmv.d fa7,fa0	
	srli t6,t6,0xc	
	and t1,t1,t6	
	beqz t1,TYPH_1	
	mv t2,t2
	j TYPH_2
TYPH_1:	li t2,0
TYPH_2:	nop
	bnez t2,L$a0	
	fmv.x.d a3,fa0
	bgtz a3,life_1
	li a3,0x8000000000000000
	j life_2	
life_1:	li a3,0x0
life_2:	fmv.d.x fa7,a3
L$a0: 	
	fmv.d fa0,fa7	
	ret
