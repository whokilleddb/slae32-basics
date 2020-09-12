global _start
section .text
_start :

	; register based addition
	
	mov eax, 0x0
	add al, 0x22
	add al, 0x11

	mov ax, 0x1122
	add ax, 0x3344

	mov eax, 0xffffffff
	add eax, 0x10

	; memory based addition

	mov eax, 0x0
	add byte [var1], 0x22
	add byte [var1], 0x11
	
	add word [var2], 0x1122
	add word [var2], 0x3344

	mov dword [var3],0xffffffff
	add dword[var3], 0x10

	; clear / set / compliment carry flag
	clc
	stc
	cmc

	; add with carry

	mov eax, 0x0
	stc
	adc al, 0x22
	stc
	adc al, 0x11

	mov ax, 1122
	stc
	adc eax, 0x10

	; subtract

	mov eax, 10
	mov eax, 5
	stc
	sbb eax, 4

	; increamental and decremental operations
	
	inc eax
	dec eax

	; exit

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80
 
section .data
	
	var1 db 0x00
	var2 dw 0x0000
	var3 dd 0x00000000
