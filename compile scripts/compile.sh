#!/bin/bash
str=$1
str=${str%.asm}
echo '[+] Assembling With Nasm'
nasm -f elf32 -o $str.o $str.asm

echo '[+] Linking'
ld -o $str $str.o

echo [+] Created 32 Bit Executable : ${str}
echo '[+] Done'
