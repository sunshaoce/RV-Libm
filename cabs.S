.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$jmppoint: 	
	.dword J$POINT1	
	.dword J$POINT1	
	.dword J$POINT1	
	.dword J$POINT1	
	.dword J$POINT1	
	.dword J$POINT2	
	.dword J$POINT6	
	.dword J$POINT4	
	.dword J$POINT4	
	.dword J$POINT4	
	.dword J$POINT2	
	.dword J$POINT6	
	.dword J$POINT7	
	.dword J$POINT3	
	.dword J$POINT4	
	.dword J$POINT2	
	.dword J$POINT6	
	.dword J$POINT5	
	.dword J$POINT7	
	.dword J$POINT4	
	.dword J$POINT2	
	.dword J$POINT6	
	.dword J$POINT6	
	.dword J$POINT6	
	.dword J$POINT0	
	.align 4	
$databegin: 	
	.dword 0x800fffffffffffff	
	.dword 0x4010000000000000	
	.dword 0x3fe0000000000000	
	.dword 0x8000000000009509	
	.section .text	
	.align 4	
	.globl _rv_cabs	
_rv_cabs: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	li t2,0x1	
	li t4,1021	
	li a1,0x1	
	fmv.x.d t1,fa1	
	slli t0,t0,0x34	
	slli t2,t2,0x3d	
	li a2,1023	
	addi sp,sp,-176	
	slli t4,t4,0x34	
	slli a1,a1,0x34	
	sd ra,0(sp)	
	and a0,a0,t0	
	slli a2,a2,0x35	
	and t1,t1,t0	
	sub t3,a0,t2	
	sub t6,a0,a1	
	sub t2,t1,t2	
	sltu t3,t3,t4	
	sub a7,t1,a1	
	li t5,0	
	sltu t2,t2,t4	
	sltu t6,t6,a2	
	sltu a7,a7,a2	
	sub a3,a0,t1	
	and t2,t3,t2	
	and t6,t6,a7	
	li a4,0x1b	
	li a5,0x1	
	li s6,0x0
	fmv.d.x fs11,s6
	bnez t2,NORMAL	
	.align 4	
	beqz t6,UNORMAL	
	.align 4	
	blt a3,zero,JxXJy	
	slli a4,a4,0x35	
	slli a5,a5,0x3e	
	sub a3,a3,a4	
	sltz a3,a3
	beqz a3,J$POINT4	
	sub t5,a0,a5	
	.align 4	
	j BDxy	
	.align 4	
JxXJy: 	
	li a6,2021	
	li s7,0x1	
	slli a6,a6,0x35	
	slli s7,s7,0x3e	
	slt a3,a3,a6	
	sub t5,t1,s7	
	bnez a3,J$POINT6	
BDxy: 	
	li s8,1023	
	slli s8,s8,0x34	
	sub s8,s8,t5	
	fmv.d.x fa7,s8	
	li s8,0x1	
	slli s8,s8,0x3e	
	add s8,t5,s8	
	fmv.d.x ft0,s8	
	fmul.d fa0,fa7,fa0	
	fmul.d fa1,fa7,fa1	
	j NORMAL	
	.align 4	
UNORMAL: 	
	fmv.x.d s9,fa0	
	srli s10,s9,0x3f	
	and ra,s9,t0	
	beqz ra,ff80232790	
	sltu ra,ra,t0	
	addi s11,s10,4	
	beqz ra,ff80232770	
	.align 4	
	j ff802327a8	
	.align 4	
ff80232770: 	
	li t4,-1	
	addi s10,s10,2	
	srli t4,t4,0xc	
	and s9,s9,t4	
	srli t3,s9,0x33	
	beqz s9,TYPH_1	
	mv t3,t3
	j TYPH_2
TYPH_1:	mv t3,s10
TYPH_2:
	mv s11,t3	
	j ff802327a8	
ff80232790: 	
	li t2,-1	
	li a1,0x6	
	srli t2,t2,0xc	
	and s9,s9,t2	
	beqz s9,TYPH_3	
	mv a1,a1
	j TYPH_4
TYPH_3:	li a1,0x8
TYPH_4:
	add s11,s10,a1	
ff802327a8: 	
	fmv.x.d a2,fa1	
	srli a7,a2,0x3f	
	and t6,a2,t0	
	beqz t6,ff80232800	
	sltu t6,t6,t0	
	addi a4,a7,4	
	beqz t6,ff802327e0	
	.align 4	
	j ff80232818	
	.align 4	
ff802327e0: 	
	li a5,-1	
	addi a7,a7,2	
	srli a5,a5,0xc	
	and a2,a2,a5	
	srli a6,a2,0x33	
	beqz a2,TYPH_5	
	mv a6,a6
	j TYPH_6
TYPH_5:	mv a6,a7
TYPH_6:
	mv a4,a6	
	j ff80232818	
ff80232800: 	
	li a3,-1	
	li s7,0x6	
	srli a3,a3,0xc	
	and a2,a2,a3	
	beqz a2,TYPH_7	
	mv s7,s7
	j TYPH_8
TYPH_7:	li s7,0x8
TYPH_8:
	add a4,a7,s7	
