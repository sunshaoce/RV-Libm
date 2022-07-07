.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$databegin: 	
	.dword 0x4340000000000000	
	.dword 0x8000000000039904	
	.dword 0x7ff0000000000000	
	.section .text	
	.align 4	
	.globl _rv_logb	
_rv_logb: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	addi sp,sp,-192	
	slli t0,t0,0x34	
	sd ra,0(sp)	
	fsd fa0,56(sp)	
	and t1,a0,t0	
	xor t2,t1,t0	
	beqz t2,L$1	
	.align 4	
	beqz t1,L$2	
	srli t1,t1,0x34	
	addi t1,t1,-1023	
	fmv.d.x fa7,t1	
	fmv.x.d a2,fa7
	fcvt.d.l fa7,a2
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$2: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	ld ra,0(sp)	
	fld ft0,0(tp)	
	fmv.x.d a2,ft0
	li a3,0xFFF0000000000000
	and a2,a2,a3
	li a4,0x000FFFFFFFFFFFFF
	fmv.x.d a5,fa0
	and a3,a5,a4
	or a2,a2,a3
	fmv.d.x fs1,a2
	fsub.d ft0,fs1,ft0	
	fmv.x.d t3,ft0	
	and t0,t3,t0	
	beqz t0,L$3	
	srli t0,t0,0x34	
	li a2,-2098
	add t0,t0,a2
	fmv.d.x fs2,t0	
	fmv.x.d a2,fs2
	fcvt.d.l fa7,a2
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
L$3: 	
	lui t5,%hi($databegin)	
	addi t5,t5,%lo($databegin)
	addi a1,sp,8	
	ld t4,8(t5)	
	sd t4,8(sp)	
	ld ra,0(sp)	
	fld fa0,40(sp)	
	addi sp,sp,192
	ret
	.align 4	
L$1: 	
	ld t1,56(sp)	
	li t0,-1	
	lui t2,%hi($databegin)	
	addi t2,t2,%lo($databegin)
	srli t0,t0,0xc	
	and t0,t1,t0	
	bnez t0,L$4	
	ld ra,0(sp)	
	fld fa0,16(t2)	
	addi sp,sp,192
	ret
	.align 4	
L$4: 	
	ld ra,0(sp)	
	fmv.d fa7,fa0	
	fmv.d fa0,fa7	
	addi sp,sp,192
	ret
	.align 4	
