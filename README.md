## Assembling

```shell
riscv64-linux-gnu-as -march rv32i program.asm -o program.rel.elf
```

## Linking

```shell
riscv64-linux-gnu-ld -m elf32lriscv -T linker.ld --no-dynamic-linker -static -nostdlib program.rel.elf -o program.elf
```

## Running the binary with qemu virtual machine

```shell
qemu-system-riscv32 -M virt -cpu rv32i -bios program.elf
```

## Inspecting elf files

```shell
riscv64-linux-gnu-readelf -a program.elf
```

```shell
riscv64-linux-gnu-objdump -d program.elf
```
