	.globl _start
_start:
	ldr r0,=stack_top
	bl main
	b _start
