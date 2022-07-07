.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_fma	
_rv_fma: 	
	fmv.x.d t2,fa0	
	fmv.x.d t3,fa1	
	fmv.x.d t4,fa2	
	li t0,-1	
	li t1,2047	
	srli t0,t0,0xc	
	slli t1,t1,0x34	
	and t5,t2,t0	
	and t2,t2,t1	
	sub t2,t2,t1	
	seqz t2,t2
	sltu t5,zero,t5	
	and a0,t2,t5	
	bnez a0,L$1	
	and t5,t3,t0	
	and t3,t3,t1	
	sub t3,t3,t1	
	seqz t3,t3
	sltu t5,zero,t5	
	and a0,t3,t5	
	bnez a0,L$2	
	and t5,t4,t0	
	and t4,t4,t1	
	sub t4,t4,t1	
	seqz t4,t4
	sltu t5,zero,t5	
	and a0,t4,t5	
	bnez a0,L$3	
	fmadd.d fa7,fa0,fa1,fa2	
	fmv.d fa0,fa7	
	ret
	.align 4	
L$1: 	
	and t5,t3,t0	
	and t3,t3,t1	
	sub t3,t3,t1	
	seqz t3,t3
	sltu t5,zero,t5	
	and a0,t3,t5	
	bnez a0,L$2	
	fmv.d fa7,fa0	
	fmv.d fa0,fa7	
	ret
	.align 4	
L$2: 	
	fmv.d fa7,fa1	
	fmv.d fa0,fa7	
	ret
	.align 4	
L$3: 	
	fmv.d fa7,fa2	
	fmv.d fa0,fa7	
	ret
	.align 4	
