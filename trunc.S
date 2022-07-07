.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.globl _rv_trunc	
_rv_trunc: 	
	fmv.x.d t1,fa0	
	li t2,2047	
	slli t2,t2,0x34	
	li t3,0x1	
	li t4,537	
	li t5,1075	
	slli t3,t3,0x34	
	slli t4,t4,0x35	
	slli t5,t5,52	
	fmv.d.x fa7,t5	
	and t1,t1,t2	
	sub t3,t1,t3	
	sltu t3,t3,t4	
	beqz t3,L$50	
	fsgnj.d ft0,fa7,fa0	
	csrrs a4,fcsr,x0
	fmv.d.x fa4,a4
	csrrs a3,fcsr,x0
	fmv.d.x fa5,a3
	fmv.x.d t6,fa5	
	addi a7,zero,3	
	slli a7,a7,58	
	not a7,a7	
	and t6,t6,a7
	mv a3,t6
	csrrw x0,fcsr,a3
	fadd.d fs1,fa0,ft0,rtz	
	csrrw x0,fcsr,a4
	fsub.d fa7,fs1,ft0
	fcvt.l.d a1,fa7
	bnez a1,life_1
	fmv.x.d a2,fa0
	bgtz a2,life_1
	li a2,0x8000000000000000
	fmv.d.x fa7,a2	
life_1:	fmv.d fa0,fa7	
	ret
	.align 3	
L$50: 	
	bnez t1,L$58	
	li a1,0x0
	fmv.d.x fa0,a1 
L$58: 	
	ret
