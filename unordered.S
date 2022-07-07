.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.globl _rv_unordered	
_rv_unordered: 	
	fmv.x.d a0,fa0	
	fmv.x.d t3,fa1	
	li t0,2047	
	li t2,-1	
	slli t0,t0,0x34	
	srli t2,t2,0xc	
	and t1,a0,t0	
	and t4,t3,t0	
	and a0,a0,t2	
	and t2,t3,t2	
	sub t1,t1,t0	
	seqz t1,t1
	sub t0,t4,t0	
	seqz t0,t0
	beqz a0,TYPH_1	
	mv t1,t1
	j TYPH_2
TYPH_1:	mv t1,zero
TYPH_2:	
	beqz t2,TYPH_3	
	mv t0,t0
	j TYPH_4
TYPH_3:	mv t0,zero
TYPH_4:
	or t0,t1,t0	
	sltu a0,zero,t0	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
