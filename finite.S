.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.globl _rv_finite	
_rv_finite: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	slli t0,t0,0x34	
	and a0,a0,t0	
	sub a0,a0,t0	
	seqz a0,a0
	xor a0,a0,0x1	
	fcvt.d.l fa0,a0
	ret
	.align 4	
