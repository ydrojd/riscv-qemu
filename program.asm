.equ serial_address, 0x10000000

.global _start

	.text
_start:
	li t0, serial_address
	addi t1, zero, 0x68
	sb t1, (t0)

loop:	j loop
