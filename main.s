
%macro exit 0
    mov rax, 0x2000001
    mov rdi, 0
    syscall
%endmacro

STDOUT equ 1

section .data
    text1 db "Hello, World!",10,0
    text2 db "Test Number 2",10,0
 
section .text
    global _main
 
_main:
    mov rax, text1
	call _print

	mov rax, text2
	call _print
 
    exit

_print:
	push rax
	mov rbx, 0
	_printLoop:
		inc rax
		inc	rbx
		mov cl, [rax]
		cmp cl, 0
		jne	_printLoop

    mov rax, 0x2000004
    mov rdi, STDOUT
	pop rsi
    mov rdx, rbx
    syscall

	ret
