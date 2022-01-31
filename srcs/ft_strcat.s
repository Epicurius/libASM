
; char *ft_strcat(char *dst, const char *src)

section .text
	global _ft_strcat
	extern _ft_strlen

_ft_strcat:
	push rdi				; save dst
	call _ft_strlen
	mov	r8, rax				; save dst.len to r8
	pop rdi					; get dst back
	mov rax, rdi			; dst to rax
	add rdi, r8				; go to end on dst
	xor	rcx, rcx			; rcx = 0

_loop:
	mov r8, [rsi + rcx]		; save current char of src in r10
	mov [rdi + rcx], r8		; add it at current char after rdi
	inc rcx
	cmp [rsi + rcx], byte 0 
	jnz _loop
	ret	

