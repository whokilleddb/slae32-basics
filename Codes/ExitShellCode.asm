; Exit Program To Get Shell Codes

global _start

section .text
_start:

	xor eax,eax
	mov al, 1
	xor ebx,ebx
	mov bl,10 ; can be ignored
	int 0x80

