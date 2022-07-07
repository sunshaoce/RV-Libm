        .section .text, "ax", "progbits"        
        .align 4        
        .section .text  
        .globl _rv_fmax 
_rv_fmax:       
	fmv.x.d a0,fa0
	fmv.x.d a1,fa1
	li t1,0x7ff0000000000000
	li t2,0x000fffffffffffff
	and a3,a0,t1
	beq a3,t1,exception_1
	j exception_2
exception_1:
	and a3,a0,t2
	beqz a3,exception_2
	and a4,a1,t1
	beq a4,t1,exception_4
exception_5:
	fmv.d.x fa0,a1
	ret
exception_4:
	and a4,a1,t2
	beqz a4,exception_5
	li a4,0x7ff0100000000000
	fmv.d.x fa0,a4
	ret
exception_2:
	and a4,a1,t1
	beq a4,t1,exception_3
	j LIFE
	ret
exception_3:
	and a4,a1,t2
	beqz a4,LIFE
	fmv.d.x fa0,a0
	ret
LIFE:
	fle.d a5,fa0,fa1
	bnez a5,LIFE1
	ret
LIFE1:
	fmv.d fa0,fa1	
	ret	
