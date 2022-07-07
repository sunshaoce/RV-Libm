.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_nextafter	
_rv_nextafter: 	
	fmv.x.d t4,fa1	
	addi t0,zero,2047	
	fmv.x.d t1,fa0	
	addi sp,sp,-288	
	slli t0,t0,0x34	
	sd ra,0(sp)	
	sd s1,8(sp)	
	li a7,0xd	
	addi a3,zero,1023	
	sd s2,16(sp)	
	sd s3,24(sp)	
	and t5,t4,t0	
	slli a7,a7,0x36	
	sd s4,32(sp)	
	sd s5,152(sp)	
	and t2,t1,t0	
	addi a1,zero,997	
	slli a3,a3,0x35	
	li t6,0xd3	
	sub a7,t2,a7	
	slli a1,a1,0x35	
	fsd ft8,48(sp)	
	slli t6,t6,0x32	
	bgtu a1,a7,TYPH_1	
	li a7,0x1
	j TYPH_2
TYPH_1:	li a7,0x0
TYPH_2:
	fsd ft9,56(sp)	
	li s1,0x1	
	slli s1,s1,0x34	
	sub t6,t2,t6	
	fmv.d ft8,fa0	
	add a2,t5,s1	
	fsd fa1,64(sp)	
	sd t6,72(sp)	
	and a2,a2,a3	
	fsd fa0,80(sp)	
	seqz a2,a2
	or a7,a7,a2	
	bnez a7,L$130	
	flt.d t3,fa0,fa1
	beqz t3,TYPH_3
	li t3,0x4000000000000000
	fmv.d.x ft0,t3
	j TYPH_4
TYPH_3:	fmv.d.x ft0,t3
TYPH_4:
	li t3,0x0
	fmv.d.x ft3,t3
	feq.d t3,ft0,ft3
	bnez t3,L$110
	li a6,0x1
	sub a6,t1,a6	
	addi a4,t1,0x1	
	srl t1,t1,63	
	beqz t1,TYPH_5	
	mv a4,a6
	j TYPH_6
TYPH_5:	mv a4,a4
TYPH_6:	
	fmv.d.x ft8,a4	
	
L$b0: 	
	
	
	
	
	fmv.d fa7,ft8	
	
	
	
