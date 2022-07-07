.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _sw5mc_cvttqc	
_sw5mc_cvttqc: 	
	sd s8,0(sp)	
	csrrs s8,fcsr,x0
	fmv.d.x ft8,s8
	ld s8,0(sp)
	fmv.x.d t0,ft8	
	addi t1,zero,3	
	slli t1,t1,58	
	not t1,t1	
	and t0,t0,t1
	fmv.d.x ft9,t0	
	sd s8,0(sp)	
	fmv.x.d s8,ft9
	csrrw x0,fcsr,s8
	ld s8,0(sp)
	fcvt.l.d a1,fa0	
	fcvt.d.l fa1,a1
	sd s8,0(sp)	
	fmv.x.d s8,ft8
	csrrw x0,fcsr,s8
	ld s8,0(sp)
	ret
	.align 4	

