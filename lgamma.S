.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$jmppoint: 	
	.dword JMP$00	
	.dword JMP$01	
	.dword JMP$02	
	.dword JMP$03	
	.dword JMP$04	
	.dword JMP$05	
	.dword JMP$06	
	.dword JMP$07	
	.dword JMP$08	
	.dword JMP$09	
	.dword JMP$10	
	.dword JMP$11	
	.dword JMP$12	
	.dword JMP$13	
	.dword JMP$14	
	.dword JMP$15	
	.dword JMP$16	
	.align 4	
$jmpnpoint: 	
	.dword JMPN$00	
	.dword JMPN$00	
	.dword JMPN$02	
	.dword JMPN$03	
	.dword JMPN$03	
	.dword JMPN$03	
	.dword JMPN$06	
	.dword JMPN$06	
	.dword JMPN$08	
	.dword JMPN$09	
	.align 4	
$databegin: 	
	.dword 0x7f5754d9278b51a7	
	.dword 0x4163023293c1bb66	
	.dword 0x3fed67f1c864beb5	
	.dword 0x3fcce6bb25aa1316	
	.dword 0x400921fb54442d18	
	.dword 0x3fb5555555555555	
	.dword 0xbf66c16c16c14af4	
	.dword 0x3f4a01a017e88ee8	
	.dword 0xbf438134e14af2a1	
	.dword 0x3f4b92c92d63c94c	
	.dword 0xbf5ef97fa8dfce6f	
	.dword 0x3f74c37d735455ae	
	.dword 0x3f104902062913a2	
	.dword 0x3eef83a414128311	
	.dword 0x3f67a815d793fd1b	
	.dword 0x3f556e14853dd82d	
	.dword 0x3fa23e882b5a189c	
	.dword 0x3f9b84ebe906da19	
	.dword 0x3fc6220ce0c4c055	
	.dword 0x3fcc168ba77dd24b	
	.dword 0x3fd64276d307f71e	
	.dword 0x3feabd93220544da	
	.dword 0x3fca92d0736b184d	
	.dword 0x3ff7ccf9d55bd332	
	.dword 0xbfb3c467e37db0c8	
	.dword 0x3ff0000000000000	
	.word 0x3f000000	
	.word 0xbf000000	
	.word 0x41000000	
	.word 0xc1000000	
	.word 0x3f800000	
	.word 0x40e00000	
	.word 0x40c00000	
	.word 0x40a00000	
	.word 0x40800000	
	.word 0x40400000	
	.word 0x40000000	
	.word 0x0	
	.dword 0x4330000000000000	
	.dword 0x8000000000009504	
	.dword 0x8000000000009509	
	.dword 0x8000000000004502	
	.dword 0x8000000000001D00	
	.section .text	
	.align 4	
	.globl _rv_lgamma	
_rv_lgamma: 	
	fmv.x.d a0,fa0	
	li t0,2047	
	slli t0,t0,0x34	
	li t1,0x1	
	li t4,1023	
	slli t1,t1,0x34	
	addi sp,sp,-352	
	slli t4,t4,0x35	
	and a0,a0,t0	
	sd ra,0(sp)	
	addi a4,sp,96
	vsetvli a5,a6,e64,m1
	vse64.v v2,(a4)
	sub a0,a0,t1	
	addi a4,sp,128
	vse64.v v3,(a4)
	addi a4,sp,160
	vse64.v v4,(a4)
	sltu a0,a0,t4	
	addi a4,sp,192
	vse64.v v5,(a4)
	fmv.d ft1,fa0	
	beqz a0,L$1	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fs1,216(tp)	
	fcvt.d.s fs1,fs1
	flw ft2,208(tp)	
	fcvt.d.s ft2,ft2
	flw fs3,220(tp)	
	fcvt.d.s fs3,fs3
	flw fa7,212(tp)	
	fcvt.d.s fa7,fa7
	flw fs5,224(tp)	
	fcvt.d.s fs5,fs5
	flt.d a4,fa0,fs1
	beqz a4,TYPH_1
	li a4,0x4000000000000000
	fmv.d.x fs2,a4
	j TYPH_2
TYPH_1:	fmv.d.x fs2,a4
TYPH_2:
	fmv.d ft0,ft2	
	fmv.d fs6,fs5	
	fmv.x.d a4,fa0
	bltz a4,life_11
	fmv.d ft0,ft0
	j life_12
life_11:
	fmv.d ft0,fa7
life_12:
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,fs2,ft5
	bnez a4,L$2
	.align 4	
	fle.d a4,fa0,fs3
	beqz a4,TYPH_3
	li a4,0x4000000000000000
	fmv.d.x fs3,a4
	j TYPH_4
