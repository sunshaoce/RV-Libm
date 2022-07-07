	.section .text	
	.align 4	
	.section .text
	.globl _rv_sqrt	
_rv_sqrt: 	
	fmv.x.d t2,fa0	
	beqz t2,life_1
	bltz t2,life_2
	li a2,0x7ff0000000000000
	beq t2,a2,life_1
	and a3,t2,a2
	beq a3,a2,life_3
	li t0,0x1	
	li t1,1023	
	slli t0,t0,0x34	
	slli t1,t1,0x35	
	sub a0,t2,t0	
	sltu a0,a0,t1	
	fsqrt.d fa7,fa0	
	fmv.d fa0,fa7	
	ret
	.align 4	
life_1:
	ret
	.align 4
life_2:
	li a1,0xfff8000000000000
	fmv.d.x fa0,a1
	ret
	.align 4
life_3:
	li a2,0x000fffffffffffff
	and a3,t2,a2
	beqz a3,life_1
	j life_1
	.align 4
