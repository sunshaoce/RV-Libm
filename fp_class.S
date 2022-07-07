.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_fp_class	
_rv_fp_class: 	
	fmv.x.d t0,fa0	
	li t1,2047	
	slli t1,t1,0x34	
	and t2,t0,t1	
	srli t3,t0,0x3f	
	beqz t2,L$1	
	sltu t1,t2,t1	
	addw a0,t3,0x4	
	beqz t1,L$2	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
L$2: 	
	li t4,-1	
	addw t3,t3,0x2	
	srli t4,t4,0xc	
	and t0,t0,t4	
	srli t5,t0,0x33	
	beqz t0,TYPH_1	
	mv t5,t5
	j TYPH_2
TYPH_1:	mv t5,t3
TYPH_2:
	mv a0,t5	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
L$1: 	
	li t6,-1	
	li a7,0x6	
	srli t6,t6,0xc	
	and t0,t0,t6	
	beqz t0,TYPH_3	
	mv a7,a7
	j TYPH_4
TYPH_3:	li a7,0x8
TYPH_4:	
	addw a0,t3,a7	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