TYPH_3:	fmv.d.x fs3,a4
TYPH_4:
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,fs3,ft5
	beqz a4,L$21
	fadd.d ft0,fa0,ft0	
	csrrs a4,fcsr,x0
	fmv.d.x fa5,a4
	fmv.x.d t5,fa5	
	addi t6,zero,3	
	slli t6,t6,58	
	not t6,t6	
	and t5,t5,t6
	fmv.d.x ft8,t5	
	fmv.x.d a4,ft8
	csrrw x0,fcsr,a4
	fcvt.l.d a4,ft0,rtz
	fmv.d.x fs4,a4
	fmv.x.d a4,fa5
	csrrw x0,fcsr,a4
	fmv.x.d t5,fs4	
	fmv.x.d a4,fs4
	fcvt.d.l fs4,a4
	addi t5,t5,8	
	li a4,0x10
	bgtu t5,a4,TYPH_5
	li t6,0x1
	j TYPH_6
TYPH_5:	li t6,0x0
TYPH_6:
	fsub.d ft3,fa0,fs4	
	beqz t6,L$22	
	lui tp,%hi($jmppoint)	
	addi tp,tp,%lo($jmppoint)
	slli a4,t5,0x3	
	add tp,a4,tp
	ld tp,0(tp)	
	jalr tp	
	.align 4	
JMP$00: 	
	fsub.d fs6,ft3,fs1	
	.align 4	
JMP$01: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fa1,228(tp)	
	fcvt.d.s fa1,fa1
	fsub.d fa1,ft3,fa1	
	fmul.d fs6,fs6,fa1	
	.align 4	
JMP$02: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fa2,232(tp)	
	fcvt.d.s fa2,fa2
	fsub.d fa2,ft3,fa2	
	fmul.d fs6,fs6,fa2	
	.align 4	
JMP$03: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fa3,236(tp)	
	fcvt.d.s fa3,fa3
	fsub.d fa3,ft3,fa3	
	fmul.d fs6,fs6,fa3	
	.align 4	
JMP$04: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fa4,240(tp)	
	fcvt.d.s fa4,fa4
	fsub.d fa4,ft3,fa4	
	fmul.d fs6,fs6,fa4	
	.align 4	
JMP$05: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fa5,244(tp)	
	fcvt.d.s fa5,fa5 
 
 
	fsub.d fa5,ft3,fa5	
	fmul.d fs6,fs6,fa5	
	.align 4	
JMP$06: 	
	li a4,0x4000000000000000
	fmv.d.x ft8,a4
	fsub.d ft8,ft3,ft8	
	fmul.d fs6,fs6,ft8	
	.align 4	
JMP$07: 	
	fsub.d ft9,ft3,fs5	
	fmul.d fs6,fs6,ft9	
	.align 4	
JMP$08: 	
	fadd.d ft10,ft3,fs5	
	fmul.d ft10,ft3,ft10	
	fmul.d fs6,fs6,ft10	
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,ft3,ft5
	bnez a4,T$0
	li a4,0x0
	fmv.d.x fs11,a4
	flt.d a4,fs6,fs11
	beqz a4,TYPH_9
	li a4,0x4000000000000000
	fmv.d.x ft11,a4
	j TYPH_10
TYPH_9:	fmv.d.x ft11,a4
TYPH_10:
	fabs.d fa0,fs6	
	call ra,_rv_log	
	fneg.d fs6,fa7	
	j L$22	
	.align 4	
JMP$09: 	
	fmv.d fa0,ft1	
	call ra,_rv_log	
	fneg.d fs6,fa7	
	j L$22	
	.align 4	
JMP$10: 	
	li a4,0
	fmv.d.x fs6,a4
	j L$22	
	.align 4	
JMP$16: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw ft0,232(tp)	
	fcvt.d.s ft0,ft0
	fsub.d fs6,ft1,ft0	
	.align 4	
JMP$15: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fs1,236(tp)	
	fcvt.d.s fs1,fs1
	fsub.d fs1,ft1,fs1	
	fmul.d fs6,fs6,fs1	
	.align 4	
JMP$14: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fs2,240(tp)	
	fcvt.d.s fs2,fs2
	fsub.d fs2,ft1,fs2	
	fmul.d fs6,fs6,fs2	
	.align 4	
JMP$13: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw fs3,244(tp)	
	fcvt.d.s fs3,fs3
	fsub.d fs3,ft1,fs3	
	fmul.d fs6,fs6,fs3	
	.align 4	
JMP$12: 	
	li a4,0x4000000000000000
	fmv.d.x fs4,a4
	fsub.d fs4,ft1,fs4	
	fmul.d fs6,fs6,fs4	
	.align 4	
JMP$11: 	
	fsub.d ft1,ft1,fs5	
	fmul.d fa0,fs6,ft1	
	call ra,_rv_log	
	fmv.d fs6,fa7	
