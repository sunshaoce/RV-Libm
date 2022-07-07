.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$databegin: 	
	.dword 0x8000000000000511	
	.dword 0x8000000000009509	
	.dword 0x8000000000039909	
	.dword 0x3f800000	
	.section .text	
	.align 4	
	.globl _rv_ldexp	
_rv_ldexp: 	
	fmv.x.d t1,fa0	
	fcvt.l.d a0,fa1,rtz
	li t0,2047	
	addi sp,sp,-208	
	slli t0,t0,0x34	
	sd ra,0(sp)	
	sd s1,8(sp)	
	li t6,2097	
	fsd fa0,16(sp)	
	li a7,-2097	
	li t3,0x0	
	and t2,t1,t0	
	mv s1,t1	
	slt a7,a0,a7	
	xor t4,t2,t0	
	beqz t4,a_128	
	.align 4	
	beqz t2,a_90	
	sub t6,a0,t6	
	sltz t6,t6
	.align 4	
	beqz t6,a_250	
	.align 4	
	bnez a7,a_200	
	.align 4	
	j a_fc	
	.align 4	
a_90: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	li a1,-1	
	li a5,1023	
	li a3,3119	
	flw fa7,24(tp)	
        fmv.x.d t5,fa7
        li a2,0x20000000
        and a2,a2,t5
        beqz a2,life_1
        li a2,0x30000000
        slli a2,a2,0x2
        and a4,a2,t5
        slli a4,a4,0x3
        li a2,0x1c0000000
        or a4,a2,a4
        li a2,0x3FFFFFFF
        and t5,a2,t5
        or t5,a4,t5
        slli t5,t5,0x1D
        fmv.d.x fa7,t5
        j life_2
life_1:
        li a2,0x30000000
        slli a2,a2,0x2
        and a4,a2,t5
        slli a4,a4,0x3
        li a2,0x3FFFFFFF
        and t5,a2,t5
        or t5,a4,t5
        slli t5,t5,0x1D
        fmv.d.x fa7,t5
life_2:
	srli a1,a1,0xc	
	slli a5,a5,0x34	
	li a4,-1075	
	and a1,t1,a1	
	add t1,t1,a5	
	slt a4,a0,a4	
	li t3,0x1	
	beqz a1,a_128	
	sub a3,a0,a3	
	sltz a3,a3
	fmv.d.x fs1,t1	
	addi a0,a0,-1022	
	beqz a3,a_250	
	.align 4	
	bnez a4,a_200	
	fsgnj.d ft0,fa7,fa0	
	sd t1,16(sp)	
	fsub.d ft0,fs1,ft0	
	fmv.x.d s1,ft0	
	fsd ft0,16(sp)	
	and t2,s1,t0	
	.align 4	
a_fc: 	
	li ra,2046	
	srai s10,t2,0x34	
	xor s1,s1,t2	
	add a0,s10,a0	
	blez a0,a_140	
	sub ra,a0,ra	
	sltz ra,ra
	slli s11,a0,0x34	
	.align 4	
	beqz ra,a_250	
	or s1,s1,s11	
	fmv.d.x fa0,s1	
	sd s1,16(sp)	
a_128: 	
	fmv.d fa7,fa0	
	.align 4	
a_130: 	
	ld ra,0(sp)	
	ld s1,8(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,208
	ret
a_140: 	
	li t4,1024	
	li a7,0x1	
	li t6,1023	
	addi t5,a0,53	
	sub t4,t4,a0	
	slli a7,a7,0x3f	
	slli t6,t6,0x34	
	slli t4,t4,0x34	
	and a7,s1,a7	
	add t6,s1,t6	
	blez t5,a_200	
	add a7,t4,a7	
	fmv.d.x fs2,t6	
	li t1,-1	
	addi a1,sp,24	
	fmv.d.x fs3,a7	
	sd a7,16(sp)	
	fadd.d fs2,fs3,fs2	
	fsub.d fs3,fs3,fs2	
	fmv.x.d a5,fs2	
	fsd fs2,16(sp)	
	sub t4,a5,t4	
	sd t4,16(sp)	
	li a2,0x0
	fmv.d.x ft4,a2
	feq.d a2,fs3,ft4
	bnez a2,a_200
	.align 4	
	bnez t3,a_1e0	
	sd t1,24(sp)	
	.align 4	
a_1d0: 	
	ld a6,56(sp)	
	andi a6,a6,0x40	
	bnez a6,a_200	
a_1e0: 	
	ld ra,0(sp)	
	ld s1,8(sp)	
	fld fa0,16(sp)	
	addi sp,sp,208
	ret
	.align 4	
a_200: 	
	lui t1,%hi($databegin) 
	addi t1,t1,%lo($databegin)
	addi a1,sp,24	
	srli s1,s1,0x3f	
	sd t1,24(sp)	
a_220: 	
	fld fa7,56(sp)	
	andi s1,s1,0x1	
	beqz s1,a_130
	ld ra,0(sp)	
	ld s1,8(sp)	
	fneg.d fa0,fa7	
	addi sp,sp,208
	ret
	.align 4	
a_250: 	
	lui t0,%hi($databegin)	
	addi t0,t0,%lo($databegin)
	ld t1,8(t0)	
	ld t2,16(t0)	
	srli s1,s1,0x3f	
	addi a1,sp,24	
	andi s1,s1,0x1	
	bnez s1,TYPH_1
	mv t2,t2
	j TYPH_2
TYPH_1:	mv t2,t1
TYPH_2:	nop
	sd t2,24(sp)	
a_280: 	
	ld ra,0(sp)	
	fld fa0,56(sp)	
	ld s1,8(sp)	
	addi sp,sp,208
	ret
