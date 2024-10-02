program.elf: program.rel.elf linker.ld
	riscv64-linux-gnu-ld -m elf32lriscv -T linker.ld --no-dynamic-linker -static -nostdlib program.rel.elf -o program.elf

program.rel.elf: program.asm
	riscv64-linux-gnu-as -march rv32i program.asm -o program.rel.elf
