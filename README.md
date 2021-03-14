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

### Source(s):
heavily inspired by Nick Blundell's "Writing an Operating System from Scratch"
https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf


