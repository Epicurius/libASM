
; void	ft_bzero(void *s, size_t n)

section .text
	global _ft_bzero

_ft_bzero:
_loop:
	mov [rdi + rsi - 1], byte 0
	dec rsi
	cmp rsi, 0
	jnz _loop
	ret