L$22: 	
	lui a0,%hi($databegin)	
	addi a0,a0,%lo($databegin)
	fmul.d ft9,ft3,ft2	
	vfmv.v.f v4,ft3	
	addi a4,a0,96
	vle64.v v11,(a4)
	addi a4,a0,112
	vle64.v v12,(a4)
	vfmul.vv v2,v11,v4	
	vfadd.vv v2,v2,v12
	addi a4,a0,128
	vle64.v v13,(a4)
	addi a4,a0,144
	vle64.v v14,(a4)
	vfmadd.vv v2,v4,v13	
	addi a4,a0,160
	vle64.v v18,(a4)
	addi a4,a0,176
	vle64.v v19,(a4)
	vfmadd.vv v2,v4,v14	
	addi a4,a0,192
	vle64.v v20,(a4)
	vfmadd.vv v2,v4,v18	
	vfmadd.vv v2,v4,v19	
	vfmadd.vv v2,v4,v20	
	vslidedown.vi v1,v2,1	
	vfmv.f.s ft0,v1
	vfmv.f.s ft1,v2
	fdiv.d ft0,ft1,ft0,rtz	
	fmadd.d ft0,ft3,ft0,ft9	
	fadd.d fa7,fs6,ft0	
	j L$6	
	.align 4	
L$21: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	fneg.d ft1,ft1	
	fld ft10,256(tp)	
	flt.d a4,ft1,ft10
	beqz a4,TYPH_13
	li a4,0x4000000000000000
	fmv.d.x ft11,a4
	j TYPH_14
TYPH_13:	fmv.d.x ft11,a4
TYPH_14:
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,ft11,ft5
	bnez a4,T$0
	fadd.d fa6,ft1,ft10	
	fsub.d ft10,fa6,ft10	
	fsub.d fs7,ft1,ft10	
	flt.d a4,fs7,ft5
	beqz a4,L$211
	fneg.d fs7,fs7	
	fsub.d ft10,ft10,fs5	
L$211: 	
	feq.d a4,ft1,ft10
	beqz a4,TYPH_15
	li a4,0x4000000000000000
	fmv.d.x ft10,a4
	j TYPH_16
TYPH_15:	fmv.d.x ft10,a4
TYPH_16:
	fld fs1,88(tp)	
	fld fs2,80(tp)	
	fld fs3,72(tp)	
	fld fs4,64(tp)	
	fld fa4,56(tp)	
	fld fa0,48(tp)	
	fld fa1,40(tp)	
	fld fa2,24(tp)	
	fld fa3,32(tp)	
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,ft10,ft5
	beqz a4,T$0
	fdiv.d fs5,fs5,ft1,rtz	
	fmul.d fs10,fs5,fs5	
	fmadd.d fs1,fs10,fs1,fs2	
	fmadd.d fs1,fs10,fs1,fs3	
	fmadd.d fs1,fs10,fs1,fs4	
	fmadd.d fs1,fs10,fs1,fa4	
	fmadd.d fs1,fs10,fs1,fa0	
	fmul.d fa0,fs7,fa3	
	fmadd.d fs1,fs10,fs1,fa1	
	fneg.d ft5,fs5	
	fmadd.d ft3,ft5,fs1,fa2
	call ra,_rv_sin	
	fmv.d fa0,fa7	
	call ra,_rv_log	
	fsub.d fa7,ft3,fa7	
	fadd.d ft3,ft1,ft2	
	fmv.d fa0,ft1	
	fadd.d ft2,ft1,fa7	
	call ra,_rv_log	
	fneg.d ft5,ft3	
	fmadd.d fa7,ft5,fa7,ft2
	j L$6	
	.align 4	
T$0: 	
	lui a0,%hi($databegin)	
	addi a0,a0,%lo($databegin)
	addi a1,sp,40	
	ld a0,264(a0)	
	sd a0,40(sp)	
	fld fa7,72(sp)	
	j L$6	
L$2: 	
	lui t0,%hi($databegin)	
	addi t0,t0,%lo($databegin)
	fld ft3,8(t0)	
	fld ft4,16(t0)	
	fld fs3,88(t0)	
	fld fs4,80(t0)	
	fld fa3,72(t0)	
	fld fs6,64(t0)	
	fld fa0,56(t0)	
	fld fa1,48(t0)	
	fle.d a4,ft1,ft3
	beqz a4,TYPH_17
	li a4,0x4000000000000000
	fmv.d.x ft3,a4
	j TYPH_18
