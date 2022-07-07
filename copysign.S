.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_copysign	
_rv_copysign: 	
	fsgnj.d fa0,fa0,fa1	
	ret
	.align 4	
