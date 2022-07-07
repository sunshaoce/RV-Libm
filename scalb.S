.section .rodata, "a", "progbits"	
	.align 4	
	.section .text, "ax", "progbits"	
	.align 4	
	.section .rodata	
	.align 4	
$jmppoint: 	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$01	
	.dword JMP$02	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$01	
	.dword JMP$02	
	.dword JMP$03	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$01	
	.dword JMP$02	
	.dword JMP$03	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$01	
	.dword JMP$04	
	.dword JMP$00	
	.dword JMP$00	
	.dword JMP$00	
$databegin: 	
	.dword 0x8000000000004502	
	.dword 0x8000000000039909	
	.dword 0x8000000000019902	
	.dword 0x8000000000009509	
	.dword 0x8000000000000511	
	.dword 0xbf800000	
	.section .text	
	.align 4	
	.globl _rv_scalb	
_rv_scalb: 	
	fmv.x.d a1,fa0	
	addi sp,sp,-256	
	li t0,2047	
	sd ra,0(sp)	
	sd s1,8(sp)	
	slli t0,t0,0x34	
	li t3,0x1	
	addi a7,sp,96
	vsetvli a5,a6,e64,m1
	vse64.v v2,(a7)
	fmv.x.d s1,fa1	
	slli t3,t3,0x34	
	li t4,511	
	fmv.d ft1,fa0	
	and t1,a1,t0	
	li t6,1023	
	slli t4,t4,0x35	
	li a2,0x3	
	add t3,t1,t3	
	slli t6,t6,0x35	
	slli a2,a2,0x36	
	fsd fa0,24(sp)	
	and t2,s1,t0	
	and t3,t3,t6	
	li a7,0x0	
	sub t5,t2,t4	
	seqz t3,t3
	bgtu t5,a2,TYPH_1	
	li t5,0x1
	j TYPH_2
TYPH_1:	li t5,0x0
TYPH_2:
	not t3,t3	
	and t3,t5,t3
	andi t3,t3,0x1	
	beqz t3,a_90
	fcvt.l.d a3,fa1,rtz
	fmv.d.x fa7,a3
	fmv.x.d a3,fa7	
	j a_310	
	.align 4	
a_90: 	
	fmv.x.d a4,fa1	
	and a6,a4,t0	
	srli a5,a4,0x3f	
	beqz a6,a_e0	
	sltu a6,a6,t0	
	addi s7,a5,4	
	beqz a6,a_c0	
	.align 4	
	j a_f8	
	.align 4	
a_c0: 	
	li s8,-1	
	addi a5,a5,2	
	srli s8,s8,0xc	
	and a4,a4,s8	
	srli s9,a4,0x33	
	beqz a4,TYPH_3	
	mv s9,s9
	j TYPH_4
TYPH_3:	mv s9,a5
TYPH_4:	nop
	mv s7,s9	
	j a_f8	
a_e0: 	
	li s10,-1	
	li ra,0x6	
	srli s10,s10,0xc	
	and a4,a4,s10	
	beqz a4,TYPH_5	
	mv ra,ra
	j TYPH_6
TYPH_5:	li ra,0x8
TYPH_6:
	add s7,a5,ra	
	.align 4	
a_f8: 	
	fmv.x.d s11,ft1	
	and a2,s11,t0	
	srli t6,s11,0x3f	
	beqz a2,a_150	
	sltu a2,a2,t0	
	addi t5,t6,4	
	beqz a2,a_130	
	.align 4	
	j a_168	
	.align 4	
a_130: 	
	li t3,-1	
	addi t6,t6,2	
	srli t3,t3,0xc	
	and s11,s11,t3	
	srli a3,s11,0x33	
	beqz s11,TYPH_7	
	mv a3,a3
	j TYPH_8
TYPH_7:	mv a3,t6
TYPH_8:	
	mv t5,a3	
	j a_168	
a_150: 	
	li a6,-1	
	li s8,0x6	
	srli a6,a6,0xc	
	and s11,s11,a6	
	beqz s11,TYPH_9	
	mv s8,s8
	j TYPH_10
TYPH_9:	li s8,0x8
TYPH_10:
	add t5,t6,s8	
	.align 4	
