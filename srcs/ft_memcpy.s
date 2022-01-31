
; void	*ft_memcpy(void *dst, const void *src, size_t n)

section .text
	global _ft_memcpy

_ft_memcpy:

	dec rdx
	cmp rdx, 0
	jl _ret	

	mov r8b, byte [rsi + rdx]
	mov byte [rdi + rdx], r8b
	jmp _ft_memcpy

_ret:
	mov rax, rdi
	ret