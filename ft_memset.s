
; void	*ft_memset(void *s, int c, size_t n)

section .text
	global _ft_memset

_ft_memset:
_loop:
	mov [rdi + rdx - 1], sil	; s[n - 1] = c 
	dec rdx						; n--
	cmp rdx, 0					; if (c == 0)
	jnz _loop					; 	loop
	mov rax, rdi
	ret