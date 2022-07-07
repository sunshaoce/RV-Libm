.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$databegin: 	
	.dword 0x400fe8cf02ccc470	
	.dword 0x3ff0000000000000	
	.dword 0x41a46ac2d1a81cd8	
	.dword 0x7fdfffffffffffff	
	.dword 0x3fe62e42fefa39ef	
	.dword 0x3fd0000000000000	
	.dword 0x3fb7ffffffffff07	
	.dword 0x3faaaaaaaaaddfbf	
	.dword 0x3fa17ffffdf6faba	
	.dword 0x3f9933347de0c4ff	
	.dword 0x3f933fc53680db02	
	.dword 0x3f8eb0caa311158b	
	.dword 0x3f88674b0a8b1f0a	
	.dword 0x3f8b082b0da7b094	
	.dword 0x8000000000004502	
	.section .text	
	.align 4	
	.globl _rv_acosh	
_rv_acosh: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	slli t0,t0,0x34	
	li t1,0x1	
	slli t1,t1,0x34	
	addi sp,sp,-192	
	sd ra,0(sp)	
	li t2,1023	
	slli t2,t2,0x35	
	lui t3,%hi($databegin)	
	addi t3,t3,%lo($databegin)
	and a0,a0,t0	
	sub a0,a0,t1	
	sltu a0,a0,t2	
	fld fs1,0(t3)	
	li a2,0x4000000000000000
	li a3,0x0000000000000000
	beqz a0,L$1	
	fld ft0,8(t3)	
	fle.d a5,fa0,ft0
	beqz a5,TYPH_1
	fmv.d.x fa7,a2
	j TYPH_2
TYPH_1:	fmv.d.x fa7,a5
TYPH_2:	
	fmv.d.x ft8,a3
	feq.d a4,fa7,ft8
	beqz a4,L$2
	.align 4	
	fle.d a4,fa0,fs1
	beqz a4,TYPH_3
	fmv.d.x fs1,a2
	j TYPH_4
TYPH_3:	fmv.d.x fs1,a4
TYPH_4:	
        fmv.d.x ft8,a3
	feq.d a4,fs1,ft8
	bnez a4,L$3
	.align 4	
	fsub.d fs2,fa0,ft0	
	fadd.d fs3,fa0,ft0	
	fmul.d fs3,fs2,fs3	
	fsqrt.d fs4,fs3	
	fadd.d fa0,fs2,fs4	
	call ra,_rv_log1p	
	ld ra,0(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$3: 	
	fld fs1,16(t3)	
	flt.d a4,fa0,fs1
	beqz a4,TYPH_5
	fmv.d.x fs1,a2
	j TYPH_6
TYPH_5:	fmv.d.x fs1,a4
TYPH_6:	
	fld fa5,40(t3)	
        fmv.d.x ft8,a3
	feq.d a4,fs1,ft8
	bnez a4,L$4
	fmul.d fs2,fa0,fa0	
	fld fs3,104(t3)	
	fld fs4,96(t3)	
	fdiv.d fs2,ft0,fs2	
	fmadd.d fs3,fs3,fs2,fs4	
	fadd.d fa0,fa0,fa0	
	fld fs5,88(t3)	
	fmadd.d fs3,fs3,fs2,fs5	
	fld fs6,80(t3)	
	fld fa1,72(t3)	
	fmadd.d fs3,fs3,fs2,fs6	
	fld fa2,64(t3)	
	fld fa3,56(t3)	
	fmadd.d fs3,fs3,fs2,fa1	
	fld fa4,48(t3)	
	fmadd.d fs3,fs3,fs2,fa2	
	fmadd.d fs3,fs3,fs2,fa3	
	fmadd.d fs3,fs3,fs2,fa4	
	fmadd.d fs3,fs3,fs2,fa5	
	fmul.d fs2,fs3,fs2	
	fsd fs2,56(sp)	
	call ra,_rv_log	
	fld ft0,56(sp)	
	ld ra,0(sp)	
	fsub.d fa7,fa7,ft0	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$4: 	
	fld fs1,24(t3)	
	flt.d a4,fa0,fs1
	beqz a4,TYPH_7
	fmv.d.x fs1,a2
	j TYPH_8
TYPH_7:	fmv.d.x fs1,a4
TYPH_8:	
        fmv.d.x ft8,a3
	feq.d a4,fs1,ft8
	bnez a4,L$5
	fadd.d fa0,fa0,fa0	
	call ra,_rv_log	
	ld ra,0(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$5: 	
	fld ft0,32(t3)	
	fsd ft0,56(sp)	
	call ra,_rv_log	
	fld ft0,56(sp)	
	ld ra,0(sp)	
	fadd.d fa7,ft0,fa7	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$2: 	
	feq.d a4,fa0,ft0
	beqz a4,TYPH_9
	fmv.d.x ft0,a2
	j TYPH_10
TYPH_9:	fmv.d.x ft0,a4
TYPH_10:	
	ld ra,0(sp)	
        fmv.d.x fa7,a3
        fmv.d.x ft8,a3
	feq.d a4,ft0,ft8
	bnez a4,L$11
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$1: 	
	fmv.x.d a0,fa0	
	and t2,a0,t0	
	srli t1,a0,0x3f	
	beqz t2,L$12	
	sltu t0,t2,t0	
	addi t3,t1,4	
	beqz t0,L$13	
	.align 4	
	j L$14	
	.align 4	
L$13: 	
	li t4,-1	
	addi t1,t1,2	
	srli t4,t4,0xc	
	and a0,a0,t4	
	srli t5,a0,0x33	
	beqz a0,TYPH_11	
	mv t5,t5
	j TYPH_12
TYPH_11:mv t5,t1
TYPH_12:
	mv t3,t5	
	j L$14	
L$12: 	
	li t6,-1	
	li a7,0x6	
	srli t6,t6,0xc	
	and a0,a0,t6	
	beqz a0,TYPH_13	
	mv a7,a7
	j TYPH_14
TYPH_13:li a7,0x8
TYPH_14:
	add t3,t1,a7	
L$14: 	
	ld ra,0(sp)	
	fmv.d fa7,fa0	
	srli a1,t3,0x1	
	li a4,0x2
	sub t3,t3,a4
	seqz t3,t3
	seqz a1,a1
	or t3,t3,a1	
	beqz t3,L$11	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$11: 	
	lui t3,%hi($databegin)	
	addi t3,t3,%lo($databegin)
	ld s7,112(t3)	
	addi a1,sp,8	
	sd s7,8(sp)	
	ld ra,0(sp)	
	fld fa7,40(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