ff80232818: 	
	srai s11,s11,0x1	
	lui tp,%hi($jmppoint)	
	addi tp,tp,%lo($jmppoint)
	srai a4,a4,0x1	
	slli s11,s11,0x2	
	add s11,s11,s11
	add a4,s11,a4	
	li a6,0x18
	bgtu a4,a6,TYPH_9
	li a6,0x1
	j TYPH_10
TYPH_9:	li a6,0x0
TYPH_10:
	slli a4,a4,0x2	
	add tp,a4,tp
	beqz s8,J$POINT7	
	lw tp,0(tp)	
	add tp,tp,gp	
	jr (tp)	
	.align 4	
J$POINT0: 	
	ld ra,0(sp)	
	fsgnj.d fa7,fs11,fs11	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
J$POINT1: 	
	ld ra,0(sp)	
	fsgnj.d fa7,fa0,fa0	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
J$POINT2: 	
	ld ra,0(sp)	
	fsgnj.d fa7,fa1,fa1	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
J$POINT3: 	
	li ra,0x7	
	slli ra,ra,0x36	
	sltu ra,a0,ra	
	bnez ra,J$POINT7	
J$POINT4: 	
	ld ra,0(sp)	
	fsgnj.d fa7,fa0,fs11	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
J$POINT5: 	
	li t4,0x7	
	slli t4,t4,0x36	
	sltu t4,t1,t4	
	bnez t4,J$POINT7	
J$POINT6: 	
	ld ra,0(sp)	
	fsgnj.d fa7,fa1,fs11	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
J$POINT7: 	
	fmv.x.d t2,fa0	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	li t5,0x3	
	li t3,0x1	
	ld s9,0(tp)	
	slli t5,t5,0x3e	
	beqz a0,ff80232900	
	slli t3,t3,0x3e	
	add a0,a0,t3	
	and t2,t2,s9	
	or t2,t2,a0	
	fmv.d.x fa0,t2	
	j ff80232910	
	.align 4	
ff80232900: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	fld fs1,8(tp)	
	fmv.x.d a6,fs1
	li a1,0xFFF0000000000000
	and a6,a6,a1
	li t6,0x000FFFFFFFFFFFFF
	fmv.x.d a5,fa0
	and a1,a5,t6
	or a6,a6,a1
	fmv.d.x fs2,a6
	fsub.d fa0,fs2,fs1	
ff80232910: 	
	fmv.x.d s10,fa1	
	beqz t1,ff80232940	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	li a1,0x1	
	ld t6,0(tp)	
	slli a1,a1,0x3e	
	add t1,t1,a1	
	and t6,s10,t6	
	or s10,t6,t1	
	fmv.d.x fa1,s10	
	j NORMAL	
	.align 4	
ff80232940: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	fld fs3,8(tp)	
	fmv.x.d a6,fs3
	li a5,0xFFF0000000000000
	and a6,a6,a5
	li a1,0x000FFFFFFFFFFFFF
	fmv.x.d t1,fa1
	and a5,t1,a1
	or a6,a6,a5
	fmv.d.x fs4,a6
	fsub.d fa1,fs4,fs3	
NORMAL: 	
	fmul.d fa0,fa0,fa0	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	li a5,1021	
	ld t1,24(tp)	
	fld fs5,16(tp)	
	fld fs6,8(tp)	
	slli a5,a5,0x34	
	fmadd.d fa0,fa1,fa1,fa0	
	fsqrt.d fa7,fa0	
	beqz t5,OUT	
	sub a5,t5,a5	
	sltz a5,a5
	fmul.d fs5,fa7,fs5	
	bnez a5,ff802329e0	
	flt.d a6,fa7,fs6
	beqz a6,TYPH_11
	li a6,0x4000000000000000
	fmv.d.x fs6,a6
	j TYPH_12
TYPH_11:	fmv.d.x fs6,a6
TYPH_12:
	.align 4	
	li a6,0x0
	fmv.d.x ft3,a6
	feq.d a6,fs6,ft3
	beqz a6,ff802329e0
	addi a1,sp,8	
	sd t1,8(sp)	
	.align 4	
	ld t0,40(sp)	
	fmv.d.x fa0,t0	
	ld ra,0(sp)	
	addi sp,sp,176
	ret
ff802329e0: 	
	.align 4	
	ld ra,0(sp)	
	li t1,3073	
	slli t1,t1,0x34	
	slt t1,t5,t1	
	bnez t1,ff80232a10	
	fmul.d fa0,ft0,fs5	
	addi sp,sp,176
	ret
ff80232a10: 	
	.align 4	
	fmv.x.d t2,fa7	
	li t4,0x1	
	slli t4,t4,0x3e	
	ld ra,0(sp)	
	and t0,t2,t0	
	sub t4,t0,t4	
	xor t3,t2,t0	
	blez t4,ff80232a40	
	or t2,t3,t4	
	fmv.d.x fa7,t2	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
ff80232a40: 	
	li t6,0x1	
	sub t0,t0,t4	
	li a6,4095
	add a7,zero,a6
	slli t6,t6,0x34	
	slli a7,a7,0x34	
	add t0,t0,t6	
	or t3,t3,t0	
	and t2,t3,a7	
	fmv.d.x fs1,t2	
	fadd.d fa7,fs1,fa7	
	fmv.x.d t2,fa7	
	sub t2,t2,t0	
	fmv.d.x fa7,t2	
OUT: 	
	ld ra,0(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,176
	ret
