section .data
	digit db 0,10

section .text			;Comment
	global _main

_main:
	mov rax, 0x2000007
	call _printRAX

	mov rax, 0x2000001
    mov rdi, 0
    syscall

_printRAX:
	add rax, 48
	mov [rel digit], al
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, digit
	mov rdx, 2
	syscall
	ret