L$d0: 	
	
	
	
	
	ld ra,0(sp)	
	ld s1,8(sp)	
	ld s2,16(sp)	
	ld s3,24(sp)	
	ld s4,32(sp)	
	ld s5,152(sp)	
	fld ft8,48(sp)	
	fld ft9,56(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,288
	
	
	
	
	
	
	
	
	
	
	ret
	
	
L$110: 	
	fle.d t3,ft8,fa1
	beqz t3,TYPH_7
	li t3,0x4000000000000000
	fmv.d.x fa1,t3
	j TYPH_8
TYPH_7:	fmv.d.x fa1,t3
TYPH_8:	
	li t3,0x0
	fmv.d.x ft3,t3
	feq.d t3,fa1,ft3
	beqz t3,L$b0
	li a6,0x1
	sub a6,t1,a6	
	addi a4,t1,0x1	
	srl t1,t1,63	
	beqz t1,TYPH_9	
	mv a6,a4
	j TYPH_10
TYPH_9:	mv a6,a6
TYPH_10:
	fmv.d.x ft8,a6	
	j L$b0	
L$130: 	
	addi a5,zero,-1	
	srli a5,a5,0x1	
	and s2,t1,a5	
	and a6,t4,a5	
	bgtu s2,t0,TYPH_11	
	li s7,0x1
	j TYPH_12
TYPH_11:li s7,0x0
TYPH_12:nop
	beqz s7,L$b0	
	bgtu a6,t0,TYPH_13	
	li s8,0x1
	j TYPH_14
TYPH_13:li s8,0x0
TYPH_14:
	fmv.d fa7,fa1	
	beqz s8,L$d0	
	addi s10,zero,1023	
	li s11,0x1	
	sltu s9,t2,t5	
	slli s10,s10,0x34	
	addi a0,zero,511	
	sub ra,t2,s10	
	slli s11,s11,0x3e	
	sltu t2,t5,t2	
	slli a0,a0,0x35	
	sub t1,t1,ra	
	beqz s9,TYPH_15	
	mv s11,s11
	j TYPH_16
TYPH_15:mv s11,s10
TYPH_16:nop
	fmv.d.x fs1,t1	
	sub t6,t6,ra	
	fmv.d.x fs4,t6	
	beqz t2,TYPH_17	
	mv a0,a0
	j TYPH_18
TYPH_17:mv a0,s11
TYPH_18:
	sd t6,72(sp)	
	sd t1,80(sp)	
	sub a0,t5,a0	
	sub a0,t4,a0	
	fmv.d.x fs2,a0	
	sd a0,64(sp)	
	flt.d t3,fs1,fs2
	beqz t3,TYPH_19
	li t3,0x4000000000000000
	fmv.d.x fs3,t3
	j TYPH_20
TYPH_19:fmv.d.x fs3,t3
TYPH_20:
	li t3,0x0
	fmv.d.x ft3,t3
	feq.d t3,fs3,ft3
	bnez t3,L$1c0
	fadd.d fs5,fs1,fs4	
	j L$1cc	
L$1c0: 	
	fle.d t3,fs1,fs2
	beqz t3,TYPH_21
	li t3,0x4000000000000000
	fmv.d.x fs2,t3
	j TYPH_22
TYPH_21:fmv.d.x fs2,t3
TYPH_22:
	li t3,0x0
	fmv.d.x ft3,t3
	feq.d t3,fs2,ft3
	beqz t3,L$b0
	fsub.d fs5,fs1,fs4	
L$1cc: 	
	fmv.x.d s7,fs5	
	fsd fs5,80(sp)	
	add s7,s7,ra	
	fmv.d.x fa7,s7	
	add s9,s7,s1	
	and s9,s9,a3	
	sd s7,80(sp)	
	fmv.d ft9,fa7	
	bnez s9,L$d0	
	li t2,0x1	
	slli t2,t2,0x3f	
	xor s11,s2,t0	
	and s3,s7,t2	
	and s4,s7,a5	
	li s5,0x0	
	bnez s11,L$230	
	sltu s4,s4,t0	
	slli s4,s4,0x3e	
	fmv.d.x fs6,s4	
	fmv.x.d t3,fs6
	beqz t3,life_1
	fmv.d fa7,fa7
	j life_2
life_1:
	fmv.d fa7,ft8
life_2:
	fmv.d ft9,fa7	
	j L$348	
L$230: 	
	li t5,0x40	
	sltu a0,zero,s2	
	bgtu s1,s4,TYPH_23	
	li t1,0x1
	j TYPH_24
TYPH_23:	li t1,0x0
TYPH_24:
	sltu t0,s4,t0	
	beqz s3,TYPH_25	
	mv t5,t5
	j TYPH_26
TYPH_25:	li t5,0x3f
TYPH_26:
	li t3,0x0	
	and t1,t1,a0	
	sd a0,136(sp)	
	beqz t0,TYPH_27	
	mv t3,t3
	j TYPH_28
TYPH_27:	mv t3,t5
TYPH_28:
	beqz t1,L$270	
	mv s5,t3	
	j L$348	
L$270: 	
	sub t4,a6,s1	
	sltu a0,zero,a6	
	addi a1,zero,-1	
	bgtu a3,t4,TYPH_29	
	li t4,0x1
	j TYPH_30
TYPH_29:	li t4,0x0
TYPH_30:
	sd a0,144(sp)	
	and t4,a0,t4	
	bnez t4,L$2b0	
	sd a1,88(sp)	
	addi a1,sp,88	
	ld ra,0(sp)	
	ld a0,120(sp)	
	andi a0,a0,0x40	
	seqz t4,t4
L$2b0: 	
	ld t0,136(sp)	
	ld t1,144(sp)	
	bnez t0,L$320	
	fmv.d ft9,ft8	
	beqz t1,L$348	
	beqz t4,L$310	
	beqz s3,L$300	
	li a5,0x1	
	li a4,0x1	
	slli a5,a5,63	
	or a5,a4,a5	
	fmv.d.x ft9,a5	
	j L$348	
L$300: 	
	li a4,0x1	
	fmv.d.x ft9,a4	
	j L$348	
L$310: 	
	or s3,s3,s1	
	sd s3,72(sp)	
	fmv.d.x ft9,s3	
	j L$348	
L$320: 	
	li a7,0x42	
	sltu t4,zero,t4	
	sub s1,s2,s1	
	seqz s1,s1
	seqz s4,s4
	beqz s3,TYPH_31	
	mv a7,a7
	j TYPH_32
TYPH_31:li a7,0x41
TYPH_32:
	not s1,s1	
	or t4,t4,s1
	li a1,0x0	
	not s4,s4	
	and t4,t4,s4
	andi t4,t4,0x1	
	bnez t4,TYPH_33
	mv a1,a1
	j TYPH_34
TYPH_33:mv a1,a7
TYPH_34:
	mv s5,a1	
L$348: 	
	li a2,134217728 
	addi a1,sp,88	
	beqz s5,L$37c	
	li t6,0x3f
	li a7,0x40
	li a6,0x41
	li s7,0x42
	sub t6,s5,t6	
	sub a7,s5,a7	
	sub a6,s5,a6	
	sub s7,s5,s7	
	addi s9,zero,1	
	slli s9,s9,63	
	beqz t6,L$OVF_INF	
	beqz a7,L$OVF_NINF	
	beqz a6,L$UNF_ZERO	
	beqz s7,L$UNF_NZERO	
L$OVF_INF: 	
	li t3,38153
	add s10,zero,t3
	or s9,s9,s10	
	sd s9,88(sp)	
	addi a1,sp,88	
	fld ft9,120(sp)	
	fmv.d fa7,ft9	
	j L$d0	
L$OVF_NINF: 	
	li t3,39177
	add s10,zero,t3
	li t3,196608
	sext.w a6,t3
	or s10,s10,a6	
	or s9,s9,s10	
	sd s9,88(sp)	
	addi a1,sp,88	
	fld ft9,120(sp)	
	fmv.d fa7,ft9	
	j L$d0	
L$UNF_ZERO: 	
	addi s10,zero,1297	
	or s9,s9,s10	
	sd s9,88(sp)	
	addi a1,sp,88	
	fld ft9,120(sp)	
	fmv.d fa7,ft9	
	j L$d0	
L$UNF_NZERO: 	
	li t3,2321
	add s10,zero,t3
	or s9,s9,s10	
	sd s9,88(sp)	
	addi a1,sp,88	
	fld ft9,120(sp)	
	fmv.d fa7,ft9	
	j L$d0	
L$37c: 	
	fmv.d fa7,ft9	
	j L$d0	
