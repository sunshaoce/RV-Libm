.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_lround	
_rv_lround: 	
	fmv.d fa7,fa0	
	fmv.x.d t1,fa0	
	addi sp,sp,-192 
	addi t2,zero,2047	
	li t3,0x1	
	addi s7,zero,1022	
	slli s7,s7,52	
	fmv.d.x ft0,s7	
	slli t2,t2,0x34	
	slli t3,t3,0x34	
	addi t4,zero,537	
	addi s8,zero,1075	
	slli s8,s8,52	
	slli t4,t4,0x35	
	fmv.d.x fs2,s8	
	and t1,t1,t2	
	sub t3,t1,t3	
	fsgnj.d fs1,ft0,fa0	
	sltu t3,t3,t4	
	beqz t3,L$80	
	fsgnj.d fs3,fs2,fa0	
	fadd.d fs1,fs1,fa0	
	csrrs a3,fcsr,x0
	fmv.d.x fa4,a3
	fmv.d.x fa5,a3
	fmv.x.d t6,fa5	
	addi a7,zero,3	
	slli a7,a7,58	
	not a7,a7	
	and t6,t6,a7
	fmv.d.x fa5,t6	
	fmv.x.d a4,fa5
	csrrw x0,fcsr,a4
	fadd.d fs4,fs3,fs1,rtz	
	fmv.x.d a4,fa4
	csrrw x0,fcsr,a4
	fsub.d fs3,fs4,fs3,rtz	
	fmv.d.x fa4,a3
	fmv.d.x fa5,a3
	fmv.x.d t6,fa5	
	addi a7,zero,3	
	slli a7,a7,58	
	not a7,a7	
	and t6,t6,a7
	fmv.d.x fa5,t6	
	fmv.x.d a3,fa5
	csrrw x0,fcsr,a3
	fmv.d fs5,fs3
	fmv.x.d a3,fa4
	csrrw x0,fcsr,a3
	fmv.x.d a1,fs5
	bnez a1,life_1
	fmv.x.d a1,fa0
	bgtz a1,life_1
	li a1,0x8000000000000000
	fmv.d.x fs5,a1
life_1:	fmv.x.d a0,fs5	
	addi sp,sp,192
	ret
L$80: 	
	li t5,0x11	
	li a0,0x0	
	slli t5,t5,0x3a	
	sltu t5,t1,t5	
	beqz t5,L$f0	
	bnez t1,L$b0	
	addi sp,sp,192
	ret
L$b0: 	
	addi s7,zero,1086	
	li a3,3134
	add s8,zero,a3
	slli s7,s7,52	
	slli s8,s8,52	
	fmv.d.x fs6,s7	
	fmv.d.x fa1,s8	
	flt.d a3,fa7,fs6
	beqz a3,TYPH_1
	li a3,0x4000000000000000
	fmv.d.x fs6,a3
	j TYPH_2
TYPH_1:	fmv.d.x fs6,a3
TYPH_2:	
	li a3,0x0
	fmv.d.x ft3,a3
	feq.d a3,fs6,ft3
	bnez a3,L$f0
	flt.d a3,fa7,fa1
	beqz a3,TYPH_3
	li a3,0x4000000000000000
	fmv.d.x fa1,a3
	j TYPH_4
TYPH_3:	fmv.d.x fa1,a3
TYPH_4:
	li a3,0x0
	fmv.d.x ft3,a3
	feq.d a3,fa1,ft3
	beqz a3,L$f0
	csrrs a3,fcsr,x0
	fmv.d.x fa4,a3
	fmv.d.x fa5,a3
	fmv.x.d t6,fa5	
	addi a7,zero,3	
	slli a7,a7,58	
	not a7,a7	
	and t6,t6,a7
	fmv.d.x fa5,t6	
	fmv.x.d a3,fa5
	csrrw x0,fcsr,a3
	fmv.d fa2,fa7
	fmv.x.d a3,fa4
	csrrw x0,fcsr,a3
	fmv.x.d a0,fa2	
	addi sp,sp,192
	ret
L$f0: 	
	fmv.x.d a0,fa0
	addi sp,sp,192
	ret
