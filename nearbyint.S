.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_nearbyint	
_rv_nearbyint: 	
	addi gp,gp,0	
	fmv.x.d t1,fa0	
	addi t2,zero,2047	
	slli t2,t2,0x34	
	li t3,0x1	
	addi t4,zero,537	
	slli t3,t3,0x34	
	slli t4,t4,0x35	
	addi s7,zero,1075	
	slli s7,s7,52	
	fmv.d.x fa7,s7	
	and t2,t1,t2	
	sub t3,t2,t3	
	sltu t3,t3,t4	
	fsgnj.d ft0,fa7,fa0	
	nop 	
	beqz t3,L$60	
	fadd.d fs1,fa0,ft0,rmm	
	fsub.d fa7,fs1,ft0	
	nop 	
	fmv.x.d a1,fa7
	beqz a1,life_3
	fmv.d fa0,fa7
	j life_4
life_3: fmv.x.d a1,fa0
	bgtz a1,life_5
	li a1,0x8000000000000000
	fmv.d.x fa0,a1
	j life_4
life_5:	fmv.d fa0,fa7	
life_4:	ret
L$60: 	
	addi t5,zero,-1	
	fmv.d fa7,fa0	
	srli t5,t5,0xc	
	and t1,t1,t5	
	sd s8,0(sp)	
	li s8,0
	sub t1,t1,s8
	seqz t1,t1
	ld s8,0(sp)
	or t1,t2,t1	
	beqz t1,L$90	
	nop 	
	fmv.d fa0,fa7	
	ret
	nop 	
	nop 	
	nop 	
L$90: 	
	addi s7,zero,1021	
	slli s7,s7,52	
	fmv.d.x fs2,s7	
	fsgnj.d fs3,fs2,fa0	
	nop 	
	fadd.d fs4,fs3,ft0,rtz	
	fsub.d fa7,fs4,ft0	
	fmv.d fa0,fa7	
	ret
