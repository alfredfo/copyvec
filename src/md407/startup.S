	.globl _start
	.section .start_section, "ax", %progbits
_start:
	ldr r0,=stack_top
	b _start
