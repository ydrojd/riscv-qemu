.global _start
.equ serial_address, 0x10000000

	.data
hello_str:
	.string	"Hello world!"
	
	.text
_start:
	la a0, hello_str
	jal print

loop:	j loop

print:	
	li t0, serial_address
1:
	lw t1, (a0)
	sw t1, (t0)
	addi a0, a0, 1
	bne a0, zero, 1b
	ret
