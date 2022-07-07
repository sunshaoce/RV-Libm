.section .text, "ax", "progbits"	
	.align 4	
	.section .text	
	.align 4	
	.globl _rv_addtc	
_rv_addtc: 	
	fmv.x.d t4,fa0  
	fmv.d.x fa0,t4
