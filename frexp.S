.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_frexp	
_rv_frexp: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	li t4,511	
	slli t0,t0,0x34	
	slli t4,t4,0x35	
	li t5,1022	
	and t1,a0,t0	
	xor t2,t1,t0	
	xor t3,a0,t1	
	beqz t2,a_c0	
	.align 4	
	beqz t1,a_50	
	or a0,t3,t4	
	srli t1,t1,0x34	
	fmv.d.x fa0,a0	
	subw t1,t1,t5	
	sw t1,0(a5)	
	ret
	.align 4	
a_50: 	
	not t6,t0	
	li a7,0x1b	
	li a1,4095	
	li a3,511	
	slli a7,a7,0x35	
	slli a1,a1,0x34	
	slli a3,a3,0x35	
	and a0,a0,t6	
	add a0,a0,a7	
	fmv.d.x ft0,a0	
	and a0,a0,a1	
	fmv.d.x fs1,a0	
	fsub.d ft0,ft0,fs1	
	fmv.x.d a0,ft0	
	li a4,0x0
	fmv.d.x ft3,a4
	feq.d a4,ft0,ft3
	bnez a4,a_c0
	and t0,a0,t0	
	xor a0,a0,t0	
	srli t0,t0,0x34	
	or a0,a0,a3	
	fmv.d.x fa0,a0	
	li a0,1075	
	subw a0,t0,a0	
	sw a0,0(a5)	
	ret
	.align 4	
a_c0: 	
	sw zero,0(a5)	
	ret
