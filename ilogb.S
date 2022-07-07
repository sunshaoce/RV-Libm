.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$databegin: 	
	.dword 0x4340000000000000	
	.section .text	
	.align 4	
	.globl _rv_ilogb	
_rv_ilogb: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	slli t0,t0,0x34	
	and a0,a0,t0	
	xor t1,a0,t0	
	beqz t1,L$1	
	beqz a0,L$2	
	srli a0,a0,0x34	
	addi a0,a0,-1023	
	.align 4	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
L$2: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	fld fa7,0(tp)	
	fmv.x.d a1,fa7
	li a2,0xFFF0000000000000
	and a1,a1,a2
	li a3,0x000FFFFFFFFFFFFF
	fmv.x.d a4,fa0
	and a2,a4,a3
	or a1,a1,a2
	fmv.d.x ft0,a1
	fsub.d fa7,ft0,fa7	
	fmv.x.d t2,fa7	
	and t2,t2,t0	
	beqz t2,L$3	
	srli t2,t2,0x34	
	li a1,-2098
	add a0,t2,a1
	fcvt.d.l fa0,a0	
	ret
	.align 4	
L$3: 	
	li a0,-32768
	slli a0,a0,16
	fcvt.d.l fa0,a0	
	ret
	.align 4	
L$1: 	
	fmv.x.d t3,fa0	
	li t5,-1	
	srli t5,t5,0xc	
	li t6,-1	
	li a0,-32768
	slli a0,a0,16
	srli t6,t6,0x21	
	and t4,t3,t0	
	and t3,t3,t5	
	sub t0,t4,t0	
	seqz t0,t0
	beqz t3,TYPH_1	
	mv t0,t0
	j TYPH_2
TYPH_1:	mv t0,zero
TYPH_2:
	beqz t0,TYPH_3	
	mv a0,a0
	j TYPH_4
TYPH_3:	mv a0,t6
TYPH_4:	
	fcvt.d.l fa0,a0	
	ret
	.align 4	
