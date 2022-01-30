
default rel

section .bss
	digitSpace resb 100
	digitSpacePos resb 8

section .text
	global _start 

_start:
	mov rax, 123
	call _printRAX

    mov rax, 0x2000001
    mov rdi, 0
    syscall

_printRAX:
	mov rcx, digitSpace
	mov	rbx, 10					; New line at beginning
	mov [rcx], rbx
	inc rcx						; rcx++
	mov [digitSpacePos], rcx	; set ptr

_printRAXLoop:
	mov rdx, 0
	mov rbx, 10
	div rbx
	push rax
	add rbx, 48

	mov rcx, [digitSpacePos]
	mov [rcx], dl
	inc rcx
	mov [digitSpacePos], rcx

	pop rax
	cmp rax, 0
	jne _printRAXLoop

_printRAXLoop2:
	mov rcx, [digitSpacePos]
	
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rcx
	mov rdx, 1
	syscall

	mov rcx, [digitSpacePos]
	dec rcx
	mov [digitSpacePos], rcx

	cmp rcx, digitSpace 		; =does not work cant figure out why
	jge _printRAXLoop2

	ret