a_168: 	
	srai s9,s7,0x1	
	lui tp,%hi($jmppoint)	
	addi tp,tp,%lo($jmppoint)
	srai a0,t5,0x1	
	slli a0,a0,0x2	
	add s10,a0,a0
	add s9,s10,s9	
	li a2,0x18
	bgtu s9,a2,TYPH_11
	li a4,0x1
	j TYPH_12
TYPH_11:	li a4,0x0
TYPH_12:
	slli s9,s9,0x3	
	add tp,s9,tp
	beqz a4,JMP$00	
	ld tp,0(tp)	
	jalr tp	
	.align 4	
JMP$04: 	
	lui ra,%hi($databegin)	
	addi ra,ra,%lo($databegin)
	andi s7,s7,0x1	
	bnez s7,JMP$00
	addi a1,sp,32	
	sd ra,32(sp)	
a_1c0: 	
	fld ft1,64(sp)	
	.align 4	
JMP$00: 	
	ld ra,0(sp)	
	fmv.d fa0,ft1	
	ld s1,8(sp)	
	addi sp,sp,256
	ret
	.align 4	
JMP$01: 	
	fmv.d ft1,fa1	
	j JMP$00	
	.align 4	
JMP$02: 	
	li a2,0x1
	sub t2,a0,a2
	seqz t2,t2
	andi t0,t5,0x1	
	lui t3,%hi($databegin)	
	addi t3,t3,%lo($databegin)
	ld t1,8(t3)	
	ld a0,0(t3)	
	ld s8,24(t3)	
	beqz t0,TYPH_13	
	mv t1,t1
	j TYPH_14
TYPH_13:	mv t1,s8
TYPH_14:
	ld s8,32(t3)	
	beqz t2,TYPH_15	
	mv a0,a0
	j TYPH_16
TYPH_15:	mv a0,s8
TYPH_16:
	li a2,0x2
	sub s7,s7,a2
	seqz s7,s7
	beqz s7,TYPH_17	
	mv t1,t1
	j TYPH_18
TYPH_17:	mv t1,a0
TYPH_18:
	sd t0,80(sp)	
	addi a1,sp,32	
	sd t1,88(sp)	
	sd t1,32(sp)	
a_240: 	
	lui tp,%hi($databegin)	
	addi tp,tp,%lo($databegin)
	fld ft1,64(sp)	
	ld t3,32(tp)	
	ld t0,88(sp)	
	ld t1,80(sp)	
	flw ft0,40(tp)	
    
     
      
        fmv.x.d a4,ft0
        li a2,0x20000000
        and a2,a2,a4
        beqz a2,life_1
        li a2,0x30000000
        slli a2,a2,0x2
        and a3,a2,a4
        slli a3,a3,0x3
        li a2,0x1c0000000
        or a3,a2,a3
        li a2,0x3FFFFFFF
        and a4,a2,a4
        or a4,a3,a4
        slli a4,a4,0x1D
        fmv.d.x ft0,a4
        j life_2
life_1:
        li a2,0x30000000
        slli a2,a2,0x2
        and a3,a2,a4
        slli a3,a3,0x3
        li a2,0x3FFFFFFF
        and a4,a2,a4
        or a4,a3,a4
        slli a4,a4,0x1D
        fmv.d.x ft0,a4
   
life_2:
  
 
	sub t0,t0,t3	
	seqz t0,t0
	and t0,t1,t0	
	fmv.d.x fs2,t0	
	fsgnj.d fs1,ft1,ft0	
	fmv.x.d a2,fs2
	bnez a2,life_3
	fmv.d ft1,ft1
	j life_4
life_3:
	fmv.d ft1,fs1
life_4:
	j JMP$00	
	.align 4	
JMP$03: 	
	bgtu t2,t4,TYPH_19	
	li t4,0x1
	j TYPH_20
TYPH_19:	li t4,0x0
TYPH_20:
	bnez t4,JMP$00	
	li t3,517	
	slli t3,t3,0x35	
	bgtu t2,t3,TYPH_21	
	li t2,0x1
	j TYPH_22
