.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_fabs	
_rv_fabs: 	
	fabs.d fa0,fa0
	ret
	.align 4	
