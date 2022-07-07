        .section .text, "ax", "progbits"        
        .align 4        
        .section .text  
        .globl _rv_fdim 
_rv_fdim:       
	fmv.x.d a0,fa0
	fmv.x.d a1,fa1
	li t1,0x7ff0000000000000
	li t2,0x000fffffffffffff
	and a3,a0,t1
	beq a3,t1,exception_1
	and a3,a1,t1
	beq a3,t1,exception_2
LIFE1:
	fle.d a5,fa0,fa1
	bnez a5,END
	fsub.d fa0,fa0,fa1
	ret
exception_1:
	and a3,a0,t2
	beqz a3,LIFE1
	fmv.d.x fa0,a0
	ret
exception_2:
	and a3,a1,t2
	beqz a3,LIFE1
	fmv.d.x fa0,a1
	ret	
END:	li a4,0
	fmv.d.x fa0,a4
	ret