TYPH_21:	li t2,0x0
TYPH_22:
	bnez t2,a_2c0	
	.align 4	
	blez s1,a_460	
	.align 4	
	j a_350	
	.align 4	
a_2c0: 	
	fcvt.l.d a2,fa1,rtz
	fmv.d.x fa1,a2
	ld t6,24(sp)	
	li t5,0x1b	
	li a2,4095	
	slli t5,t5,0x35	
	slli a2,a2,0x34	
	xor a0,a0,0x3	
	add t5,t6,t5	
	and s1,t5,a2	
	fmv.d.x fs4,t5	
	fmv.d.x fs3,s1	
	fmv.x.d a3,fa1	
	bnez a0,a_310	
	sd t5,24(sp)	
	li a7,0x1	
	fsub.d fs3,fs4,fs3	
	addi a3,a3,-53	
	fmv.x.d a1,fs3	
	fsd fs3,24(sp)	
	and t1,a1,t0	
a_310: 	
	li s8,2046	
	ld ra,0(sp)	
	ld s1,8(sp)	
	srai s7,t1,0x34	
	xor a1,a1,t1	
	add a3,s7,a3	
	blez a3,a_3a0	
	sub s8,a3,s8	
	sltz s8,s8
	slli s9,a3,0x34	
	addi a2,sp,96
	vsetvli a5,a6,e64,m1
	vle64.v v2,(a2)
	beqz s8,a_350	
	or a1,a1,s9	
	sd a1,24(sp)	
	fmv.d.x fa0,a1	
	addi sp,sp,256
	ret
a_350: 	
	srli a1,a1,0x3f	
	lui t0,%hi($databegin)	
	addi t0,t0,%lo($databegin)
	ld ra,8(t0)	
	ld t1,24(t0)	
	andi a1,a1,0x1	
	bnez a1,TYPH_23
	mv ra,ra
	j TYPH_24
TYPH_23:	mv ra,t1
TYPH_24:	nop
	li a2,134217728
	sext.w a1,a2
	or a1,ra,a1	
	sd a1,32(sp)	
	addi a1,sp,32	
a_380: 	
	ld ra,0(sp)	
	fld fa7,64(sp)	
	ld s1,8(sp)	
	fmv.d fa0,fa7	
	addi sp,sp,256
	ret
a_3a0: 	
	li s1,0x1	
	li t1,1023	
	addi a3,a3,52	
	blt a3,zero,a_460	
	slli s1,s1,0x3f	
	li t6,-1	
	addi a3,a3,970	
	slli a3,a3,0x34	
	and s1,a1,s1	
	slli t1,t1,0x34	
	add a3,a1,a3	
	add s1,s1,t1	
	addi a1,sp,32	
	fmv.d.x ft0,a3	
	fmv.d.x fs1,s1	
	sd s1,24(sp)	
	fadd.d ft0,fs1,ft0	
	feq.d a2,fs1,ft0
	beqz a2,TYPH_25
	li a2,0x4000000000000000
	fmv.d.x fs1,a2
	j TYPH_26
TYPH_25:	fmv.d.x fs1,a2
TYPH_26:
	fmv.x.d t4,ft0	
	fsd ft0,24(sp)	
	sub t1,t4,t1	
	sd t1,24(sp)	
	fmv.d.x ft1,t1	
	li a2,0x0
	fmv.d.x ft3,a2
	feq.d a2,fs1,ft3
	beqz a2,a_460
	bnez a7,a_440	
	sd t6,32(sp)	
	.align 4	
a_430: 	
	ld a0,64(sp)	
	andi a0,a0,0x40	
	bnez a0,a_460	
a_440: 	
	ld ra,0(sp)	
	ld s1,8(sp)	
	fld fa0,24(sp)	
	addi sp,sp,256
	ret
	.align 4	
a_460: 	
	lui t0,%hi($databegin)	
	addi t0,t0,%lo($databegin)
	ld t1,32(t0)	
	addi a1,sp,32	
	sd t1,32(sp)	
a_480: 	
	fld ft0,64(sp)	
	ld ra,0(sp)	
	ld s1,8(sp)	
	fsgnj.d fa0,ft0,ft1	
	addi sp,sp,256
	ret
