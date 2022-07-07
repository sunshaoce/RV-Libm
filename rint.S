.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_round	
_rv_round: 	
	addi gp,gp,0	
	fmv.x.d t1,fa0	
	addi t2,zero,2047	
	slli t2,t2,0x34	
	li t3,0x1	
	addi t4,zero,537	
	slli t3,t3,0x34	
	slli t4,t4,0x35	
	addi s7,zero,1022	
	addi s8,zero,1075	
	slli s7,s7,52	
	slli s8,s8,52	
	fmv.d.x fa7,s7	
	fmv.d.x fs1,s8	
	and t1,t1,t2	
	sub t3,t1,t3	
	sltu t3,t3,t4	
	beqz t3,L$70	
	fsgnj.d ft0,fa7,fa0	
	fsgnj.d fs2,fs1,fa0	
	fadd.d ft0,ft0,fa0,rtz	
	fadd.d fs3,fs2,ft0,rtz	
	fsub.d fa7,fs3,fs2	
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
L$70: 	
	bnez t1,L$78	
	fmv.x.d a3,fa0
	bgtz a3,life_1
	li a3,0x8000000000000000
	j life_2
life_1: li a3,0x0
life_2: fmv.d.x fa0,a3
L$78: 	
	ret