TYPH_17:	fmv.d.x ft3,a4
TYPH_18:
	fld fa2,40(t0)	
	li a4,0x0
	fmv.d.x ft5,a4
	feq.d a4,ft3,ft5
	bnez a4,L$24
	fdiv.d fs5,fs5,ft1,rtz	
	fmul.d fs2,fs5,fs5	
	fmadd.d fs3,fs2,fs3,fs4	
	fmadd.d fs3,fs2,fs3,fa3	
	fmadd.d fs3,fs2,fs3,fs6	
	fmadd.d fs3,fs2,fs3,fa0	
	fmadd.d fs3,fs2,fs3,fa1	
	fmadd.d fs2,fs2,fs3,fa2	
	fmadd.d ft4,fs5,fs2,ft4	
	j L$4	
	.align 4	
L$24: 	
	fld fa3,0(t0)	
	fle.d a4,ft1,fa3
	beqz a4,TYPH_19
	li a4,0x4000000000000000
	fmv.d.x fa3,a4
	j TYPH_20
TYPH_19:	fmv.d.x fa3,a4
TYPH_20:
	li a4,0x0
	fmv.d.x ft5,s6
	feq.d a4,fa3,ft5
	bnez a4,T$1
L$4: 	
	fmv.d fa0,ft1	
	call ra,_rv_log	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	flw ft3,224(tp)	
	fcvt.d.s ft3,ft3
	fsub.d ft3,fa7,ft3	
	fmul.d fa7,fa7,ft2	
	fmsub.d fa7,ft1,ft3,fa7	
	fadd.d fa7,ft4,fa7	
	j L$6	
	.align 4	
T$1: 	
	lui a0,%hi($databegin)	
	addi a0,a0,%lo($databegin)
	addi a1,sp,40	
	ld a0,272(a0)	
	sd a0,40(sp)	
	fld fa7,72(sp)	
	j L$6	
L$1: 	
	fmv.x.d t1,ft1	
	and t4,t1,t0	
	srli t3,t1,0x3f	
	beqz t4,L$15	
	sltu t0,t4,t0	
	addi t5,t3,4	
	beqz t0,L$16	
	.align 4	
	j L$17	
	.align 4	
L$16: 	
	li t6,-1	
	addi t3,t3,2	
	srli t6,t6,0xc	
	and t1,t1,t6	
	srli a7,t1,0x33	
	beqz t1,TYPH_21	
	mv a7,a7
	j TYPH_22
TYPH_21:	mv a7,t3
TYPH_22:
	mv t5,a7	
	j L$17	
	.align 4	
L$15: 	
	li a1,-1	
	li a2,0x6	
	srli a1,a1,0xc	
	and t1,t1,a1	
	beqz t1,TYPH_23	
	mv a2,a2
	j TYPH_24
TYPH_23:	li a2,0x8
TYPH_24:
	add t5,t3,a2	
L$17: 	
	li a4,0x9
	bgtu t5,a4,TYPH_25
	li a3,0x1
	j TYPH_26
TYPH_25:	li a3,0x0
TYPH_26:
	beqz a3,JMPN$06	
	lui tp,%hi($jmpnpoint)	
	addi tp,tp,%lo($jmpnpoint)
	slli a4,t5,0x3	
	add tp,a4,tp
	ld tp,0(tp)	
	jalr tp	
	.align 4	
JMPN$02: 	
	lui a0,%hi($databegin)	
	addi a0,a0,%lo($databegin)
	addi a1,sp,40	
	ld a5,288(a0)	
	sd a5,40(sp)	
	fld fa7,72(sp)	
	j L$6	
	.align 4	
JMPN$03: 	
	lui t0,%hi($databegin)	
	addi t0,t0,%lo($databegin)
	addi a1,sp,40	
	ld t0,280(t0)	
	sd t0,40(sp)	
	fld fa7,72(sp)	
	j L$6	
	.align 4	
JMPN$00: 	
	fmv.d fa7,ft1	
	j L$6	
	.align 4	
JMPN$09: 	
	li t0,-1	
	sw t0,80(sp)	
	.align 4	
JMPN$08: 	
	lui t3,%hi($databegin)	
	addi t3,t3,%lo($databegin)
	addi a1,sp,40	
	ld t3,264(t3)	
	sd t3,40(sp)	
	fld fa7,72(sp)	
	j L$6	
	.align 4	
JMPN$06: 	
	beqz t3,L$51	
	fabs.d ft1,ft1	
	.align 4	
L$51: 	
	fmv.d fa0,ft1	
	call ra,_rv_log	
	fneg.d fa7,fa7	
L$6: 	
	ld ra,0(sp)	
	addi a4,sp,96
	vsetvli a5,a6,e64,m1
	vle64.v v2,(a4)
	ld s8,224(sp)
	addi a4,sp,128
	vle64.v v3,(a4)
	addi a4,sp,160
	vle64.v v4,(a4)
	addi a4,sp,192
	vle64.v v5,(a4)
	fmv.d fa0,fa7	
	addi sp,sp,352
	ret
	.align 4	
