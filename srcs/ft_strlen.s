; size_t	ft_strlen(const char *s)

section .text
	global _ft_strlen

_ft_strlen:
	push    rcx					; save rcx
	xor     rcx, rcx			; set rcx to 0

_loop:
	cmp     [rdi + rcx], byte 0 ; is null byte?
	jz      _end       			; yes, stop loop
	inc     rcx                 ; increase counter
	jmp     _loop     			; new cycle

_end:
	mov     rax, rcx            ; store len to return it in rax
	pop     rcx                 ; restore rcx
	ret                         ; return rax value