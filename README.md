# bootloaders
Itty-bitty BIOS experiments (x86)

## Description

Some experiments I've done with regards to OS development.
Some of these .asm files compile to funtional, simple x86_64` BIOSes.
Some are broken.
go figure.

### Compilation Instructions
Using NASM 

`nasm boot_sec.asm  -f bin -o boot_sec.bin `

### Emulators
these programs were designed to work with Bochs or QEMU. I prefer QEMU.

`qemu-system-x86_64 <BIOS_NAME>.bin`




