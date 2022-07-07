.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_isnan	
_rv_isnan: 	
	fmv.x.d a0,fa0	
	li t0,-1	
	li t0,-1	
	li t1,2047	
	srli t0,t0,0xc	
	slli t1,t1,0x34	
	and t0,a0,t0	
	and a0,a0,t1	
	sub a0,a0,t1	
	seqz a0,a0
	sltu t0,zero,t0	
	and a0,a0,t0	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
