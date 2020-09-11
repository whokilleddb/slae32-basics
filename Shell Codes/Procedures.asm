global _start
section .text

HelloWorldProc:

	; Print Hello Worel
	mov eax, 0x4
        mov ebx, 0x1
        mov ecx, message
        mov edx, mlen
        int 0x80
	ret 

_start:
	mov ecx, 0x10

PrintHelloWorld:

	push ecx
	call HelloWorldProc
	pop ecx
	loop PrintHelloWorld

	; exit gracefully

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

section .data

	message :db "Hello World! "
	mlen equ $-message 
