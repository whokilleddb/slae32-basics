global _start:

section .text
_start:
	mov eax, 0x66778899
	mov ebx, 0x0
	mov ecx, 0x0

	; push and pop of r/m16 and r/m32
	; register push and pop

	push ax
	pop bx

	push eax
	pop ecx

	; memory push and pop

	push word [sample]
	pop ecx

	push dword [sample]
	pop edx

	; exit progra gracefully

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

section .data
	sample: dd 0xddccbbaa
